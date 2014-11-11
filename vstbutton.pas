unit vstbutton;


interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, VirtualTrees,
  messages, windows, StdCtrls, ShlObj;

type
  TStringEditLink = class(TInterfacedObject, IVTEditLink)
  private
    FEdit: TWinControl;
    FTree: TVirtualStringTree;
    FNode: PVirtualNode;
    FColumn: Integer;
    FSelectedFolder: string;
  protected
    procedure ButtonClick(Sender: TObject);
  public
    destructor Destroy; override;
    function BeginEdit: Boolean; stdcall;
    function CancelEdit: Boolean; stdcall;
    function EndEdit: Boolean; stdcall;
    function GetBounds: TRect; stdcall;
    function PrepareEdit(Tree: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex): Boolean; stdcall;
    procedure ProcessMessage(var Message: TMessage); stdcall;
    procedure SetBounds(R: TRect); stdcall;
  end;

  function GetFolderDialog(Handle: Integer; Caption: string; var strFolder: string): Boolean;

implementation

destructor TStringEditLink.Destroy;
begin
  FEdit.Free;
  inherited;
end;

procedure TStringEditLink.ButtonClick(Sender: TObject);
var
  s: string;
begin
  s := 'c:\';
  if GetFolderDialog(Application.Handle, 'Select a folder', s) then
    FSelectedFolder := s;

  FTree.EndEditNode;
  FTree.setfocus;
end;

function TStringEditLink.BeginEdit: Boolean;
begin
  Result := True;
  FSelectedFolder := FTree.Text[FNode, FColumn];
  TButton(FEdit).CAption := FTree.Text[FNode, FColumn];
  FEdit.Show;
  FEdit.SetFocus;
end;

function TStringEditLink.CancelEdit: Boolean;
begin
  Result := True;
  FEdit.Hide;
  FTree.EndEditNode;
  FTree.setfocus;
end;

function TStringEditLink.EndEdit: Boolean;
var
  S: WideString;
begin
  Result := True;
  FTree.Text[FNode, FColumn] := FSelectedFolder;

  FTree.InvalidateNode(FNode);
  FEdit.Hide;
  FTree.SetFocus;
end;

function TStringEditLink.GetBounds: TRect;
begin
  Result := FEdit.BoundsRect;
end;

function TStringEditLink.PrepareEdit(Tree: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex): Boolean;
begin
  Result := True;
  FTree := Tree as TVirtualStringTree;
  FNode := Node;
  FColumn := Column;

  FEdit.Free;
  FEdit := nil;

  FEdit := TButton.Create(nil);
   with FEdit as TButton do
     begin
          Visible := False;
          Parent := Tree;
          Font.Color := FTree.Colors.HeaderHotColor;
          OnClick := ButtonClick;
      end;
end;

procedure TStringEditLink.ProcessMessage(var Message: TMessage);
begin
  FEdit.WindowProc(Message);
end;

procedure TStringEditLink.SetBounds(R: TRect);
var
  Dummy: Integer;
begin
  FTree.Header.Columns.GetColumnBounds(FColumn, Dummy, R.Right);
  FEdit.BoundsRect := R;
end;

//------------------------------------------------------------------------------\\

function BrowseCallbackProc(hwnd: HWND; uMsg: UINT; lParam: LPARAM; lpData: LPARAM): Integer; stdcall;
begin
  if (uMsg = BFFM_INITIALIZED) then
    SendMessage(hwnd, BFFM_SETSELECTION, 1, lpData);
  BrowseCallbackProc := 0;
end;

function GetFolderDialog(Handle: Integer; Caption: string; var strFolder: string): Boolean;
const
  BIF_STATUSTEXT           = $0004;
  BIF_NEWDIALOGSTYLE       = $0040;
  BIF_RETURNONLYFSDIRS     = $0080;
  BIF_SHAREABLE            = $0100;
  BIF_USENEWUI             = BIF_EDITBOX or BIF_NEWDIALOGSTYLE;

var
  BrowseInfo: TBrowseInfo;
  ItemIDList: PItemIDList;
  JtemIDList: PItemIDList;
  Path: PChar;
begin
  Result := False;
  Path := StrAlloc(MAX_PATH);
  SHGetSpecialFolderLocation(Handle, CSIDL_DRIVES, JtemIDList);
  with BrowseInfo do
  begin
    hwndOwner := GetActiveWindow;
    pidlRoot := JtemIDList;
    SHGetSpecialFolderLocation(hwndOwner, CSIDL_DRIVES, JtemIDList);

    { return display name of item selected }
    pszDisplayName := StrAlloc(MAX_PATH);

    { set the title of dialog }
    lpszTitle := PChar(Caption);//'Select the folder';
    { flags that control the return stuff }
    lpfn := @BrowseCallbackProc;
    { extra info that's passed back in callbacks }
    lParam := LongInt(PChar(strFolder));
  end;

  ItemIDList := SHBrowseForFolder(BrowseInfo);

  if (ItemIDList <> nil) then
    if SHGetPathFromIDList(ItemIDList, Path) then
    begin
      strFolder := Path;
      Result := True
    end;
end;

End.
