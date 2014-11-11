unit umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, uutils, umysqlcontroller, udbconnector,
  Vcl.Imaging.pngimage, uconstants, System.Generics.collections, Data.DB,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, NxCollection,
  NxSheet, NxToolBox, NxDBColumns, NxColumns, uftpconnector, Vcl.Samples.Gauges,
  shellapi, NxPageControl, uframeauftragsverwaltung, worker, ueinstellungen,
  uliegenschaftsdaten, fComboBox, fEdit, Vcl.Grids, Vcl.DBGrids, Vcl.ImgList,
  uframewizard, OverbyteIcsSslThrdLock, Vcl.ComCtrls, VirtualTrees, utreedata,
  vstbutton, strutils, uformwiedervor, uauftragsinfo, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, updfmain, OverbyteIcsWndControl,
  OverbyteIcsFtpCli, NPipe_Client, fNPipeClient, NxEdit;

type
  Tformmain = class(TForm)
    Gauge1: TGauge;
    ieinstellungen: TImage;
    ImageList1: TImageList;
    iueber: TImage;
    lkundennummer: TLabel;
    lsachbearbeiter: TLabel;
    pleft: TPanel;
    pvorschau: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    peinzelauftr: TPanel;
    pauftraggenerieren: TPanel;
    pneuerauftrag: TPanel;
    pua: TPanel;
    poA: TPanel;
    panforderungen: TPanel;
    pmiddle: TPanel;
    pager: TNxPageControl;
    sheetanforderungen: TNxTabSheet;
    Panel6: TPanel;
    vstanf: TVirtualStringTree;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    NxButton17: TNxButton;
    NxButton18: TNxButton;
    Panel17: TPanel;
    NxButton19: TNxButton;
    NxButton20: TNxButton;
    Panel18: TPanel;
    NxButton21: TNxButton;
    NxButton22: TNxButton;
    Panel19: TPanel;
    NxButton23: TNxButton;
    NxButton24: TNxButton;
    sheetoffene: TNxTabSheet;
    Panel7: TPanel;
    Panel8: TPanel;
    NxButton9: TNxButton;
    NxButton10: TNxButton;
    Panel9: TPanel;
    NxButton11: TNxButton;
    NxButton12: TNxButton;
    Panel10: TPanel;
    NxButton13: TNxButton;
    NxButton14: TNxButton;
    Panel11: TPanel;
    NxButton15: TNxButton;
    NxButton16: TNxButton;
    Panel12: TPanel;
    vstsearch: TVirtualStringTree;
    Panel13: TPanel;
    sheetunbearbeitet: TNxTabSheet;
    pbuttons: TPanel;
    panz: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    pauftrerst: TPanel;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    psearchoff: TPanel;
    NxButton5: TNxButton;
    NxButton6: TNxButton;
    Panel5: TPanel;
    NxButton7: TNxButton;
    NxButton8: TNxButton;
    pauftr: TPanel;
    vst: TVirtualStringTree;
    pmessage: TPanel;
    tabneuerauftrag: TNxTabSheet;
    twizardsheet: TNxTabSheet;
    wizard: TFrame1;
    sheetsammel: TNxTabSheet;
    Tframeliegenschaftsdaten1: Tframeliegenschaftsdaten;
    NxTabSheet1: TNxTabSheet;
    FNpipeClient1: TFNpipeClient;
    Tframeshowauftr1: Tframeshowauftr;
    rightpager: TNxPageControl;
    tabliegenschaft: TNxTabSheet;
    liegenschaftsdaten: Tframeliegenschaftsdaten;
    zframe: Tframeauftragsdaten;
    // zframe: Tframeauftragsdaten;
    // procedure aufträgeAnzeigen(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function nameserverstart: boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbaufträgeCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure mframeeliegenschaftExit(Sender: TObject);
    procedure showzwischenablesung(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ieinstellungenDblClick(Sender: TObject);
    procedure NxDBMemoColumn1ButtonClick(Sender: TObject);
    procedure dbaufträgeCellColoring(Sender: TObject; ACol, ARow: Integer;
      var CellColor, GridColor: TColor; CellState: TCellState);
    procedure dbaufträgeSortColumn(Sender: TObject; ACol: Integer;
      Ascending: boolean);
    procedure pneuerauftragDblClick(Sender: TObject);
    procedure poffeneclick(Sender: TObject);
    procedure pauftraggenerierenClick(Sender: TObject);
    procedure twizardsheetShow(Sender: TObject);
    procedure wizardNxButton1Click(Sender: TObject);
    procedure zframeenutzernummerExit(Sender: TObject);
    procedure wizardenutzernummerExit(Sender: TObject);
    procedure nxbutton1click(Sender: TObject);
    procedure wizardButton1Click(Sender: TObject);
    procedure wizardNxButton6Click(Sender: TObject);
    procedure wizardNxButton7Click(Sender: TObject);
    procedure zframeeliegenschaftExit(Sender: TObject);
    procedure zframeButton1Click(Sender: TObject);
    procedure zframeNxButton2Click(Sender: TObject);
    procedure showDocument(Sender: TObject);
    procedure NxDBGraphicColumn1SetCell(Sender: TObject; ACol, ARow: Integer;
      CellRect: TRect; CellState: TCellState);
    procedure NxDBButtonColumn1ButtonClick(Sender: TObject);
    procedure vstGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure vstFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure PaintSelection(Bitmap: TBitmap);
    procedure NxButton2Click(Sender: TObject);
    procedure dokanzeigeClick(Sender: TObject);
    procedure vstAfterCellPaint(Sender: TBaseVirtualTree; TargetCanvas: TCanvas;
      Node: PVirtualNode; Column: TColumnIndex; CellRect: TRect);
    procedure vstBeforeCellPaint(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      CellPaintMode: TVTCellPaintMode; CellRect: TRect; var ContentRect: TRect);
    procedure vstColumnClick(Sender: TBaseVirtualTree; Column: TColumnIndex;
      Shift: TShiftState);
    procedure vstColumnDblClick(Sender: TBaseVirtualTree; Column: TColumnIndex;
      Shift: TShiftState);
    procedure hideWiedervorlagen(Sender: TObject);
    procedure vstCompareNodes(Sender: TBaseVirtualTree;
      Node1, Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
    procedure vstHeaderClick(Sender: TVTHeader; HitInfo: TVTHeaderHitInfo);
    procedure Tframeshowauftr1NxButton1Click(Sender: TObject);
    procedure Tframeshowauftr1NxButton2Click(Sender: TObject);
    procedure babschließen(Sender: TObject);
    procedure sheetunbearbeitetShow(Sender: TObject);
    procedure vstsearchGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure NxButton4Click(Sender: TObject);
    procedure panforderungenClick(Sender: TObject);
    procedure puaClick(Sender: TObject);
    procedure zframePanel3Click(Sender: TObject);
    procedure vstanfMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NxButton21Click(Sender: TObject);
    procedure vstanfAfterCellPaint(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      CellRect: TRect);
    procedure vstanfColumnClick(Sender: TBaseVirtualTree; Column: TColumnIndex;
      Shift: TShiftState);
    procedure vstsearchAfterCellPaint(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      CellRect: TRect);
    procedure vstanfGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure FNpipeClient1Error(Sender: TObject; AException: Exception);
    procedure vstsearchColumnClick(Sender: TBaseVirtualTree;
      Column: TColumnIndex; Shift: TShiftState);
    procedure zframeNxButton1Click(Sender: TObject);

  private
    lg           : string;
    procplink    : Integer;
    tmplist      : TStringList;
    kn           : string;
    ableserlist  : TStringList;
    nn           : string;
    sb           : string;
    scanvz       : string;
    Ascending    : boolean;
    querydone    : boolean;
    auftragsid   : Integer;
    dateinamen   : TStringList;
    FLeftPos     : Integer;
    FHeaderBitmap: TBitmap;
    FBackBitmap1 : TBitmap;
    FBackBitmap2 : TBitmap;
    avst         : TVirtualStringTree;
    function startplink: boolean;
    procedure executeparameter;
    procedure setrightside(dict: TDictionary<string, string>);
    procedure setleftside(dict: TDictionary<string, string>);
    procedure resetliegenschaftsdaten;
    procedure doframestuff(frame: Tframeauftragsdaten);
    procedure setcombobox(cb: Tfcombobox);
    procedure setnutzer(dict: TDictionary<string, string>);
    procedure CMDialogKey(var Message: TCMDialogKey); message CM_DIALOGKEY;
    function setnode(avst: TVirtualStringTree; parNode: PVirtualNode;
      arecord: tTreedata): PVirtualNode;
    // procedure setauftraggeber(dict: TDictionary<string, string>);
    { Private-Deklarationen }
    procedure getoffeneaufträge(query: string);
    procedure getunbearbeitet(wherestring: string);

    procedure getanforderung(query: string);
    procedure getaf(query: TZQuery; table, wherestring: string);
    procedure fillvst(query: TZQuery; avst: TVirtualStringTree; pan: TPanel);
    procedure filloffene(query: TZQuery; avst: TVirtualStringTree);
    procedure SelectSubNodes(ANode: PVirtualNode);
    procedure showdata(avst: TVirtualStringTree);
    function getliegenschaft(avst: TVirtualStringTree;
      ANode: PVirtualNode): string;
    function getnutzernummer(avst: TVirtualStringTree;
      ANode: PVirtualNode): string;
    function gettyp(avst: TVirtualStringTree; ANode: PVirtualNode): string;
    function getdatum(avst: TVirtualStringTree; ANode: PVirtualNode): string;
    procedure hideauftrag(ANode: PVirtualNode);
    procedure resetpage;
    function getausführungsdatum: string;
  public
    function setcursor(cr: Integer): boolean;
    function saveSettings(kn, sb: string): boolean;
    function getkundennummer: string;
    procedure savenotizchanges(neuenotiz: string);

    procedure updatewiedervorlage(wieddate: string);
    procedure setbegr(begr: string);
    function getsb: string;
  end;

var
  formmain   : Tformmain;
  focusedNode: PVirtualNode;

implementation

{$R *.dfm}

uses umemo;
// ----------------------------------------------------------------------------------------------------------------------

procedure Tformmain.PaintSelection(Bitmap: TBitmap);

const
  Alpha = 75;

var
  R: TRect;

begin
  R := Rect(0, 0, Bitmap.Width, Bitmap.Height);
  VirtualTrees.AlphaBlend(0, Bitmap.Canvas.Handle, R, Point(0, 0),
    bmConstantAlphaAndColor, Alpha, ColorToRGB(clHighlight));
  with Bitmap do begin
    Canvas.Pen.Color   := clHighlight;
    Canvas.Brush.Style := bsClear;
    Canvas.Rectangle(0, 0, Width, Height);
  end;
end;

// ----------------------------------------------------------------------------------------------------------------------
procedure Tformmain.CMDialogKey(var Message: TCMDialogKey);
begin
  if message.charcode <> vk_tab then begin
    inherited;
    exit;
  end;
  if ((ActiveControl = wizard.feliegenschaft) or
    (ActiveControl = wizard.fcbauftrag) or (ActiveControl = wizard.eort) or
    (ActiveControl = wizard.enutzertel) or (ActiveControl = wizard.Button1))
  then begin

    wizard.pager.ActivePageIndex := wizard.pager.ActivePageIndex + 1;
    exit;
  end;
  inherited;
end;

// ---------------------------------------------------------------------------
procedure Tformmain.dbaufträgeCellColoring(Sender: TObject; ACol, ARow: Integer;
  var CellColor, GridColor: TColor; CellState: TCellState);
begin
  if ARow > TNextDBGrid(Sender).LastVisibleRow then exit;

  if (csSelected in CellState) then exit;
  CellColor                        := $00E3DFD9;
  if ARow mod 2 = 0 then CellColor := clWhite;
end;

procedure Tformmain.dbaufträgeCellDblClick(Sender: TObject;
  ACol, ARow: Integer);

var
  dat, tmpfile     : string;
  dateilist        : TStringList;
  index            : Integer;
  dict, nutzerdaten: TDictionary<string, string>;
  pe               : string;
begin
  case ACol of
    6: begin
        showDocument(nil);
        exit;

      end;
  end;

  // showdata(;
  // pauftraggenerieren.Visible := true;
  // pauftraggenerierenClick(pauftraggenerieren);
  // //
  // Screen.Cursor := crHourGlass;
  // dat := pchar(dbaufträge.GetColumnByFieldName(dateiname).Field.AsString);
  // lg := pchar(dbaufträge.GetColumnByFieldName(liegenschaft).Field.AsString);
  // nn := dbaufträge.GetColumnByFieldName(Nutzernummer).Field.AsString;
  // auftragsid := dbaufträge.GetColumnByFieldName('id').Field.AsInteger;
  // pe := dbaufträge.GetColumnByFieldName(Posteingang).Field.AsString;
  // try nn := dbaufträge.GetColumnByFieldName(Nutzernummer).Field.AsString;
  // except nn := '0';
  //
  // end;
  //
  // dict := setliegenschaftsdaten(lg);
  // kn := copy(lg, 1, 2);
  //
  // if strtoint(nn) > 0 then begin
  // nutzerdaten := setnutzerdaten(nn, kn, lg);
  // setnutzer(nutzerdaten);
  // end;
  // setrightside(dict);
  // setleftside(dict);
end;

procedure Tformmain.dbaufträgeSortColumn(Sender: TObject; ACol: Integer;

  Ascending: boolean);
begin
  //
  // var
  // DirectionStr: string;
  // wherestring: string;
  // index: Integer;
  // pe: TDate;
  // difference: real;
  // begin
  // if dbaufträge.Columns[ACol].FieldName = '' then exit;
  // if Ascending then DirectionStr := ' ASC '
  // else DirectionStr := ' DESC ';
  // wherestring := ' WHERE AnforderungAbgeschlossen=0  ORDER BY ' +
  // dbaufträge.Columns[ACol].FieldName + DirectionStr;
  // getaufträge(wherestring);

end;

procedure Tformmain.FNpipeClient1Error(Sender: TObject; AException: Exception);
begin
  showmessage('nicht verschickt');
end;

procedure Tformmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Killprocess(procplink);
  // KillTask('plink.exe');
  try DeleteFiles(gettmpfolder);
  except OutputDebugString('Dateien sind noch geöffnet');

  end;
end;

procedure Tformmain.FormCreate(Sender: TObject);
var
  Width: Integer;
  i    : Integer;
begin
  formmain.Left := 0;
  formmain.Top  := 0;
  startplink;
  kn := readfromini(getinifile(inidatei), 'Section', 'Kundennummer',
    default_value);
  sb := readfromini(getinifile(inidatei), 'Section', 'Sachbearbeiter',
    default_value);
  lkundennummer.Caption   := lkundennummer.Caption + kn;
  lsachbearbeiter.Caption := lsachbearbeiter.Caption + sb;
  pager.ActivePage        := NxTabSheet1;

  nameserverstart;

  if paramcount > 0 then executeparameter;

end;

// #################################################
function Tformmain.nameserverstart: boolean;
var
  cmd             : string;
  procidpipeserver: Integer;
begin
  cmd := 'pnamepipeserver.exe';
  if isexerunning(cmd) then begin
    Result := true;
    exit;
  end;
  try
    procidpipeserver :=
      Shellmyex(pchar(IncludeTrailingPathDelimiter(ExtractFilePath
      (Application.ExeName)) + cmd), sw_normal);
    Result := not(procidpipeserver = 0);
  except showmessage('namepipeserver kann nicht gestartet werden');

  end;
end;

// #################################################
procedure Tformmain.FormDestroy(Sender: TObject);
begin
  Killprocess(procplink);
  // try
  // DeleteFiles(gettmpfolder);
  // except

  // end;
end;

procedure Tformmain.FormShow(Sender: TObject);
const
  database = 'verwaltung.ableser';
var
  list                  : TStringList;
  ds                    : TDataSet;
  mydate                : TDatetime;
  mymonth, myday, myyear: word;
begin
  list := TStringList.Create;
  list.Add('Name1');
  list.Add('Name2');
  list.Add('Strasse');
  list.Add('PLZ');
  list.Add('Ort');
  list.Add('Tel');
  list.Add('Fax');
  list.Add('Email');
  list.Add('Ansprech');
  list.Add('Mobil');

  if ableserlist = nil then ableserlist := TStringList.Create;
  if not assigned(formdb) then formdb   := Tformdb.Create(self);
  with formdb do begin
    doquery(queryableser, database, '', list);
    while not dsableser.DataSet.Eof do begin
      ableserlist.Add(dsableser.DataSet.FieldByName('Name1').AsString);
      dsableser.DataSet.Next;
    end;
  end;
  if not assigned(zframe) then zframe := Tframeauftragsdaten.Create(self);
  setcombobox(zframe.cbmonteur);

  Tframeshowauftr1.NxButton1.Enabled := false;
  Tframeshowauftr1.NxButton2.Enabled := false;

  zframe.dperstellungsdatum.Text := formatedatefrom4jto2j(DateToStr(now));
  DecodeDate(now, myyear, mymonth, myday);
  zframe.ldayOM.Caption := Format('%.2d ', [myday]);
  zframe.Lmy.Caption := zframe.getmonthstring(mymonth) + ' ' + inttostr(myyear);
  zframe.hptermin.Expanded := false;
  zframe.nxdate.Date       := now;

end;

procedure Tformmain.getaf(query: TZQuery; table, wherestring: string);
var
  reklattrs: TStringList;
begin
  reklattrs := TStringList.Create;
  reklattrs.Add('*');
  formdb.doquery(query, table, wherestring, reklattrs);
  querydone := true;
end;

procedure Tformmain.getanforderung(query: string);
begin
  getaf(formdb.queryanforderungen, table_anf, query);
end;

procedure Tformmain.getunbearbeitet(wherestring: string);
begin
  getaf(formdb.queryunbearbeitet, table_unbearbeitet, wherestring);
end;

function Tformmain.getkundennummer: string;
begin
  Result := kn;
end;

function Tformmain.getliegenschaft(avst: TVirtualStringTree;
  ANode: PVirtualNode): string;
var
  Data: PTreedata;
begin
  Result := '';
  Data   := avst.getnodedata(ANode);
  while not(correctlg(Data.FCaption)) do begin
    OutputDebugString(pchar(Data.FCaption));
    ANode  := ANode.Parent;
    Data   := vst.getnodedata(ANode);
    Result := Data.FCaption;
  end;

end;

// -------------------------------------------------
function Tformmain.getnutzernummer(avst: TVirtualStringTree;
  ANode: PVirtualNode): string;
var
  Data: PTreedata;
begin

  Data   := vst.getnodedata(ANode);
  Result := Data.FCaption;
  while not(correctnn(Data.FCaption)) do begin
    ANode  := ANode.Parent;
    Data   := vst.getnodedata(ANode);
    Result := Data.FCaption;
  end;
end;

// -------------------------------------------------
procedure Tformmain.getoffeneaufträge(query: string);
begin
  getaf(formdb.queryaufträge, table_aufträge, query);
end;

// #############################
function Tformmain.getsb: string;
begin
  Result := sb;
end;

// #############################

// #############################
function Tformmain.gettyp(avst: TVirtualStringTree;
  ANode: PVirtualNode): string;

var
  Data: PTreedata;
begin

  Data   := vst.getnodedata(ANode);
  Result := Data.FCaption;
  while not(correcttyp(Data.FCaption)) do begin
    ANode  := ANode.Parent;
    Data   := vst.getnodedata(ANode);
    Result := Data.FCaption;
  end;
end;

// -------------------------------------------------
procedure Tformmain.hideauftrag(ANode: PVirtualNode);
var
  Parent: PVirtualNode;
  Date  : PTreedata;
begin
  Parent := ANode.Parent;
  while not(Parent = vst.RootNode) do begin
    ANode := Parent;
    vst.DeleteNode(ANode);
    if Parent.ChildCount = 0 then Parent := Parent.Parent;
  end;
end;

procedure Tformmain.hideWiedervorlagen(Sender: TObject);
var
  Data                       : PTreedata;
  RootNode, child, grandchild: PVirtualNode;
  diff                       : real;
  wiedate                    : TDatetime;

begin
  vst.BeginUpdate;
  RootNode := vst.GetFirst;
  while assigned(RootNode) do begin
    child := vst.GetFirstChild(RootNode);
    while assigned(child) do begin
      grandchild := vst.GetFirstChild(child);
      while assigned(grandchild) do begin
        Data := vst.getnodedata(grandchild);
        try
          wiedate   := StrToDateTime(Data.fwiedervorl);
          diff      := wiedate - now;
        except diff := -1;
        end;
        if diff > 0 then hideauftrag(grandchild);
        grandchild := grandchild.NextSibling;
      end;
      child := child.NextSibling;
    end;
    RootNode := RootNode.NextSibling;
  end;
  vst.EndUpdate;
end; { TODO :
  Liegenschaft nach Datum sortieren
  settext abändern, "Liegenschaft", ... }

procedure Tformmain.ieinstellungenDblClick(Sender: TObject);
begin
  Einstellungen.Show;
end;

procedure Tformmain.mframeeliegenschaftExit(Sender: TObject);
var
  dict, dict2: TDictionary<string, string>;
  kunde      : string;
  len        : Integer;
  prefix     : string;
  frame      : Tframeauftragsdaten;
begin
  // prefix := getprefix(pager.ActivePageIndex);
  // frame := FindComponent(prefix + 'frame') as Tframeauftragsdaten;
  frame := zframe;
  frame.eliegenschaftExit(Sender);
  lg := (Sender as TfEdit).Text;

  if length(lg) = 7 then begin
    dict := setliegenschaftsdaten(lg);
    setrightside(dict);
    setleftside(dict);
    getunbearbeitet(' WHERE liegenschaft = ' + lg);
  end;
end;

procedure Tformmain.nxbutton1click(Sender: TObject);
var
  updatestring: string;
begin
  updatestring :=
    'UPDATE Auftragsanforderung SET Auftragsanforderung.AnforderungAbgeschlossen=1 WHERE id='
    + inttostr(auftragsid);
  formdb.doupdate(updatestring);

end;

procedure Tformmain.NxButton21Click(Sender: TObject);
var
  Node                  : PVirtualNode;
  lg, typ, nutzer, datum: string;
begin
  Node := vstanf.focusedNode;
  if not assigned(Node) then exit;
  lg     := getliegenschaft(vstanf, Node);
  nutzer := getnutzernummer(vstanf, Node);
  typ    := gettyp(vstanf, Node);
  datum  := getdatum(vstanf, Node);

end;

procedure Tformmain.NxButton2Click(Sender: TObject);
var
  Node   : PVirtualNode;
  lg     : string;
  Data   : PTreedata;
  lgquery: string;
  list   : TStringList;
begin
  if not(vst.focusedNode <> nil) then begin
    showmessage('bitte eine Liegenschaft auswählen');
    exit;
  end;
  Node   := vst.focusedNode;
  Data   := vst.getnodedata(Node);
  try lg := Data.FCaption;
  except
  end;
  while not(correctlg(lg)) do begin
    Node   := Node.Parent;
    Data   := vst.getnodedata(Node);
    try lg := Data.FCaption;
    except
    end;
    // if AnsiStartsText('lieg', LowerCase(lg)) then
  end;
  list := TStringList.Create;
  getoffeneaufträge(' WHERE liegenschaft = ' + lg + ' ORDER BY liegenschaft');
  vstsearch.Align  := TAlign.alBottom;
  vstsearch.Height := trunc((pauftr.Height / 2) - pmessage.Height);
  fillvst(formdb.queryaufträge, vstsearch, poA);
  exit;

end;

procedure Tformmain.NxButton4Click(Sender: TObject);
var
  Parent: PVirtualNode;

  i          : Integer;
  nodes      : TVTVirtualNodeEnumeration;
  Node       : PVirtualNode;
  sammelnodes: TList;
  tmpnode    : PVirtualNode;
  Data       : PTreedata;
begin
  // i := 0;
  // nodes := vst.SelectedNodes();
  //
  // sammelnodes := TList.Create;
  // for Node in nodes do begin
  // if not(Node = vst.RootNode) and (Node.ChildCount > 0) then begin
  // // Aufträge angeklickt
  //
  // tmpnode := vst.getnext(Node);
  // sammelnodes.Add(tmpnode);
  // while Assigned(tmpnode.NextSibling) do begin
  // tmpnode := tmpnode.NextSibling;
  // sammelnodes.Add(tmpnode)
  // end;
  // for tmpnode in sammelnodes do begin
  // Data := vst.getnodedata(tmpnode);
  // showmessage(Data.FCaption);
  // end;
  // end;
  //
  // end;
  nodes := vst.SelectedNodes();
  Node  := nodes.GetEnumerator.Current;
  Data  := vst.getnodedata(Node);
  // if not((Node.Parent = vst.RootNode) and Node.ChildCount > 0) then begin
  // showmessage
  // ('Bitte einen Auftragstyp anklicken um einen Sammelauftrag zu erstellen');
  // exit;
  // end;
  // sammelnodes := TList.Create;
  // tmpnode := vst.GetNext(node);
  // sammelnodes.Add(tmpnode);
  // while assigned(tmpnode.NextSibling) do begin
  // tmpnode := tmpnode.NextSibling;
  // sammelnodes.Add(tmpnode);
  // end;

end;

procedure Tformmain.NxDBButtonColumn1ButtonClick(Sender: TObject);
begin
  showmessage('clicked');
end;

procedure Tformmain.NxDBGraphicColumn1SetCell(Sender: TObject;
  ACol, ARow: Integer; CellRect: TRect; CellState: TCellState);
var
  g: TGraphic;
begin
  // g := TBitmap.Create;
  // g.LoadFromFile(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + '../icons/write2.png');
  // obj
end;

procedure Tformmain.NxDBMemoColumn1ButtonClick(Sender: TObject);
begin
  showmessage('angeklickt');
end;

procedure Tformmain.poffeneclick(Sender: TObject);
var
  index: Integer;
begin
  avst := vstsearch;
  paintallcontrols(peinzelauftr, dunkelblaufm);
  (Sender as TPanel).Color := hellerblaufm;
  pager.ActivePage         := sheetoffene;
  getoffeneaufträge(' ORDER BY liegenschaft asc');
  filloffene(formdb.queryaufträge, vstsearch);
  psearchoff.Enabled := false;
  pauftrerst.Enabled := false;

end;

procedure Tformmain.puaClick(Sender: TObject);
begin
  paintallcontrols(peinzelauftr, dunkelblaufm);
  (Sender as TPanel).Color := hellerblaufm;
  pager.ActivePage         := sheetunbearbeitet;

  pauftrerst.Enabled := true;
  psearchoff.Enabled := true;
  { TODO : wieder rückgängig, ist keine anforderung!! }
  getunbearbeitet(' WHERE AnforderungAbgeschlossen=0 ORDER BY ' + liegenschaft
    + ' asc');
  if Sender is TPanel then
      fillvst(formdb.queryunbearbeitet, vst, Sender as TPanel)
  else fillvst(formdb.queryunbearbeitet, vst, pua);
  avst := vst;
end;

procedure Tformmain.pauftraggenerierenClick(Sender: TObject);
begin

  paintallcontrols(peinzelauftr, dunkelblaufm);
  (Sender as TPanel).Color := hellerblaufm;
  wizard.pager.ShowTabs    := false;
  wizard.Show;
  wizard.pager.ActivePageIndex := 0;
  pager.ActivePage             := twizardsheet;
end;

procedure Tformmain.pneuerauftragDblClick(Sender: TObject);
begin
  pager.ActivePage := tabneuerauftrag;
  paintallcontrols(peinzelauftr, dunkelblaufm);
  (Sender as TPanel).Color := hellerblaufm;

end;

procedure Tformmain.panforderungenClick(Sender: TObject);
begin

  paintallcontrols(peinzelauftr, dunkelblaufm);
  (Sender as TPanel).Color := hellerblaufm;
  pager.ActivePage         := sheetanforderungen;

  pauftrerst.Enabled := true;
  psearchoff.Enabled := true;

  getanforderung(' WHERE AnforderungAbgeschlossen=0 ORDER BY ' + liegenschaft
    + ' asc');
  if Sender is TPanel then
      fillvst(formdb.queryanforderungen, vstanf, Sender as TPanel)
  else fillvst(formdb.queryanforderungen, vstanf, pua);
  // vstsearch.Visible := false;
  avst := vstanf;
end;

procedure Tformmain.resetliegenschaftsdaten;
begin
  liegenschaftsdaten.estrasse.Text := '';
  liegenschaftsdaten.eplz.Text     := '';
  liegenschaftsdaten.eort.Text     := '';
  liegenschaftsdaten.vermerke.Clear;
end;

procedure Tformmain.resetpage;
var
  index: Integer;
begin
  for index := 0 to zframe.ControlCount - 1 do begin
    if zframe.Controls[index] is TfEdit then
      (zframe.Controls[index] as TfEdit).Clear;
  end;

end;

procedure Tformmain.savenotizchanges(neuenotiz: string);
var
  sql  : string;
  Data : PTreedata;
  Node : PVirtualNode;
  table: string;
begin
  if avst = vst then table       := table_unbearbeitet;
  if avst = vstsearch then table := table_aufträge;
  if avst = vstanf then table    := table_anf;

  Node := avst.focusedNode;
  Data := avst.getnodedata(Node);
  formdb.update(inttostr(Data.fid), table, Notizen, neuenotiz);
  Data.fnotizen := neuenotiz;
end;

function Tformmain.saveSettings(kn, sb: string): boolean;
begin
  self.kn := kn;
  self.sb := sb;
  writeToIni(kn, sb);
  lsachbearbeiter.Caption := 'Sachbearbeiter: ' + sb;
  lkundennummer.Caption   := 'Kundennummer: ' + kn;
end;

procedure Tformmain.setbegr(begr: string);
var
  sql  : string;
  Data : PTreedata;
  Node : PVirtualNode;
  avst : TVirtualStringTree;
  table: string;
begin
  case pager.ActivePageIndex of
    1: begin
        avst  := vstsearch;
        table := table_aufträge;
      end;
    2: begin
        avst  := vst;
        table := table_anf;
      end;

  end;
  Node := avst.focusedNode;
  Data := avst.getnodedata(Node);
  formdb.update(inttostr(Data.fid), table, Begrwiedervotl, begr);

end;

procedure Tformmain.setcombobox(cb: Tfcombobox);
const
  database = 'verwaltung.ableser';
var
  ableser: string;
begin
  for ableser in ableserlist do begin
    cb.Items.Add(ableser);
  end;

end;

function Tformmain.setcursor(cr: Integer): boolean;
begin
  try Screen.Cursor := cr;
  except Result     := false;
  end;
  Result := true;
end;

procedure Tformmain.setleftside(dict: TDictionary<string, string>);
var
  prefix : string;
  frame  : Tframeauftragsdaten;
  abrende: string;
  abdate : TDatetime;
begin
  // if (pager.ActivePage = twizardsheet) then prefix := 'z'
  // else begin
  // prefix := getprefix(pager.ActivePage.PageIndex);
  // end;
  // frame := FindComponent(prefix + 'frame') as Tframeauftragsdaten;
  frame                                         := zframe;
  if not(lg = '') then frame.eliegenschaft.Text := lg;
  try frame.enutzernummer.Text := Format('%.3d', [strtoint(nn)]);
  except frame.enutzernummer.Text := Format('%.3d', [0]);
  end;

  if (dict = nil) or (dict.count = 0) then exit;
  abdate  := StrToDateTime(dict.Items['DatAbr']);
  abrende := DateToStr(abdate);
  abrende := getfittingabrechnungsende(abrende);

  frame.ename1.Text   := dict.Items['eigent1'];
  frame.ename2.Text   := dict.Items['eigent2'];
  frame.eort.Text     := dict.Items['eigort'];
  frame.eplz.Text     := dict.Items['eigplz'];
  frame.estrasse.Text := dict.Items['eigstr'];

  frame.dpabrechnungsende.Text  := abrende;
  wizard.feliegenschaft.Text    := lg;
  try wizard.enutzernummer.Text := nn;
  except OutputDebugString('keine Nutzernummer');

  end;
  // wizard.ename1.Text   := dict.Items['eigent1'];
  // wizard.ename2.Text   := dict.Items['eigent2'];
  // wizard.eort.Text     := dict.Items['eigort'];
  // wizard.eplz.Text     := dict.Items['eigplz'];
  // wizard.estrasse.Text := dict.Items['eigstr'];
end;

function Tformmain.setnode(avst: TVirtualStringTree; parNode: PVirtualNode;
  arecord: tTreedata): PVirtualNode;
var
  Data: PTreedata;
begin
  Result := avst.AddChild(parNode);
  Data   := avst.getnodedata(Result);
  avst.ValidateChildren(Result, false);
  Data^.FCaption           := arecord.FCaption;
  Data^.FColumn            := arecord.FColumn;
  Data^.fimagedok          := arecord.fimagedok;
  Data^.fimagewied         := arecord.fimagewied;
  Data^.fimageerst         := arecord.fimageerst;
  Data^.fspecial           := arecord.fspecial;
  Data^.fnotizen           := arecord.fnotizen;
  Data^.fdateiname         := arecord.fdateiname;
  Data^.fid                := arecord.fid;
  Data^.fausführungstermin := arecord.fausführungstermin;
  Data^.fwiedervorl        := arecord.fwiedervorl;
end;

procedure Tformmain.setnutzer(dict: TDictionary<string, string>);
var
  prefix: string;
  frame : Tframeauftragsdaten;
begin
  // pager.ActivePageIndex := 1;
  // prefix := getprefix(pager.ActivePageIndex);
  prefix := 'z';
  frame  := zframe;
  // frame  := FindComponent(prefix + 'frame') as Tframeauftragsdaten;
  frame.enutzername1.Text := dict.Items['WO5'];
  frame.enutzername2.Text := dict.Items['WO6'];

  wizard.enutzername1.Text := dict.Items['WO5'];
  wizard.enutzername2.Text := dict.Items['WO6'];
end;

procedure Tformmain.setrightside(dict: TDictionary<string, string>);

begin

  resetliegenschaftsdaten;
  // if not((pager.ActivePageIndex = 0) or (pager.ActivePageIndex = 1)) then

  // liegenschaftsdaten.Parent := TZwischenablesung;
  // else liegenschaftsdaten.Parent := pager.ActivePage;

  if (dict = nil) or (dict.count = 0) then begin
    liegenschaftsdaten.pdatenrechts.Caption :=
      'Diese Liegenschaft existiert nicht';
    exit;
  end;

  liegenschaftsdaten.pliedaten.Visible := true;
  liegenschaftsdaten.estrasse.Text     := dict.Items['str'];
  liegenschaftsdaten.eort.Text         := dict.Items['ort'];
  liegenschaftsdaten.eplz.Text         := dict.Items['plz'];
  liegenschaftsdaten.vermerke.Text     := StringReplace(dict.Items['Vermerke'],
    '' + #10, #13#10, [rfReplaceAll, rfignorecase]);
  liegenschaftsdaten.pliedaten.Visible := true;

  Tframeshowauftr1.lcopen.Caption := dict.Items['offen'];
  Tframeshowauftr1.lcunbe.Caption := dict.Items['unbearbeitet'];
end;

procedure Tformmain.doframestuff(frame: Tframeauftragsdaten);
begin
  with zframe do begin
    try eliegenschaft.SetFocus;
      // fauftragsnummer.SetFocus;
    except OutputDebugString('kann den Focus nicht erhalten');
    end;
  end;
end;

procedure Tformmain.dokanzeigeClick(Sender: TObject);
var
  elem, dns, helper: string;
  dateilist        : TStringList;
  tmpfile          : string;
begin
  if not assigned(dateinamen) then dateinamen := TStringList.Create;
  dateinamen.Clear;
  if not(vst.focusedNode <> nil) then exit;

  SelectSubNodes(vst.focusedNode);
  for elem in dateinamen do begin
    // // die Dateinamen ermitteln
    dateilist                 := TStringList.Create;
    dateilist.Delimiter       := ';';
    dateilist.StrictDelimiter := true;
    dateilist.DelimitedText   := elem;

    // die Datei(en) lokal herunterladen
    for dns in dateilist do begin
      if dns = '' then continue;
      helper  := ReplaceStr(dns, '/', '\\');
      tmpfile := gettmpfile(ExtractFileName(helper));
      if not FileExists(tmpfile) then formftp.getFile(dns, tmpfile);
      ShellExecute(Handle, 'open', pchar(tmpfile), nil, nil, SW_SHOWNORMAL);
    end;
  end;

  Screen.Cursor := crdefault;
end;

procedure Tformmain.executeparameter;
var
  index       : Integer;
  param       : string;
  command     : string;
  nnhelper    : Integer;
  nn, lg, Text: string;
begin
  // die richtige Ansicht in den Vordergrund

  pager.ActivePage        := tabneuerauftrag;
  zframe.pager.ActivePage := NxTabSheet1;

  for index := 0 to paramcount - 1 do begin
    command := paramstr(index);
    param   := paramstr(index + 1);
    if command = '-l' then begin
      if not(param.length = 7) then continue;
      try
        nnhelper := strtoint(param);
        if not nnhelper > 0 then exit;
        lg := param;
      except
      end;
    end;
    if command = '-n' then begin
      if (param.length > 3) then continue;
      try
        nnhelper := strtoint(param);
        if not(nnhelper > 0) then exit;
        nn := param;
      except
      end;

    end;
    if command = '-t' then Text := param;
  end;

  zframe.eliegenschaft.Text := lg;
  try zframeeliegenschaftExit(zframe.eliegenschaft);
  except

  end;
  zframe.enutzernummer.Text := nn;
  try zframeenutzernummerExit(zframe.enutzernummer);
  except

  end;
  zframe.Notizen.Text := Text;
end;

procedure Tformmain.SelectSubNodes(ANode: PVirtualNode);
var
  SubNode: PVirtualNode;
  Data   : PTreedata;
  datstr : string;
begin

  try SubNode := vst.GetFirstChild(ANode);
    // data := vst.GetNodeData(subnode);
    // datstr := data.FCaption;
  except
  end;
  while assigned(SubNode) do begin
    SelectSubNodes(SubNode);
    Data    := vst.getnodedata(SubNode);
    datstr  := Data.fdateiname;
    SubNode := vst.GetNextSibling(SubNode);
  end;
  // if  (AnsiStartsText('scdb', LowerCase(datstr))) then

  dateinamen.Add(datstr);
end;

// ------------------------------------------------------
procedure Tformmain.filloffene(query: TZQuery; avst: TVirtualStringTree);
var
  reklattrs                                   : TStringList;
  row, rowcount                               : Integer;
  i, j                                        : Integer;
  liegnode, penode, nnnode, aufnode, dateinode: PVirtualNode;
  liegcount                                   : Integer;
  dict                                        : TDictionary<string, string>;
  tmplg, lg                                   : string;
  tmpnn                                       : string;
  tmppe                                       : string;
  pestr                                       : string;
  nnstr                                       : string;
  auftrstr                                    : string;
  tmpauftrstr                                 : string;

  tmppestr       : string;
  treedata       : tTreedata;
  nnint          : Integer;
  index          : Integer;
  dat            : string;
  notz           : string;
  wiedervorl     : string;
  ausführungsterm: string;
begin

  if formdb.queryaufträge.RecordCount = 0 then begin
    pmessage.Caption := 'keine Ergebnisse gefunden';
    pmessage.Visible := true;
    exit;
  end;
  pmessage.Visible := false;
  //
  avst.Clear;
  tmppestr          := '__';
  tmpauftrstr       := '__';
  avst.NodeDataSize := sizeof(tTreedata);
  avst.BeginUpdate;
  with formdb.queryaufträge do begin
    while not Eof do begin
      lg              := FieldByName(liegenschaft).AsString;
      pestr           := FieldByName(Posteingang).AsString;
      nnint           := FieldByName(Nutzernummer).AsInteger;
      auftrstr        := FieldByName(auftragstyp).AsString;
      dat             := FieldByName(dateiname).AsString;
      notz            := FieldByName(Notizen).AsString;
      auftragsid      := FieldByName('Id').AsInteger;
      wiedervorl      := FieldByName(wiedervorlage).AsString;
      ausführungsterm := FieldByName('ausführungstermin').AsString;
      if lg <> tmplg then begin
        // neuer Lieg.Knoten, wenn noch nicht vorhanden
        treedata.FCaption    := lg;
        treedata.FColumn     := '';
        treedata.fimagedok   := -1;
        treedata.fimagewied  := -1;
        treedata.fimageerst  := -1;
        treedata.fspecial    := false;
        treedata.fnotizen    := '';
        treedata.fwiedervorl := '     ';
        liegnode             := setnode(avst, nil, treedata);
        treedata.FCaption    := auftrstr;
        treedata.FColumn     := '';
        treedata.fspecial    := false;
        treedata.fimagedok   := -1;
        treedata.fimagewied  := -1;
        treedata.fnotizen    := '';
        treedata.fwiedervorl := '     ';
        aufnode              := setnode(avst, liegnode, treedata);
      end else if (auftrstr <> tmpauftrstr) then begin
        treedata.FCaption    := auftrstr;
        treedata.FColumn     := '';
        treedata.fspecial    := false;
        treedata.fimagedok   := -1;
        treedata.fimagewied  := -1;
        treedata.fnotizen    := '';
        treedata.fwiedervorl := '     ';
        aufnode              := setnode(avst, liegnode, treedata);
      end;
      treedata.FCaption    := Format('%.3d', [nnint]);
      treedata.FColumn     := wiedervorl;
      treedata.fspecial    := true;
      treedata.fimagedok   := 0;
      treedata.fnotizen    := notz;
      treedata.fimagewied  := 2;
      treedata.fdateiname  := dat;
      treedata.fid         := auftragsid;
      treedata.fwiedervorl := wiedervorl;
      if treedata.FColumn = '' then treedata.FColumn := pestr;

      treedata.fausführungstermin := ausführungsterm;
      nnnode                      := setnode(avst, aufnode, treedata);

      tmplg                          := lg;
      if auftrstr = '' then auftrstr := '__';
      tmpauftrstr                    := auftrstr;
      tmppestr                       := pestr;
      Next;
    end;
  end;
  avst.EndUpdate;
  avst.FullExpand();
end;

procedure Tformmain.fillvst(query: TZQuery; avst: TVirtualStringTree;
  pan: TPanel);
var
  reklattrs    : TStringList;
  row, rowcount: Integer;
  i, j         : Integer;
  // CustomerDataObject: TCustomerNode;
  liegnode, penode, nnnode, aufnode, dateinode: PVirtualNode;
  liegcount                                   : Integer;
  dict                                        : TDictionary<string, string>;
  tmplg, lg                                   : string;
  tmpnn                                       : string;
  tmppe                                       : string;
  pestr                                       : string;
  nnstr                                       : string;
  auftrstr                                    : string;
  tmpauftrstr                                 : string;

  tmppestr  : string;
  treedata  : tTreedata;
  nnint     : Integer;
  index     : Integer;
  dat       : string;
  notz      : string;
  wiedervorl: string;
begin
  query.open;

  if query.RecordCount = 0 then begin
    pmessage.Caption := 'keine Ergebnisse gefunden';
    pmessage.Visible := true;
    exit;
  end;
  pmessage.Visible := false;
  //
  // avst.Visible := true;
  avst.Clear;
  tmppestr          := '__';
  tmpauftrstr       := '__';
  avst.NodeDataSize := sizeof(tTreedata);
  avst.BeginUpdate;
  with query do begin
    while not Eof do begin
      lg         := FieldByName(liegenschaft).AsString;
      pestr      := FieldByName(Posteingang).AsString;
      nnint      := FieldByName(Nutzernummer).AsInteger;
      auftrstr   := FieldByName(auftragstyp).AsString;
      dat        := FieldByName(dateiname).AsString;
      notz       := FieldByName(Notizen).AsString;
      auftragsid := FieldByName('Id').AsInteger;
      wiedervorl := FieldByName(wiedervorlage).AsString;
      if not(tmplg = lg) then begin

        // neuer Lieg.Knoten, wenn noch nicht vorhanden
        treedata.FCaption    := lg;
        treedata.FColumn     := '';
        treedata.fimagedok   := -1;
        treedata.fimagewied  := -1;
        treedata.fimageerst  := -1;
        treedata.fspecial    := false;
        treedata.fnotizen    := '';
        treedata.fwiedervorl := '     ';
        liegnode             := setnode(avst, nil, treedata);
        treedata.FCaption    := auftrstr;
        treedata.FColumn     := '';
        treedata.fspecial    := false;
        treedata.fimagedok   := -1;
        treedata.fimagewied  := -1;
        treedata.fimageerst  := -1;
        treedata.fnotizen    := '';
        treedata.fwiedervorl := '     ';
        aufnode              := setnode(avst, liegnode, treedata);
      end else if (auftrstr <> tmpauftrstr) then begin
        treedata.FCaption    := auftrstr;
        treedata.FColumn     := '';
        treedata.fspecial    := false;
        treedata.fimagedok   := -1;
        treedata.fimagewied  := -1;
        treedata.fimageerst  := -1;
        treedata.fnotizen    := '';
        treedata.fwiedervorl := '     ';
        aufnode              := setnode(avst, liegnode, treedata);
      end;
      treedata.FCaption    := Format('%.3d', [nnint]);
      treedata.FColumn     := wiedervorl;
      treedata.fspecial    := true;
      treedata.fimagedok   := 0;
      treedata.fnotizen    := notz;
      treedata.fimagewied  := 2;
      treedata.fimageerst  := 1;
      treedata.fdateiname  := dat;
      treedata.fid         := auftragsid;
      treedata.fwiedervorl := wiedervorl;
      if treedata.FColumn = '' then treedata.FColumn := pestr;
      nnnode                         := setnode(avst, aufnode, treedata);
      tmplg                          := lg;
      if auftrstr = '' then auftrstr := '__';
      tmpauftrstr                    := auftrstr;
      tmppestr                       := pestr;
      Next;
    end;
  end;
  avst.EndUpdate;
  avst.FullExpand();
end;

procedure Tformmain.showdata(avst: TVirtualStringTree);
var
  dat, pe    : string;
  dict       : TDictionary<string, string>;
  nutzerdaten: TDictionary<string, string>;
  Data       : PTreedata;
  Node       : PVirtualNode;
begin
  Node          := focusedNode;
  Data          := avst.getnodedata(Node);
  Screen.Cursor := crHourGlass;
  try
    lg := getliegenschaft(avst, Node);
    nn := getnutzernummer(avst, Node);
    // try nn := dbaufträge.GetColumnByFieldName(Nutzernummer).Field.AsString;
    // except nn := '0';
    // end;

    dict := setliegenschaftsdaten(lg);
    kn   := copy(lg, 1, 2);

    if strtoint(nn) > 0 then begin
      nutzerdaten := setnutzerdaten(nn, kn, lg);
      setnutzer(nutzerdaten);
    end;
    setrightside(dict);
    setleftside(dict);
    Screen.Cursor := crdefault;
  except
    Screen.Cursor := crdefault;
    resetpage;
  end;
end;

procedure Tformmain.showDocument(Sender: TObject);
var
  dat      : string;
  dateilist: TStringList;
  tmpfile  : string;
begin
  // dat := pchar(dbaufträge.GetColumnByFieldName(dateiname).Field.AsString);
  // // die Dateinamen ermitteln
  dateilist                 := TStringList.Create;
  dateilist.Delimiter       := ';';
  dateilist.StrictDelimiter := true;
  dateilist.DelimitedText   := dat;

  // die Datei(en) lokal herunterladen
  for dat in dateilist do begin
    if dat = '' then continue;
    tmpfile := gettmpfile(ExtractFileName(dat));
    if not FileExists(tmpfile) then formftp.getFile(dat, tmpfile);
    // /// /
  end;
  ShellExecute(Handle, 'open', pchar(tmpfile), nil, nil, SW_SHOWNORMAL);
  Screen.Cursor := crdefault;
end;

procedure Tformmain.showzwischenablesung(Sender: TObject);
begin
  try doframestuff(zframe);
  except

  end;
end;

procedure Tformmain.twizardsheetShow(Sender: TObject);
begin
  if assigned(wizard) then wizard.Parent := twizardsheet;
end;

procedure Tformmain.updatewiedervorlage(wieddate: string);
var
  sql  : string;
  Data : PTreedata;
  Node : PVirtualNode;
  avst : TVirtualStringTree;
  table: string;
begin
  case pager.ActivePageIndex of
    1: begin
        avst  := vstsearch;
        table := table_aufträge;
      end;
    2: begin
        avst  := vst;
        table := table_anf;
      end;

  end;
  Node := avst.focusedNode;
  Data := avst.getnodedata(Node);
  formdb.update(inttostr(Data.fid), table, wiedervorlage, wieddate);
  Data.FColumn := wieddate;
end;

// ------------------------------------------------------
procedure Tformmain.vstAfterCellPaint(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  CellRect: TRect);

var
  Rect : TRect;
  Data : PTreedata;
  count: Integer;
  Left : Integer;
begin

  Data := Sender.getnodedata(Node);
  if not Data.fspecial then exit;
  Left := CellRect.Left + trunc(CellRect.Width / 2) - 5;
  case Column of
    3: begin

        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, Data.fimagewied);
      end;
    4: begin

        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, Data.fimagedok);
      end;
    5: begin
        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, Data.fimageerst);
      end;
  end;
