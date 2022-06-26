unit UI.New.TokenFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VirtualTrees,
  VirtualTreesEx, DevirtualizedTree, DevirtualizedTree.Provider,
  NtUtils, TU.Tokens, TU.Tokens3;

type
  ITokenNode = interface (INodeProvider)
    ['{756BC6F1-77F9-4BDA-BEB8-0789E418278D}']
    function GetToken: IToken;
    procedure UpdateColumnVisibiliy(Column: TTokenStringClass; Visible: Boolean);
    property Token: IToken read GetToken;
  end;

  TTokenNode = class (TCustomNodeProvider, ITokenNode)
    FToken: IToken;
    FSubscriptions: array [TTokenStringClass] of IAutoReleasable;
    procedure UpdateColumnVisibiliy(Column: TTokenStringClass; Visible: Boolean);
    procedure ColumnUpdated(const Column: TTokenStringClass; const NewValue: String);
    function GetToken: IToken;
    function GetColumn(Index: Integer): String; override;
    constructor Create(const Source: IToken; Columns: TVirtualTreeColumns);
  end;

  TFrameTokens = class(TFrame)
    VST: TDevirtualizedTree;
    procedure VSTNewText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; NewText: string);
    procedure VSTEditing(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; var Allowed: Boolean);
    procedure VSTColumnVisibilityChanged(const Sender: TBaseVirtualTree;
      const Column: TColumnIndex; Visible: Boolean);
  private
    function GetSelectedToken: IToken;
    function GetAllTokens: TArray<IToken>;
    function GetHasSelectedToken: Boolean;
    { Private declarations }
  public
    function AddRoot(Root: PVirtualNode; const Name: String): PVirtualNode;
    procedure AddMany(const Tokens: TArray<IToken>; Root: PVirtualNode = nil);
    procedure Add(const Token: IToken; Root: PVirtualNode = nil);
    procedure DeleteSelected;

    property HasSelectedToken: Boolean read GetHasSelectedToken;
    property Selected: IToken read GetSelectedToken;
    property Tokens: TArray<IToken> read GetAllTokens;

    constructor Create(Owner: TComponent); override;
  end;

implementation

uses
  UI.Helper, UI.Settings, VirtualTrees.Header,
  DelphiUtils.Arrays, NtUtils.Errors;

{$R *.dfm}

{ TTokenNode }

procedure TTokenNode.ColumnUpdated;
begin
  // The text changed; ask the tree to redraw the item when visible
  if Assigned(Tree) and Assigned(Node) then
    Tree.InvalidateNode(Node);
end;

constructor TTokenNode.Create;
var
  ColumnId: TColumnIndex;
begin
  inherited Create(0);
  FToken := Source;

  // Subscribe to changes for all currently visible columns
  ColumnId := Columns.GetFirstVisibleColumn;

  while ColumnId <> InvalidColumn do
  begin
    UpdateColumnVisibiliy(TTokenStringClass(ColumnId), True);
    ColumnId := Columns.GetNextVisibleColumn(ColumnId);
  end;
end;

function TTokenNode.GetColumn;
var
  InfoClass: TTokenStringClass absolute Index;
begin
  if (InfoClass < Low(TTokenStringClass)) or
    (InfoClass > High(TTokenStringClass)) then
    raise EArgumentException.Create('Invalid index in TTokenNode.GetColumn');

  Result := (FToken as IToken3).QueryString(InfoClass);
end;

function TTokenNode.GetToken;
begin
  Result := FToken;
end;

procedure TTokenNode.UpdateColumnVisibiliy;
begin
  if (Column < Low(TTokenStringClass)) or
    (Column > High(TTokenStringClass)) then
    raise EArgumentException.Create('Invalid index in TTokenNode.UpdateColumnVisibiliy');

  // Either subscribe for updates or clear the existing subscription
  if Visible then
    FSubscriptions[Column] := (FToken as IToken3).ObserveString(Column,
      ColumnUpdated)
  else
    FSubscriptions[Column] := nil;
end;

{ TFrameTokens }

