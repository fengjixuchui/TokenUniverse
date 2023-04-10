unit TU.Tokens.Open;

interface

uses
  Ntapi.WinNt, Ntapi.ntdef, Ntapi.ntseapi, Ntapi.NtSecApi, Ntapi.WinBase,
  NtUtils, NtUtils.Tokens.Logon, TU.Tokens, TU.Tokens.Old.Types,
  DelphiApi.Reflection;

type
  TLogonCredentials = NtUtils.Tokens.Logon.TLogonCredentials;

// Create an anonymous token
function MakeAnonymousToken(
  out Token: IToken;
  DesiredAccess: TTokenAccessMask = MAXIMUM_ALLOWED
): TNtxStatus;

// Duplicate a handle to a token
function MakeDuplicateHandle(
  out Token: IToken;
  const Source: IToken;
  DesiredAccess: TAccessMask;
  SameAccess: Boolean = False
): TNtxStatus;

// Duplicate a token
function MakeDuplicateToken(
  out Token: IToken;
  const Source: IToken;
  TokenTypeEx: TTokenTypeEx;
  DesiredAccess: TAccessMask = TOKEN_ALL_ACCESS;
  EffectiveOnly: Boolean = False
): TNtxStatus;

// Restrict a token
function MakeFilteredToken(
  out Token: IToken;
  const Source: IToken;
  Flags: TTokenFilterFlags;
  [opt] const SidsToDisable: TArray<ISid> = nil;
  [opt] const PrivilegesToDelete: TArray<TPrivilegeId> = nil;
  [opt] const SidsToRestrict: TArray<ISid> = nil
): TNtxStatus;

// Open a session token
function MakeSessionToken(
  out Token: IToken;
  SessionID: TSessionId
): TNtxStatus;

// Open a token of a process
function MakeOpenProcessToken(
  out Token: IToken;
  [opt, Access(PROCESS_QUERY_LIMITED_INFORMATION)] hxProcess: IHandle;
  [opt] PID: TProcessId;
  DesiredAccess: TTokenAccessMask = MAXIMUM_ALLOWED
): TNtxStatus;

// Open a token of a thread
function MakeOpenThreadToken(
  out Token: IToken;
  [opt, Access(THREAD_QUERY_LIMITED_INFORMATION)] hxThread: IHandle;
  [opt] TID: TThreadId;
  DesiredAccess: TTokenAccessMask = MAXIMUM_ALLOWED
): TNtxStatus;

// Open a token of a thread or a process, whichever is available
function MakeOpenEffectiveToken(
  out Token: IToken;
  CID: TClientId;
  DesiredAccess: TTokenAccessMask = MAXIMUM_ALLOWED
): TNtxStatus;

// Copy an effective token using direct impersonation
function MakeCopyViaDirectImpersonation(
  out Token: IToken;
  [opt, Access(THREAD_DIRECT_IMPERSONATION)] hxThread: IHandle;
  [opt] TID: TThreadId;
  ImpersonationLevel: TSecurityImpersonationLevel = SecurityImpersonation;
  DesiredAccess: TTokenAccessMask = MAXIMUM_ALLOWED;
  EffectiveOnly: Boolean = False
): TNtxStatus;

// Logon a user using credentials
function MakeLogonToken(
  out Token: IToken;
  MessageType: TLogonSubmitType;
  LogonType: TSecurityLogonType;
  const Credentials: TLogonCredentials;
  const Source: TTokenSource;
  [opt] const AdditionalGroups: TArray<TGroup> = nil;
  const Package: AnsiString = NEGOSSP_NAME_A
): TNtxStatus;

// Create a new token from scratch
function MakeNewToken(
  out Token: IToken;
  TokenTypeEx: TTokenTypeEx;
  const User: ISid;
  DisableUser: Boolean;
  const Groups: TArray<TGroup>;
  const Privileges: TArray<TPrivilege>;
  LogonID: TLuid;
  const PrimaryGroup: ISid;
  const Source: TTokenSource;
  [opt] const Owner: ISid = nil;
  [opt] const DefaultDacl: IAcl = nil;
  Expires: TLargeInteger = INFINITE_FUTURE
): TNtxStatus;