end;

// _---------------------------------------------------------
procedure Tformmain.vstanfAfterCellPaint(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  CellRect: TRect);
var
  Rect : TRect;
  Data : PTreedata;
  count: Integer;
  Left : Integer;
begin

  Data := Sender.getnodedata(Node);
  if not Data.fspecial then exit;
  Left := CellRect.Left + trunc(CellRect.Width / 2) - 5;
  case Column of
    3: begin

        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, Data.fimagewied);
      end;
    4: begin

        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, Data.fimagedok);
      end;
    5: begin
        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, Data.fimageerst);
      end;
  end;
end;

procedure Tformmain.vstanfColumnClick(Sender: TBaseVirtualTree;
  Column: TColumnIndex; Shift: TShiftState);
var
  col                      : Integer;
  filename, helper, tmpfile: string;
  Node                     : PVirtualNode;
  Data                     : PTreedata;
  namelist                 : TStringList;
var
  lndata: PTreedata;
  ln    : PVirtualNode;
  lg    : string;
  notiz : String;
  avst  : TVirtualStringTree;
begin
  avst        := Sender as TVirtualStringTree;
  col         := avst.FocusedColumn;
  Node        := avst.focusedNode;
  focusedNode := Node;
  Data        := avst.getnodedata(Node);

  case col of
    1: // Notizen
      begin
        Node := avst.focusedNode;
        Data := avst.getnodedata(Node);
        ln   := Node;
        while not(ln = avst.RootNode) do begin
          ln     := ln.Parent;
          lndata := avst.getnodedata(ln);
          try lg := lndata.FCaption;
          except
          end;
        end;
        notiz                    := Data.fnotizen;
        formmemo.pheader.Caption := Format(formmemo.pheader.Caption, [lg]);
        formmemo.Memo1.Text      := Data.fnotizen;
        formmemo.Show;
      end;
    2, 3:
      // Wiedervorlage
      formwieder.Show;

    4: begin // Dokument öffnen
        opendocuments(Application.Handle, Data.fdateiname);
      end;

    5: // Auftrag erstellen
      begin
        if Sender = vstsearch then exit;

        showdata(Sender as TVirtualStringTree);
        pager.ActivePage := tabneuerauftrag;
        try zframe.fauftragsnummer.SetFocus;
        except

        end;
        paintallcontrols(peinzelauftr, dunkelblaufm);
        pneuerauftrag.Color := hellerblaufm;
      end;
  end;

