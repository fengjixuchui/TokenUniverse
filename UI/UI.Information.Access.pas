unit UI.Information.Access;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.ComCtrls,
  Vcl.StdCtrls, UI.Prototypes.Forms, Ntapi.WinNt, UI.Prototypes.AccessMask;

type
  TDialogGrantedAccess = class(TChildForm)
    AccessMaskFrame: TAccessMaskFrame;
    procedure ButtonCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  public
    class procedure Execute(AOwner: TComponent; Access: TAccessMask);
  end;

implementation

uses
  Ntapi.ntseapi, TU.Tokens.Old.Types;

{$R *.dfm}

{ TDialogGrantedAccess }

procedure TDialogGrantedAccess.ButtonCloseClick;
begin
  Close;
end;

class procedure TDialogGrantedAccess.Execute;
begin
  with TDialogGrantedAccess.CreateChild(AOwner, cfmApplication) do
  begin
    with AccessMaskFrame do
    begin
      LoadType(TypeInfo(TTokenAccessMask), TokenGenericMapping, True);
      AccessMask := Access;
      IsReadOnly := True;
    end;

    ShowModal;
  end;
end;

procedure TDialogGrantedAccess.FormKeyPress;
begin
  if Key = #27 then
    Close;
end;

end.