implementation

uses
  Ntapi.ntpsapi, Ntapi.ntstatus, NtUtils.Tokens.Impersonate, NtUtils.Tokens,
  NtUtils.WinStation, NtUtils.Processes, NtUtils.Processes.Info,
  NtUtils.Threads, NtUtils.Objects, NtUtils.Lsa.Sid, DelphiUiLib.Reflection,
  System.SysUtils;

function MakeAnonymousToken;
var
  hxToken: IHandle;
begin
  Result := NtxOpenAnonymousToken(hxToken, DesiredAccess);

  if Result.IsSuccess then
    Token := CaptureTokenHandle(hxToken, 'Anonymous token');
end;

function MakeDuplicateHandle;
var
  hxToken: IHandle;
begin
  Result := NtxDuplicateHandleLocal(Source.Handle.Handle, hxToken,
    DesiredAccess);

  if Result.IsSuccess then
    Token := CaptureTokenHandle(hxToken, Source.Caption + ' (ref)',
      Source.CachedKernelAddress);
end;

function MakeDuplicateToken;
var
  hxToken: IHandle;
  TokenType: TTokenType;
  ImpersonationLevel: TSecurityImpersonationLevel;
begin
  if TokenTypeEx = ttPrimary then
  begin
    TokenType := TokenPrimary;
    ImpersonationLevel := SecurityImpersonation;
  end
  else
  begin
    TokenType := TokenImpersonation;
    ImpersonationLevel := TSecurityImpersonationLevel(TokenTypeEx);
  end;

  Result := NtxDuplicateToken(hxToken, Source.Handle, TokenType,
    ImpersonationLevel, AttributeBuilder.UseEffectiveOnly(EffectiveOnly).
    UseDesiredAccess(DesiredAccess));

  if not Result.IsSuccess then
    Exit;

  if EffectiveOnly then
    Token := CaptureTokenHandle(hxToken, Source.Caption +  ' (eff. copy)')
  else
    Token := CaptureTokenHandle(hxToken, Source.Caption +  ' (copy)');
end;

function MakeFilteredToken;
var
  hxToken: IHandle;
begin
  Result := NtxFilterToken(hxToken, Source.Handle, Flags,
    SidsToDisable, PrivilegesToDelete, SidsToRestrict);

  if Result.IsSuccess then
    Token := CaptureTokenHandle(hxToken, 'Restricted ' + Source.Caption);
end;

function MakeSessionToken;
var
  hxToken: IHandle;
begin
  Result := WsxQueryToken(hxToken, SessionID);

  if Result.IsSuccess then
    Token := CaptureTokenHandle(hxToken, Format('Session %d token', [SessionID]));
end;

function MakeOpenProcessToken;
var
  hxToken: IHandle;
  Caption: String;
  Info: TProcessBasicInformation;
begin
  // Open the process
  if not Assigned(hxProcess) then
  begin
    Result := NtxOpenProcess(hxProcess, PID, PROCESS_QUERY_LIMITED_INFORMATION);

    if not Result.IsSuccess then
      Exit;
  end;

  // Open the token
  Result := NtxOpenProcessToken(hxToken, hxProcess.Handle, DesiredAccess);

  if not Result.IsSuccess then
    Exit;

  if PID = 0 then
  begin
    // Determine PID to lookup image name
    if hxProcess.Handle = NtCurrentProcess then
      PID := NtCurrentProcessId
    else if NtxProcess.Query(hxProcess.Handle, ProcessBasicInformation,
      Info).IsSuccess then
      PID := Info.UniqueProcessID;
  end;

  if PID = 0 then
    Caption := 'Unknown Process'
  else if PID = NtCurrentProcessId then
    Caption := Format('Current Process [%d]', [PID])
  else
    Caption := TType.Represent(PID).Text;

  Token := CaptureTokenHandle(hxToken, Caption);
end;

function MakeOpenThreadToken;
var
  hxToken: IHandle;
  Info: TThreadBasicInformation;
  Caption: String;