end;

procedure Tformmain.vstanfGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);

var
  Data      : PTreedata;
  vt        : TVirtualStringTree;
  startttext: string;
begin

  vt   := Sender as TVirtualStringTree;
  Data := vt.getnodedata(Node);
  case Column of
    0: begin
        if vt.GetNodeLevel(Node) = 0 then begin
          CellText := 'Liegenschaft: ' + Data^.FCaption;
          exit;
        end;
        if Node.ChildCount > 0 then Begin
          if vt = vstanf then startttext    := 'angefordert: ';
          if vt = vstsearch then startttext := 'offen: ';
          if vt = vst then startttext       := 'unbearbeitet: ';

          CellText := startttext + Data^.FCaption;
          exit;
        End;
        if Node.ChildCount = 0 then
            CellText := 'Nutzernummer: ' + Data^.FCaption;

        // font.Style := font.Style + [fsStrikeOut];
      end;
    1: CellText       := Data^.fnotizen;
    2: CellText       := Data^.FColumn;
    3, 4, 5: CellText := '               ';
    // 4: CellText := '  ' + Data^.fwiedervorl;
  else;
  end;
end;

procedure Tformmain.vstanfMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Data: PTreedata;
  Node: PVirtualNode;
begin
  case Button of
    TMouseButton.mbLeft: inherited;
    // TMouseButton.mbRight:showmessage('rechtsklick');
    TMouseButton.mbMiddle:;
  end;