procedure TFrameTokens.Add;
begin
  AddMany([Token], Root);
end;

procedure TFrameTokens.AddMany;
var
  i: Integer;
begin
  if not Assigned(Root) then
    Root := VST.RootNode;

  VST.BeginUpdateAuto;

  for i := 0 to High(Tokens) do
    VST.AddChild(Root).Provider := TTokenNode.Create(Tokens[i],
      VST.Header.Columns);
end;

function TFrameTokens.AddRoot;
var
  Provider: INodeProvider;
begin
  Provider := TCustomNodeProvider.Create;
  Provider.Column[0] := Caption;
  Result := VST.AddChild(Root, Provider);
end;

constructor TFrameTokens.Create(Owner: TComponent);
const
  DEFAULT_COLUMN_OPTIONS = [
    TVTColumnOption.coAllowClick,
    TVTColumnOption.coDraggable,
    TVTColumnOption.coEnabled,
    TVTColumnOption.coParentBidiMode,
    TVTColumnOption.coParentColor,
    TVTColumnOption.coResizable,
    TVTColumnOption.coAutoSpring,
    TVTColumnOption.coSmartResize,
    TVTColumnOption.coAllowFocus,
    TVTColumnOption.coDisableAnimatedResize,
    TVTColumnOption.coEditable,
    TVTColumnOption.coStyleColor
  ];
var
  InfoClass: TTokenStringClass;
begin
  inherited;

  VST.Header.Columns.BeginUpdateAuto;

  // Populate columns based on string info classes
  for InfoClass := Low(TTokenStringClass) to High(TTokenStringClass) do
    with VST.Header.Columns.Add do
    begin
      Text := ColumsInfo[InfoClass].Caption;
      Width := ColumsInfo[InfoClass].Width;
      Alignment := ColumsInfo[InfoClass].Alignment;
      Options := DEFAULT_COLUMN_OPTIONS;

      // Only show selected columns by default
      if InfoClass in TSettings.SelectedColumns then
        Options := Options + [TVTColumnOption.coVisible];
    end;
end;

procedure TFrameTokens.DeleteSelected;
var
  Node: PVirtualNode;
begin
  VST.BeginUpdateAuto;

  for Node in VST.SelectedNodes.ToArray do
    VST.DeleteNode(Node);
end;

function TFrameTokens.GetAllTokens;
begin
  Result := TArray.Convert<PVirtualNode, IToken>(VST.Nodes.ToArray,
    function (const Node: PVirtualNode; out Token: IToken): Boolean
    var
      TokenNode: ITokenNode;
    begin
      Result := Node.TryGetProvider(ITokenNode, TokenNode);

      if Result then
        Token := TokenNode.Token;
    end
  );
end;

function TFrameTokens.GetHasSelectedToken;
begin
  Result := (VST.SelectedCount > 0) and
    VST.FocusedNode.HasProvider(ITokenNode);
end;

function TFrameTokens.GetSelectedToken;
var
  TokenNode: ITokenNode;
begin
  if (VST.SelectedCount > 0) and VST.FocusedNode.TryGetProvider(ITokenNode,
    TokenNode) then
    Result := TokenNode.Token
  else
    Abort;
end;

procedure TFrameTokens.VSTColumnVisibilityChanged;
var
  Node: PVirtualNode;
  TokenNode: ITokenNode;
begin
  // Notify each node that it needs to [un]subscribe an info class
  for Node in VST.Nodes do
    if Node.TryGetProvider(ITokenNode, TokenNode) then
      TokenNode.UpdateColumnVisibiliy(TTokenStringClass(Column), Visible);
end;

procedure TFrameTokens.VSTEditing;
begin
  Allowed := (Column = Integer(tsCaption));
end;

procedure TFrameTokens.VSTNewText;
var
  TokenNode: ITokenNode;
begin
  if (Column = Integer(tsCaption)) and
    VST.FocusedNode.TryGetProvider(ITokenNode, TokenNode) then
    TokenNode.Token.Caption := NewText;
end;

end.