begin
  // Open the process
  if not Assigned(hxThread) then
  begin
    Result := NtxOpenThread(hxThread, TID, THREAD_QUERY_LIMITED_INFORMATION);

    if not Result.IsSuccess then
      Exit;
  end;

  // Open the token
  Result := NtxOpenThreadToken(hxToken, hxThread.Handle, DesiredAccess);

  if not Result.IsSuccess then
    Exit;

  if TID = 0 then
  begin
    // Determine TID to lookup thread and process name
    if hxThread.Handle = NtCurrentThread then
      TID := NtCurrentThreadId
    else if NtxThread.Query(hxThread.Handle, ThreadBasicInformation,
      Info).IsSuccess then
      TID := Info.ClientId.UniqueThread;
  end;

  if TID = 0 then
    Caption := 'Unknown Thread'
  else if TID = NtCurrentThreadId then
    Caption := Format('Current Thread [%d]', [TID])
  else
    Caption := TType.Represent(TID).Text;

  Token := CaptureTokenHandle(hxToken, Caption);
end;

function MakeOpenEffectiveToken;
begin
  Result := MakeOpenThreadToken(Token, nil, CID.UniqueThread, DesiredAccess);

  if Result.Status = STATUS_NO_TOKEN then
    Result := MakeOpenProcessToken(Token, nil, CID.UniqueProcess, DesiredAccess)
end;

function MakeCopyViaDirectImpersonation;
var
  hxToken: IHandle;
  Info: TThreadBasicInformation;
  Caption: String;
begin
  // Open the process
  if not Assigned(hxThread) then
  begin
    Result := NtxOpenThread(hxThread, TID, THREAD_DIRECT_IMPERSONATION);

    if not Result.IsSuccess then
      Exit;
  end;

  // Copy the token
  Result := NtxCopyEffectiveToken(hxToken, hxThread.Handle, ImpersonationLevel,
    DesiredAccess, 0, EffectiveOnly);

  if not Result.IsSuccess then
    Exit;

  if TID = 0 then
  begin
    // Determine TID to lookup thread and process name
    if hxThread.Handle = NtCurrentThread then
      TID := NtCurrentThreadId
    else if NtxOpenThread(hxThread, TID, THREAD_QUERY_LIMITED_INFORMATION)
      .IsSuccess and NtxThread.Query(hxThread.Handle, ThreadBasicInformation,
      Info).IsSuccess then
      TID := Info.ClientId.UniqueThread;
  end;

  if TID = 0 then
    Caption := 'Unknown Thread'
  else
    Caption := TType.Represent(TID).Text;

  if EffectiveOnly then
    Caption := Caption + ' (eff.)';

  Token := CaptureTokenHandle(hxToken, 'Impersonated ' + Caption);
end;

function MakeLogonToken;
var
  Info: TLogonInfo;
begin
  Result := LsaxLogonUser(Info, MessageType, LogonType, Credentials, Source,
    AdditionalGroups, Package);

  if Result.IsSuccess then
    Token := CaptureTokenHandle(Info.hxToken, 'Logon of ' +
      Credentials.Username);
end;

function MakeNewToken;
var
  hxToken: IHandle;
  TokenType: TTokenType;
  ImpersonationLevel: TSecurityImpersonationLevel;
  UserGroup: TGroup;
begin
  if TokenTypeEx = ttPrimary then
  begin
    TokenType := TokenPrimary;
    ImpersonationLevel := SecurityImpersonation;
  end
  else
  begin
    TokenType := TokenImpersonation;
    ImpersonationLevel := TSecurityImpersonationLevel(TokenTypeEx);
  end;

  UserGroup.Sid := User;

  if DisableUser then
    UserGroup.Attributes := SE_GROUP_USE_FOR_DENY_ONLY
  else
    UserGroup.Attributes := 0;

  Result := NtxCreateToken(hxToken, TokenType, ImpersonationLevel, Source,
    LogonID, UserGroup, PrimaryGroup, Groups, Privileges, Owner, DefaultDacl,
    Expires);

  if Result.IsSuccess then
    Token := CaptureTokenHandle(hxToken, 'New ' + LsaxSidToString(User));
end;

end.