end;

procedure Tformmain.vstBeforeCellPaint(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  CellPaintMode: TVTCellPaintMode; CellRect: TRect; var ContentRect: TRect);
var
  Data: PTreedata;
begin
  Data := vst.getnodedata(Node);
  if AnsiStartsText('Auftr', Data.FCaption) then begin
    TargetCanvas.Brush.Color := clWebBeige;
    TargetCanvas.FillRect(CellRect);
  end;
  if AnsiStartsText('Lieg', Data.FCaption) then begin
    TargetCanvas.Brush.Color := hellorange;
    TargetCanvas.FillRect(CellRect);
  end;
end;

procedure Tformmain.vstColumnClick(Sender: TBaseVirtualTree;
  Column: TColumnIndex; Shift: TShiftState);
var
  col                      : Integer;
  filename, helper, tmpfile: string;
  Node                     : PVirtualNode;
  Data                     : PTreedata;
  namelist                 : TStringList;
var
  lndata: PTreedata;
  ln    : PVirtualNode;
  lg    : string;
  notiz : String;
  avst  : TVirtualStringTree;
begin
  avst        := Sender as TVirtualStringTree;
  col         := avst.FocusedColumn;
  Node        := avst.focusedNode;
  focusedNode := Node;
  Data        := avst.getnodedata(Node);

  case col of
    1: // Notizen
      begin
        Node := avst.focusedNode;
        Data := avst.getnodedata(Node);
        ln   := Node;
        while not(ln = avst.RootNode) do begin
          ln     := ln.Parent;
          lndata := avst.getnodedata(ln);
          try lg := lndata.FCaption;
          except
          end;
        end;
        notiz                    := Data.fnotizen;
        formmemo.pheader.Caption := Format(formmemo.pheader.Caption, [lg]);
        formmemo.Memo1.Text      := Data.fnotizen;
        formmemo.Show;
      end;

    2, 3: // Wiedervorlage
      formwieder.Show;
    4: begin // Dokument öffnen
        if avst = vstsearch then formwieder.Show
        else opendocuments(Application.Handle, Data.fdateiname);
      end;
    5: // Auftrag erstellen
      begin
        if Sender = vstsearch then begin
          opendocuments(Application.Handle, Data.fdateiname);
          exit;
        end;

        showdata(Sender as TVirtualStringTree);
        pager.ActivePage := tabneuerauftrag;
        try zframe.fauftragsnummer.SetFocus;
        except

        end;
        paintallcontrols(peinzelauftr, dunkelblaufm);
        pneuerauftrag.Color := hellerblaufm;
      end;
  end;

end;

procedure Tformmain.vstColumnDblClick(Sender: TBaseVirtualTree;
  Column: TColumnIndex; Shift: TShiftState);
var
  Data, lndata: PTreedata;
  Node, ln    : PVirtualNode;
  lg          : string;
  notiz       : String;
  avst        : TVirtualStringTree;
begin
  avst        := Sender as TVirtualStringTree;
  Node        := avst.focusedNode;
  focusedNode := Node;
  case Column of

    1: // Notizen
      begin
        Node := avst.focusedNode;
        Data := avst.getnodedata(Node);
        ln   := Node;
        while not(ln = vst.RootNode) do begin
          ln     := ln.Parent;
          lndata := avst.getnodedata(ln);
          try lg := lndata.FCaption;
          except
          end;
        end;
        notiz                    := Data.fnotizen;
        formmemo.pheader.Caption := Format(formmemo.pheader.Caption, [lg]);
        formmemo.Memo1.Text      := Data.fnotizen;
        formmemo.Show;
      end;
    2: // Wiedervorlage
      formwieder.Show;
    4: // Wiedervorlage
      formwieder.Show;
    5: // Auftrag erstellen
      begin
        showdata(Sender as TVirtualStringTree);
        // pager.ActivePage := TZwischenablesung;
        tabneuerauftrag.Show;
      end;
  end;

end;

procedure Tformmain.vstCompareNodes(Sender: TBaseVirtualTree;
  Node1, Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
var
  Data1, Data2: PTreedata;
  b1, b2      : boolean;
  datedate    : TDate;
begin
  Data1 := Sender.getnodedata(Node1);
  Data2 := Sender.getnodedata(Node2);
  { TODO : Liegenschaft nach Datum sortieren }
  // if not((vst.HasChildren[Node1]) and not(vst.HasChildren[Node2])) then
  Result := comparetext(Data1.fwiedervorl, Data2.fwiedervorl);
end;

procedure Tformmain.vstFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
var
  Data: PTreedata;
begin
  Data := vst.getnodedata(Node);
  if NOT assigned(Data) then exit;
  Data.FCaption := '';
end;

procedure Tformmain.vstGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
var
  Data      : PTreedata;
  vt        : TVirtualStringTree;
  startttext: string;
begin

  vt   := Sender as TVirtualStringTree;
  Data := vt.getnodedata(Node);
  case Column of
    0: begin
        if vt.GetNodeLevel(Node) = 0 then begin
          CellText := 'Liegenschaft: ' + Data^.FCaption;
          exit;
        end;
        if Node.ChildCount > 0 then Begin
          if vt = vstanf then startttext    := 'angefordert: ';
          if vt = vstsearch then startttext := 'offen: ';
          if vt = vst then startttext       := 'unbearbeitet: ';

          CellText := startttext + Data^.FCaption;
          exit;
        End;
        if Node.ChildCount = 0 then
            CellText := 'Nutzernummer: ' + Data^.FCaption;

        // font.Style := font.Style + [fsStrikeOut];
      end;
    1: CellText       := Data^.fnotizen;
    2: CellText       := Data^.FColumn;
    3, 4, 5: CellText := '               ';
    // 4: CellText := '  ' + Data^.fwiedervorl;
  else;
  end;
end;

procedure Tformmain.vstHeaderClick(Sender: TVTHeader;
  HitInfo: TVTHeaderHitInfo);

begin

  if Sender.SortDirection = sdAscending then
      Sender.SortDirection  := sdDescending
  else Sender.SortDirection := sdAscending;

end;

procedure Tformmain.vstsearchAfterCellPaint(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  CellRect: TRect);

var
  Rect : TRect;
  Data : PTreedata;
  count: Integer;
  Left : Integer;
begin

  Data := Sender.getnodedata(Node);
  if not Data.fspecial then exit;
  Left := CellRect.Left + trunc(CellRect.Width / 2) - 5;
  case Column of
    3: begin

        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, Data.fimagewied);
      end;

    5: begin
        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, Data.fimagedok);
      end;
  end;
end;

procedure Tformmain.vstsearchColumnClick(Sender: TBaseVirtualTree;
  Column: TColumnIndex; Shift: TShiftState);

var
  col                      : Integer;
  filename, helper, tmpfile: string;
  Node                     : PVirtualNode;
  Data                     : PTreedata;
  namelist                 : TStringList;
var
  lndata: PTreedata;
  ln    : PVirtualNode;
  lg    : string;
  notiz : String;
  avst  : TVirtualStringTree;
begin
  avst        := Sender as TVirtualStringTree;
  col         := avst.FocusedColumn;
  Node        := avst.focusedNode;
  focusedNode := Node;
  Data        := avst.getnodedata(Node);

  case col of
    1: // Notizen
      begin
        Node := avst.focusedNode;
        Data := avst.getnodedata(Node);
        ln   := Node;
        while not(ln = avst.RootNode) do begin
          ln     := ln.Parent;
          lndata := avst.getnodedata(ln);
          try lg := lndata.FCaption;
          except
          end;
        end;
        notiz                    := Data.fnotizen;
        formmemo.pheader.Caption := Format(formmemo.pheader.Caption, [lg]);
        formmemo.Memo1.Text      := Data.fnotizen;
        formmemo.Show;
      end;

    2, 3: // Wiedervorlage
      formwieder.Show;
    5: begin // Dokument öffnen
        // if avst = vstsearch then formwieder.Show
        // else
        opendocuments(Application.Handle, Data.fdateiname);
      end;
    // 5: // Auftrag erstellen
    // begin
    // if Sender = vstsearch then begin
    // opendocuments(Application.Handle, Data.fdateiname);
    // exit;
    // end;
    //
    // showdata(Sender as TVirtualStringTree);
    // pager.ActivePage := tabneuerauftrag;
    // try zframe.fauftragsnummer.SetFocus;
    // except
    //
    // end;
    // paintallcontrols(peinzelauftr, dunkelblaufm);
    // pneuerauftrag.Color := hellerblaufm;
  end;
end;

procedure Tformmain.vstsearchGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  vt  : TVirtualStringTree;
  Data: PTreedata;

begin
  vstGetText(Sender, Node, Column, TextType, CellText);
  vt   := Sender as TVirtualStringTree;
  Data := vt.getnodedata(Node);
  case Column of
    5: begin
        // if Node.ChildCount = 0 then CellText := ' ' + Data^.fausführungstermin;
      end;
  end;
end;

procedure Tformmain.wizardButton1Click(Sender: TObject);
begin
  wizard.Button1Click(Sender);
end;

procedure Tformmain.wizardenutzernummerExit(Sender: TObject);
begin
  wizard.enutzernummerExit(Sender);
end;

procedure Tformmain.wizardNxButton1Click(Sender: TObject);
begin
  pager.ActivePageIndex := 0;
  with zframe do begin
    eliegenschaft.Text  := wizard.feliegenschaft.Text;
    ename1.Text         := wizard.ename1.Text;
    ename2.Text         := wizard.ename2.Text;
    eemail.Text         := wizard.enutzermail.Text;
    etelefon.Text       := wizard.enutzertel.Text;
    eort.Text           := wizard.eort.Text;
    eplz.Text           := wizard.eplz.Text;
    estrasse.Text       := wizard.estrasse.Text;
    enutzernummer.Text  := wizard.enutzernummer.Text;
    enutzername1.Text   := wizard.enutzername1.Text;
    enutzername2.Text   := wizard.enutzername2.Text;
    cbmonteur.ItemIndex := wizard.fcbmonteur.ItemIndex;
    // tp := wizard.NxTimePicker1;
    Notizen.Text := wizard.Memo1.Text;
  end;
end;

procedure Tformmain.wizardNxButton6Click(Sender: TObject);
begin
  wizard.NxButton6Click(Sender);

end;

procedure Tformmain.wizardNxButton7Click(Sender: TObject);
begin
  wizard.NxButton7Click(Sender);

end;

procedure Tformmain.zframeButton1Click(Sender: TObject);
begin
  zframe.Button1Click(Sender);

end;

procedure Tformmain.zframeeliegenschaftExit(Sender: TObject);
var
  dict: TDictionary<string, string>;
begin
  try
    zframe.eliegenschaftExit(Sender);
    dict := setliegenschaftsdaten(zframe.eliegenschaft.Text);
    setrightside(dict);
    setleftside(dict);
  except
  end;
  if length(zframe.eliegenschaft.Text) = 7 then
      Tframeshowauftr1.NxButton1.Enabled := true;
  Tframeshowauftr1.NxButton2.Enabled     := true;

  zframe.enutzernummer.Clear;
  zframeenutzernummerExit(zframe.enutzernummer);
end;

procedure Tformmain.zframeenutzernummerExit(Sender: TObject);

var
  dict                 : TDictionary<string, string>;
  hostname, wherestring: string;
  list                 : TStringList;
  database             : string;
  table                : string;
  name1, name2         : string;
begin
  if zframe.eliegenschaft.Text = '' then exit;

  zframe.enutzernummerExit(Sender);
  list := TStringList.Create;
  list.Add('WO5');
  list.Add('WO6');
  database := kuarchiv + getkundennummer + '\' + zframe.eliegenschaft.Text + '\'
    + zframe.eliegenschaft.Text + '.DB';
  wherestring := ' WHERE WO1 = ' + inttostr(strtoint((Sender as TfEdit).Text)) +
    ' AND WO0=' + QuotedStr('W');
  table := 'WO_TYP';

  if not assigned(formdb) then formdb := Tformdb.Create(nil);
  dict := formdb.getfromhn(database, table, wherestring, list);

  try
    name1 := dict.Items['WO5'];
    name2 := dict.Items['WO6'];
  except
    OutputDebugString('keine Namen');
    name1 := '';
    name2 := '';
  end;

  liegenschaftsdaten.ename1.Text := name1;
  liegenschaftsdaten.ename2.Text := name2;
  zframe.enutzername1.Text       := name1;
  zframe.enutzername2.Text       := name2;
end;

procedure Tformmain.zframeNxButton1Click(Sender: TObject);
begin
  zframe.nxbutton1click(Sender);
end;

procedure Tformmain.zframeNxButton2Click(Sender: TObject);
begin
  zframe.NxButton2Click(Sender);

end;

procedure Tformmain.babschließen(Sender: TObject);
var
  dict        : TDictionary<string, string>;
  ausf        : string;
  helperdate  : string;
  tmpdatei    : string;
  hostfilename: string;
  localfile   : string;
  err         : string;
begin
  with zframe do begin
    if cberreicht.Checked then err := '1'
    else err                       := '0';

    dict := TDictionary<string, string>.Create;
    ausf := getausführungsdatum;
    dict.Add(wiedervorlage, ausf);
    dict.Add(liegenschaft, eliegenschaft.Text);
    helperdate := formatDateOhneTrenner(dperstellungsdatum.Text);
    dict.Add(Posteingang, helperdate);
    helperdate := formatDateOhneTrenner(dpabrechnungsende.Text);
    dict.Add(abrechnungsende, helperdate);
    dict.Add(auftragstyp, cbauftragstyp.Items[cbauftragstyp.ItemIndex]);
    dict.Add(Nutzernummer, enutzernummer.Text);
    // dict.Add(Nutzername, enutzername1.Text);
    // dict.Add(Nutzername, enutzername2);
    dict.Add(nutzeremail, eemail.Text);
    dict.Add(Auftragsnummer, fauftragsnummer.Text);
    dict.Add(Telefonnummer, etelefon.Text);
    dict.Add(ableser, cbmonteur.Items[cbmonteur.ItemIndex]);
    dict.Add(uconstants.Notizen, Notizen.Text);
    dict.Add(sachbearbeiter, sb);
    dict.Add(Kundennummer, copy(eliegenschaft.Text, 1, 2));
    dict.Add(uconstants.auftragsid, inttostr(self.auftragsid));
    dict.Add('ausführungsdatum', formatDateOhneTrenner(ausf));
    hostfilename := 'scdb/' + createhostfilename(dict);
    dict.Add(dateiname, hostfilename);
    dict.Add(monteur, cbmonteur.Text);
    dict.Add(erreicht, err);
    // dict.Add(ausführungsdatum, getausführungstermin);
    dict.Add(ausführungsstart, getstart);
    dict.Add(ausführungsende, getende);
    dict.Add(informiert, cberreichtdetail.Text);
    // dict.Add(uconstants.Notizen, Notizen.Text);
    if not formdb.update(inttostr(auftragsid), table_anf,
      'AnforderungAbgeschlossen', '1') then
        showmessage('unbearbeiteter Auftrag lässt sich nicht updaten');

  end;
  if not formdb.insertintoauftrag(dict) then begin
    showmessage('Auftrag kann nicht in die Datenbank eingetragen werden');
    exit;
  end;
  // if not formdb.insertquery(table_aufträge, dict) then begin
  // showmessage('bullshit');
  // exit;
  // end;

  tmpdatei := createpdf;

  if (mrYes = MessageDlg('Auftrag drucken?', mtConfirmation, mbYesNo, 0)) then
  begin
    localfile := gettmpshowfile(ExtractFileName(tmpdatei));
    CopyFile(pchar(tmpdatei), pchar(localfile), false);
    ShellExecute(Application.Handle, 'open', pchar(localfile), nil, nil,
      sw_normal)
  end;
  FNpipeClient1.Send('SET ' + tmpdatei + '^' + hostfilename);
  zframe.resetpage;

end;

procedure Tformmain.zframePanel3Click(Sender: TObject);
begin
  showmessage('Rechnunung und co');
end;

// --------------------------------

function Tformmain.getausführungsdatum: string;
begin
  Result := zframe.getausführungstermin;
end;

// --------------------------------------
function Tformmain.getdatum(avst: TVirtualStringTree;
  ANode: PVirtualNode): string;
var
  Data: PTreedata;
begin
  Result := '';
  Data   := avst.getnodedata(ANode);
  while not(correctnn(Data.FCaption)) do begin
    OutputDebugString(pchar(Data.FCaption));
    ANode  := ANode.Parent;
    Data   := vst.getnodedata(ANode);
    Result := Data.FColumn;
  end;

end;
// ------------------------------------

function Tformmain.startplink: boolean;
begin
  procplink := Shellmyex
    (pchar(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
    'plink.exe -ssh 148.251.138.2 -l tiffy  -L 7777:127.0.0.1:3306 -pw maunze01'),
    sw_hide);
  Result := procplink > 0;
end;

procedure Tformmain.sheetunbearbeitetShow(Sender: TObject);
begin
  try
    vst.Visible       := true;
    vstsearch.Visible := true;
  except

  end;
end;

procedure Tformmain.Tframeshowauftr1NxButton2Click(Sender: TObject);
var
  query: string;
begin
  vst.Visible        := true;
  vstsearch.Visible  := false;
  pauftrerst.Enabled := true;
  psearchoff.Enabled := true;

  query := ' WHERE  AnforderungAbgeschlossen=0 AND ' + liegenschaft + ' =' +
    zframe.eliegenschaft.Text + ' ORDER BY ' + liegenschaft + ' asc;';
  getunbearbeitet(query);
  if Sender is TPanel then
      fillvst(formdb.queryanforderungen, vst, Sender as TPanel)
  else fillvst(formdb.queryanforderungen, vst, pua);
  pager.ActivePage  := sheetunbearbeitet;
  vstsearch.Visible := false;
end;

procedure Tformmain.Tframeshowauftr1NxButton1Click(Sender: TObject);
var
  query: string;
begin
  pauftrerst.Enabled := true;
  psearchoff.Enabled := true;
  query := ' WHERE ' + liegenschaft + ' =' + zframe.eliegenschaft.Text +
    ' ORDER BY ' + liegenschaft + ' asc;';
  getoffeneaufträge(query);
  vst.Visible := false;
  try
    if Sender is TPanel then begin
      fillvst(formdb.queryaufträge, vst, Sender as TPanel);
    end else begin
      fillvst(formdb.queryaufträge, vstsearch, pua);
    end;
    pager.ActivePage := sheetoffene;
    vst.Visible      := false;
  except showmessage('keine gültige Liegenschaft');
  end;
end;

end.
