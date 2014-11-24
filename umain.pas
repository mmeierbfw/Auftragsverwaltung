unit umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, uutils, umysqlcontroller, Vcl.Imaging.pngimage,
  uconstants, System.Generics.collections, Data.DB, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, NxCollection, NxSheet, NxToolBox,
  NxDBColumns, NxColumns, Vcl.Samples.Gauges, shellapi, NxPageControl, worker,
  ueinstellungen, uliegenschaftsdaten, fComboBox, fEdit, Vcl.Grids, Vcl.DBGrids,
  Vcl.ImgList, uframewizard, OverbyteIcsSslThrdLock, Vcl.ComCtrls, VirtualTrees,
  utreedata, vstbutton, strutils, uformwiedervor, uauftragsinfo,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, updfmain,
  OverbyteIcsWndControl, OverbyteIcsFtpCli, NPipe_Client, fNPipeClient, NxEdit,
  uframeauftragsverwaltung, frame;

type
  Tformmain = class(TForm)
    Gauge1: TGauge;
    ieinstellungen: TImage;
    ImageList1: TImageList;
    iueber: TImage;
    lkundennummer: TLabel;
    lsachbearbeiter: TLabel;
    pleft: TPanel;
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
    leftexpandables: Tfrleft;
    poa: TPanel;
    peinzelauftr: TPanel;
    pua: TPanel;
    pneuerauftrag: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    // zframe: Tframeauftragsdaten;
    // procedure auftr�geAnzeigen(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function nameserverstart: boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbauftr�geCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure mframeeliegenschaftExit(Sender: TObject);
    procedure showzwischenablesung(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ieinstellungenDblClick(Sender: TObject);
    procedure NxDBMemoColumn1ButtonClick(Sender: TObject);
    procedure dbauftr�geCellColoring(Sender: TObject; ACol, ARow: Integer;
      var CellColor, GridColor: TColor; CellState: TCellState);
    procedure dbauftr�geSortColumn(Sender: TObject; ACol: Integer;
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
    procedure babschlie�en(Sender: TObject);
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
    procedure FormResize(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure VorschauAnzeigen(Sender: TObject);

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

    function getnutzernamen(liegenschaft, nutzernummer: string): TStringList;
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
    procedure getoffeneauftr�ge(query: string);
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
    function getausf�hrungsdatum: string;
  public
    aufcon: tauftragskonstanten;
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

uses umemo, uftpconnector, udbconnector;
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

procedure Tformmain.Panel1Click(Sender: TObject);
begin

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
procedure Tformmain.dbauftr�geCellColoring(Sender: TObject; ACol, ARow: Integer;
  var CellColor, GridColor: TColor; CellState: TCellState);
begin
  if ARow > TNextDBGrid(Sender).LastVisibleRow then exit;

  if (csSelected in CellState) then exit;
  CellColor                        := $00E3DFD9;
  if ARow mod 2 = 0 then CellColor := clWhite;
end;

procedure Tformmain.dbauftr�geCellDblClick(Sender: TObject;
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
  // dat := pchar(dbauftr�ge.GetColumnByFieldName(dateiname).Field.AsString);
  // lg := pchar(dbauftr�ge.GetColumnByFieldName(liegenschaft).Field.AsString);
  // nn := dbauftr�ge.GetColumnByFieldName(Nutzernummer).Field.AsString;
  // auftragsid := dbauftr�ge.GetColumnByFieldName('id').Field.AsInteger;
  // pe := dbauftr�ge.GetColumnByFieldName(Posteingang).Field.AsString;
  // try nn := dbauftr�ge.GetColumnByFieldName(Nutzernummer).Field.AsString;
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

procedure Tformmain.dbauftr�geSortColumn(Sender: TObject; ACol: Integer;

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
  // if dbauftr�ge.Columns[ACol].FieldName = '' then exit;
  // if Ascending then DirectionStr := ' ASC '
  // else DirectionStr := ' DESC ';
  // wherestring := ' WHERE AnforderungAbgeschlossen=0  ORDER BY ' +
  // dbauftr�ge.Columns[ACol].FieldName + DirectionStr;
  // getauftr�ge(wherestring);

end;

procedure Tformmain.FNpipeClient1Error(Sender: TObject; AException: Exception);
begin
  showmessage('nicht verschickt');
end;

procedure Tformmain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  programmname: string;
begin
  programmname := 'Auftragsverwaltung';
  try Killprocess(procplink);
  except outputdebugstring('plink l�sst sich nicht killen');

  end;
  // // KillTask('plink.exe');
  // try DeleteFiles(gettmpfolder(programmname));
  // except outputdebugstring('Dateien sind noch ge�ffnet');
  //
  // end;
end;

procedure Tformmain.FormCreate(Sender: TObject);
var
  Width: Integer;
  i    : Integer;
begin

  aufcon := tauftragskonstanten.Create;
  {$IFDEF RELEASE }
  pager.ShowTabs        := False;
  zframe.pager.ShowTabs := False;
  {$ENDIF}
  // if not assigned(formdb) then
  // formdb := Tformdb.Create(self, aufcon);
  try
    with aufcon do begin
      formmain.Left := 0;
      formmain.Top  := 0;
      startplink;
      kn := readfromini(getinifile('Auftragsverwaltung', inidatei), 'Section',
        'Kundennummer', default_value);
      sb := readfromini(getinifile('Auftragsverwaltung', inidatei), 'Section',
        'Sachbearbeiter', default_value);
      if not(AnsiLowerCase(kn) = 'kein wert') then
          lkundennummer.Caption := lkundennummer.Caption + kn;
      if not(AnsiLowerCase(sb) = 'kein wert') then
          lsachbearbeiter.Caption := lsachbearbeiter.Caption + sb;
      pager.ActivePage            := NxTabSheet1;
      nameserverstart;
      if paramcount > 0 then executeparameter;
    end;
  finally aufcon.free;
  end;

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
  // try DeleteFiles(gettmpfolder('Auftragsverwaltung'));
  // except
  // //
  // end;
end;

procedure Tformmain.FormResize(Sender: TObject);
begin
  iueber.Left         := formmain.Width - 50;
  ieinstellungen.Left := iueber.Left - 40;
end;

procedure Tformmain.FormShow(Sender: TObject);
const
  database = 'verwaltung.ableser';
var
  list                  : TStringList;
  ds                    : TDataSet;
  mydate                : TDatetime;
  mymonth, myday, myyear: word;
  i                     : Integer;
  expp                  : TNxExpandPanel;
begin
  if not assigned(leftexpandables) then leftexpandables := Tfrleft.Create(self);
  for i := 1 to 4 do begin
    with leftexpandables do begin
      NxExpandPanel1.Expanded := False;
      NxExpandPanel4.Expanded := False;
      NxExpandPanel2.Expanded := False;
    end;
  end;
  // zframe.NxHeaderPanel1.Expanded := false;
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

  Tframeshowauftr1.NxButton1.enabled := False;
  Tframeshowauftr1.NxButton2.enabled := False;

  zframe.dperstellungsdatum.Text := formatedatefrom4jto2j(DateToStr(now));
  DecodeDate(now, myyear, mymonth, myday);
  zframe.ldayOM.Caption := Format('%.2d ', [myday]);
  zframe.Lmy.Caption := zframe.getmonthstring(mymonth) + ' ' + inttostr(myyear);
  // zframe.hptermin.Expanded := False;
  // zframe.nxdate.Date       := now;

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
  with aufcon do begin
    // getaf(formdb.queryanforderungen, table_anf, query);
    getaf(formdb.queryanforderungen, view_anforderungen, query);
  end;
end;

procedure Tformmain.getunbearbeitet(wherestring: string);
begin
  with aufcon do begin
    getaf(formdb.queryunbearbeitet, view_unbearbeitet, wherestring);
  end;
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
  while not(correctlg(Data.fliegenschaft)) do begin
    outputdebugstring(pchar(Data.fliegenschaft));
    ANode  := ANode.Parent;
    Data   := vst.getnodedata(ANode);
    Result := Data.fliegenschaft;
  end;

end;

// -------------------------------------------------
function Tformmain.getnutzernamen(liegenschaft, nutzernummer: string)
  : TStringList;
var
  list                        : TStringList;
  table, database, wherestring: string;
  dict                        : TDictionary<string, string>;
begin
  Result := TStringList.Create;
  list   := TStringList.Create;

  list.Add('WO5');
  list.Add('WO6');
  database := aufcon.kuarchiv + getkundennummer + '\' + liegenschaft + '\' +
    liegenschaft + '.DB';
  wherestring := ' WHERE WO1 = ' + nutzernummer + ' AND WO0=' + QuotedStr('W');
  table       := 'WO_TYP';

  if not assigned(formdb) then formdb := Tformdb.Create(nil);
  dict := formdb.getfromhn(database, table, wherestring, list);

  try
    Result.Add(dict.Items['WO5']);
    Result.Add(dict.Items['WO6']);
  except
    outputdebugstring('keine Namen');
    Result.Add(''); // mindestens zwei nutzernamen...
    Result.Add('');
  end;
end;

function Tformmain.getnutzernummer(avst: TVirtualStringTree;
  ANode: PVirtualNode): string;
var
  Data: PTreedata;
begin

  Data   := vst.getnodedata(ANode);
  Result := Data.fliegenschaft;
  while not(correctnn(Data.fliegenschaft)) do begin
    ANode  := ANode.Parent;
    Data   := vst.getnodedata(ANode);
    Result := Data.fliegenschaft;
  end;
end;

// -------------------------------------------------
procedure Tformmain.getoffeneauftr�ge(query: string);
begin
  with aufcon do begin
    // getaf(formdb.queryauftr�ge, table_auftr�ge, query);
    getaf(formdb.queryauftr�ge, view_auftraege, query);
  end;
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
  Result := Data.fliegenschaft;
  while not(correcttyp(Data.fliegenschaft)) do begin
    ANode  := ANode.Parent;
    Data   := vst.getnodedata(ANode);
    Result := Data.fliegenschaft;
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
  settext ab�ndern, "Liegenschaft", ... }

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
    showmessage('bitte eine Liegenschaft ausw�hlen');
    exit;
  end;
  Node   := vst.focusedNode;
  Data   := vst.getnodedata(Node);
  try lg := Data.fliegenschaft;
  except
  end;
  while not(correctlg(lg)) do begin
    Node   := Node.Parent;
    Data   := vst.getnodedata(Node);
    try lg := Data.fliegenschaft;
    except
    end;
    // if AnsiStartsText('lieg', LowerCase(lg)) then
  end;
  list := TStringList.Create;
  getoffeneauftr�ge(' WHERE liegenschaft = ' + lg + ' ORDER BY liegenschaft');
  vstsearch.Align  := TAlign.alBottom;
  vstsearch.Height := trunc((pauftr.Height / 2) - pmessage.Height);
  fillvst(formdb.queryauftr�ge, vstsearch, poa);
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
  // // Auftr�ge angeklickt
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
  with aufcon do begin
    avst := vstsearch;
    // paintallcontrols(peinzelauftr, dunkelblaufm);
    // (Sender as TPanel).Color := hellerblaufm;
    pager.ActivePage := sheetoffene;
    getoffeneauftr�ge(' ORDER BY liegenschaft asc');
    filloffene(formdb.queryauftr�ge, vstsearch);
    // fillvst(formdb.queryauftr�ge, vstsearch,nil);
    psearchoff.enabled := False;
    pauftrerst.enabled := False;
  end;

end;

procedure Tformmain.puaClick(Sender: TObject);
begin
  with aufcon do begin
    // paintallcontrols(peinzelauftr, dunkelblaufm);
    // (Sender as TPanel).Color := hellerblaufm;
    pager.ActivePage := sheetunbearbeitet;

    pauftrerst.enabled := true;
    psearchoff.enabled := true;
    { TODO : wieder r�ckg�ngig, ist keine anforderung!! }
    getunbearbeitet(' WHERE AnforderungAbgeschlossen=0 ORDER BY ' + liegenschaft
      + ' asc');
    if Sender is TPanel then
        fillvst(formdb.queryunbearbeitet, vst, Sender as TPanel)
    else fillvst(formdb.queryunbearbeitet, vst, pua);
    avst := vst;
  end;
end;

procedure Tformmain.pauftraggenerierenClick(Sender: TObject);
begin
  with aufcon do begin
    // paintallcontrols(peinzelauftr, dunkelblaufm);
    // (Sender as TPanel).Color := hellerblaufm;
    // wizard.pager.ShowTabs    := False;
    wizard.Show;
    wizard.pager.ActivePageIndex := 0;
    pager.ActivePage             := twizardsheet;
  end;
end;

procedure Tformmain.pneuerauftragDblClick(Sender: TObject);
begin
  try
    with aufcon do begin
      pager.ActivePage := tabneuerauftrag;
      // paintallcontrols(peinzelauftr, dunkelblaufm);
      // (Sender as TPanel).Color := hellerblaufm;
    end;
  except showmessage('bitte in 10 Sekunden erneut versuchen');
  end;
end;

procedure Tformmain.panforderungenClick(Sender: TObject);
begin
  //
  try
    with aufcon do begin
      // paintallcontrols(peinzelauftr, dunkelblaufm);
      // (Sender as TPanel).Color := hellerblaufm;
      pager.ActivePage := sheetanforderungen;

      pauftrerst.enabled := true;
      psearchoff.enabled := true;

      getanforderung(' WHERE AnforderungAbgeschlossen=0 ORDER BY ' +
        liegenschaft + ' asc');
      if Sender is TPanel then
          fillvst(formdb.queryanforderungen, vstanf, Sender as TPanel)
      else fillvst(formdb.queryanforderungen, vstanf, pua);
      // vstsearch.Visible := false;
      avst := vstanf;
    end;
  except showmessage('bitte in 10 Sekunden erneut versuchen');
  end;
end;

procedure Tformmain.resetliegenschaftsdaten;
begin
  with aufcon do begin
    liegenschaftsdaten.estrasse.Text := '';
    liegenschaftsdaten.eplz.Text     := '';
    liegenschaftsdaten.eort.Text     := '';
    liegenschaftsdaten.vermerke.Clear;
  end;
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

// #########################################
procedure Tformmain.savenotizchanges(neuenotiz: string);
var
  sql  : string;
  Data : PTreedata;
  Node : PVirtualNode;
  table: string;
begin
  with aufcon do begin
    if avst = vst then table       := table_unbearbeitet;
    if avst = vstsearch then table := table_auftrag;
    if avst = vstanf then table    := table_auf;

    Node := avst.focusedNode;
    Data := avst.getnodedata(Node);
    formdb.update(inttostr(Data.fid), table, Notizen, neuenotiz);
    Data.fnotizen := neuenotiz;
  end;
end;

// #########################################
function Tformmain.saveSettings(kn, sb: string): boolean;
begin
  self.kn := kn;
  self.sb := sb;
  writeToIni('Auftragsverwaltung', aufcon.inidatei, kn, sb);
  lsachbearbeiter.Caption := 'Sachbearbeiter: ' + sb;
  lkundennummer.Caption   := 'Kundennummer: ' + kn;
end;

// #########################################
procedure Tformmain.setbegr(begr: string);
var
  sql  : string;
  Data : PTreedata;
  Node : PVirtualNode;
  avst : TVirtualStringTree;
  table: string;
begin
  // with aufcon do begin
  // case pager.ActivePageIndex of
  // 1: begin
  // avst  := vstsearch;
  // table := table_auftr�ge;
  // end;
  // 2: begin
  // avst  := vst;
  // table := table_anf;
  // end;
  //
  // end;
  // Node := avst.focusedNode;
  // Data := avst.getnodedata(Node);
  // formdb.update(inttostr(Data.fid), table, Begrwiedervotl, begr);
  //
  // end;
end;

// #########################################
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

// #########################################
function Tformmain.setcursor(cr: Integer): boolean;
begin
  try Screen.Cursor := cr;
  except Result     := False;
  end;
  Result := true;
end;

// #########################################
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
  except outputdebugstring('keine Nutzernummer');

  end;
  // wizard.ename1.Text   := dict.Items['eigent1'];
  // wizard.ename2.Text   := dict.Items['eigent2'];
  // wizard.eort.Text     := dict.Items['eigort'];
  // wizard.eplz.Text     := dict.Items['eigplz'];
  // wizard.estrasse.Text := dict.Items['eigstr'];
end;

// #########################################
function Tformmain.setnode(avst: TVirtualStringTree; parNode: PVirtualNode;
  arecord: tTreedata): PVirtualNode;
var
  Data: PTreedata;
begin
  Result := avst.AddChild(parNode);
  Data   := avst.getnodedata(Result);
  avst.ValidateChildren(Result, False);
  Data^.fliegenschaft      := arecord.fliegenschaft;
  Data^.fdatum             := arecord.fdatum;
  Data^.fimagedok          := arecord.fimagedok;
  Data^.fimagewied         := arecord.fimagewied;
  Data^.fimageerst         := arecord.fimageerst;
  Data^.fspecial           := arecord.fspecial;
  Data^.fnotizen           := arecord.fnotizen;
  Data^.fdateiname         := arecord.fdateiname;
  Data^.fid                := arecord.fid;
  Data^.fausf�hrungstermin := arecord.fausf�hrungstermin;
  Data^.fwiedervorl        := arecord.fwiedervorl;
  Data^.fimagenotiz        := arecord.fimagenotiz;
  Data^.fauftrtyp          := arecord.fauftrtyp;
  Data^.fnutzer            := arecord.fnutzer;
end;

// #########################################
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

// #########################################
procedure Tformmain.setrightside(dict: TDictionary<string, string>);

begin

  resetliegenschaftsdaten;
  // if not((pager.ActivePageIndex = 0) or (pager.ActivePageIndex = 1)) then

  // liegenschaftsdaten.Parent := TZwischenablesung;
  // else liegenschaftsdaten.Parent := pager.ActivePage;

  if (dict = nil) or (dict.count = 0) then begin
    liegenschaftsdaten.pdatenrechts.Caption :=
      'Diese Liegenschaft existiert nicht';
    with zframe do begin
      estrasse.Clear;
      eplz.Clear;
      eort.Clear;
      enutzername1.Clear;
      enutzername2.Clear;
      ename1.Clear;
      ename2.Clear;
    end;
    with liegenschaftsdaten do begin
      estrasse.Clear;
      ename1.Clear;
      ename2.Clear;
      eplz.Clear;
      eort.Clear;
      vermerke.Text := 'Diese Liegenschaft existiert nicht';
    end;
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

// #########################################
procedure Tformmain.doframestuff(frame: Tframeauftragsdaten);
begin
  with zframe do begin
    try eliegenschaft.SetFocus;
      // fauftragsnummer.SetFocus;
    except outputdebugstring('kann den Focus nicht erhalten');
    end;
  end;
  // Shape1.Top := zframe.Top -1;
  // Shape1.Left := zframe.left -1;
  // Shape1.Height := zframe.Height  + 2;
  // Shape1.Width := zframe.Width + 2;
end;

// #########################################
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
      tmpfile := gettmpfile('Auftragsverwaltung', ExtractFileName(helper));
      if not FileExists(tmpfile) then formftp.getFile(dns, tmpfile);
      ShellExecute(Handle, 'open', pchar(tmpfile), nil, nil, SW_SHOWNORMAL);
    end;
  end;

  Screen.Cursor := crdefault;
end;

// #########################################
procedure Tformmain.executeparameter;
var
  index   : Integer;
  param   : string;
  command : string;
  nnhelper: Integer;
  lg, Text: string;
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
  ausf�hrungsterm: string;
begin

  with aufcon do begin
    if formdb.queryauftr�ge.RecordCount = 0 then begin
      pmessage.Caption := 'keine Ergebnisse gefunden';
      pmessage.Visible := true;
      exit;
    end;
    pmessage.Visible := False;
    //
    avst.Clear;
    tmppestr          := '__';
    tmpauftrstr       := '__';
    avst.NodeDataSize := sizeof(tTreedata);
    avst.BeginUpdate;
    with formdb.queryauftr�ge do begin
      while not Eof do begin
        lg       := FieldByName(liegenschaft).AsString;
        pestr    := FieldByName(Posteingang).AsString;
        nnint    := FieldByName(nutzernummer).AsInteger;
        auftrstr := FieldByName(auftragstyp).AsString;
        dat      := FieldByName(dateiname).AsString;
        notz     := FieldByName(Notizen).AsString;
        // self.auftragsid := FieldByName('Id').AsInteger;
        wiedervorl      := FieldByName(wiedervorlage).AsString;
        ausf�hrungsterm := FieldByName('ausf�hrungstermin').AsString;
        if lg <> tmplg then begin
          // neuer Lieg.Knoten, wenn noch nicht vorhanden
          treedata.fliegenschaft := lg;
          treedata.fdatum        := '';
          treedata.fimagedok     := -1;
          treedata.fimagewied    := -1;
          treedata.fimageerst    := -1;
          treedata.fspecial      := False;
          treedata.fnotizen      := '';
          treedata.fwiedervorl   := '     ';
          liegnode               := setnode(avst, nil, treedata);
          treedata.fliegenschaft := auftrstr;
          treedata.fdatum        := '';
          treedata.fspecial      := False;
          treedata.fimagedok     := -1;
          treedata.fimagewied    := -1;
          treedata.fnotizen      := '';
          treedata.fwiedervorl   := '     ';
          aufnode                := setnode(avst, liegnode, treedata);
        end else if (auftrstr <> tmpauftrstr) then begin
          treedata.fliegenschaft := auftrstr;
          treedata.fdatum        := '';
          treedata.fspecial      := False;
          treedata.fimagedok     := -1;
          treedata.fimagewied    := -1;
          treedata.fnotizen      := '';
          treedata.fwiedervorl   := '     ';
          aufnode                := setnode(avst, liegnode, treedata);
        end;
        treedata.fliegenschaft := Format('%.3d', [nnint]);
        treedata.fdatum        := wiedervorl;
        treedata.fspecial      := true;
        treedata.fimagedok     := 0;
        treedata.fnotizen      := notz;
        treedata.fimagewied    := 2;
        treedata.fdateiname    := dat;
        treedata.fid           := self.auftragsid;
        treedata.fwiedervorl   := wiedervorl;
        if treedata.fdatum = '' then treedata.fdatum := pestr;

        treedata.fausf�hrungstermin := ausf�hrungsterm;
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
end;

procedure Tformmain.fillvst(query: TZQuery; avst: TVirtualStringTree;
  pan: TPanel);
var
  reklattrs    : TStringList;
  row, rowcount: Integer;
  i, j         : Integer;
  // CustomerDataObject: TCustomerNode;
  RootNode, liegnode, penode, nnnode, aufnode, dateinode: PVirtualNode;
  liegcount                                             : Integer;
  dict: TDictionary<string, string>;
  tmplg, lg  : string;
  tmpnn      : string;
  tmppe      : string;
  pestr      : string;
  nnstr      : string;
  auftrstr   : string;
  tmpauftrstr: string;

  tmppestr  : string;
  treedata  : tTreedata;
  nnint     : Integer;
  tmpnnint  : Integer;
  index     : Integer;
  dat       : string;
  notz      : string;
  wiedervorl: string;
  namen     : TStringList;
  nname     : string;
begin
  tmpnnint := -1;
  treedata.Clear;
  with aufcon do begin
    query.open;

    if query.RecordCount = 0 then begin
      pmessage.Caption := 'keine Ergebnisse gefunden';
      pmessage.Visible := true;
      exit;
    end;
    pmessage.Visible := False;
    //
    // avst.Visible := true;
    avst.Clear;
    tmppestr          := '__';
    tmpauftrstr       := '__';
    avst.NodeDataSize := sizeof(tTreedata);
    avst.BeginUpdate;
    with query do begin
      while not Eof do begin

        lg              := FieldByName(liegenschaft).AsString;
        pestr           := FieldByName(Posteingang).AsString;
        nnint           := FieldByName(nutzernummer).AsInteger;
        auftrstr        := Propercase(FieldByName(auftragstyp).AsString);
        dat             := FieldByName(dateiname).AsString;
        notz            := FieldByName(Notizen).AsString;
        self.auftragsid := FieldByName('id').AsInteger;
        wiedervorl      := FieldByName(wiedervorlage).AsString;
        namen           := getnutzernamen(lg, inttostr(nnint));
        nname           := namen[0];
        if not(namen[1] = '') then nname := nname + ',' + namen[1];

        if auftrstr = '' then auftrstr := 'Montage';

        treedata.Clear;
        treedata.fliegenschaft := lg;
        treedata.fdatum        := pestr;
        treedata.fid           := self.auftragsid;
        treedata.fimagedok     := -1;
        treedata.fimagewied    := -1;
        treedata.fimageerst    := -1;
        treedata.fspecial      := False;
        treedata.fnotizen      := notz;
        treedata.fwiedervorl   := wiedervorl;
        treedata.fnutzer       := Format('%.3d', [nnint]) + ': ' + nname;

        // if (not(auftrstr = tmpauftrstr)) or not(tmplg = lg) then
        treedata.fauftrtyp  := auftrstr;
        treedata.fdateiname := dat;
        if not(tmplg = lg) then begin
          // neuer Lieg.Knoten, wenn noch nicht vorhanden
          liegnode := setnode(avst, RootNode, treedata);
          if (auftrstr <> tmpauftrstr) or (tmplg <> lg) then begin
            // kein neuer Knoten und auftrag ungleich => neuer AUftragsknoten
            treedata.fauftrtyp := auftrstr;
            aufnode            := setnode(avst, liegnode, treedata);
          end

        end;
        if (tmplg = lg) then
          if (auftrstr <> tmpauftrstr) then begin
            treedata.fauftrtyp := auftrstr;
            aufnode            := setnode(avst, liegnode, treedata);
          end;

        // neuer Nutzerknoten
        treedata.fspecial              := true;
        nnnode                         := setnode(avst, aufnode, treedata);
        tmplg                          := lg;
        if auftrstr = '' then auftrstr := '__';
        tmpauftrstr                    := auftrstr;
        tmppestr                       := pestr;
        tmpnnint                       := nnint;
        Next;
      end;
    end;
    avst.EndUpdate;
    avst.FullExpand();
  end;
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
    // try nn := dbauftr�ge.GetColumnByFieldName(Nutzernummer).Field.AsString;
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
  // dat := pchar(dbauftr�ge.GetColumnByFieldName(dateiname).Field.AsString);
  // // die Dateinamen ermitteln
  dateilist                 := TStringList.Create;
  dateilist.Delimiter       := ';';
  dateilist.StrictDelimiter := true;
  dateilist.DelimitedText   := dat;

  // die Datei(en) lokal herunterladen
  for dat in dateilist do begin
    if dat = '' then continue;
    tmpfile := gettmpfile('Auftragsverwaltung', ExtractFileName(dat));
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
  with aufcon do begin
    case pager.ActivePageIndex of
      1: begin
          avst  := vstsearch;
          table := table_auftrag;
        end;
      2: begin
          avst  := vst;
          table := table_auf;
        end;

    end;
    Node := avst.focusedNode;
    Data := avst.getnodedata(Node);
    formdb.update(inttostr(Data.fid), table, wiedervorlage, wieddate);
    Data.fdatum := wieddate;
  end;
end;

procedure Tformmain.VorschauAnzeigen(Sender: TObject);
var
  tmpdatei : string;
  localfile: string;
begin
  tmpdatei  := createpdf(true);
//  localfile := gettmpshowfile('Auftragsverwaltung', ExtractFileName(tmpdatei));
  // CopyFile(pchar(tmpdatei), pchar(localfile), False);
  ShellExecute(Application.Handle, 'open', pchar(tmpdatei), nil, nil, sw_normal)
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
    1: begin // Notizen anzeigen als Symbol
        if length(Data.fnotizen) = 0 then exit;
        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, Data.fimagenotiz);
      end;
    3: begin // Wiedervorlage

        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, Data.fimagewied);
      end;
    4: begin
        // Dokument anzeigen
        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, Data.fimagedok);
      end;
    5: begin // Auftrag erstellen
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
  Rect   : TRect;
  Data   : PTreedata;
  count  : Integer;
  Left   : Integer;
  Notizen: string;
  image  : Integer;
begin

  Data := Sender.getnodedata(Node);
  if not Data.fspecial then exit;
  Left    := CellRect.Left + trunc(CellRect.Width / 2) - 5;
  Notizen := Data.fnotizen;
  image   := Data.fimagenotiz;
  case Column of
    // 1: begin // Notizen anzeigen als Symbol
    // if length(Notizen) = 0 then exit;
    // Rect := Sender.GetDisplayRect(Node, Column, true);
    // ImageList1.Draw(TargetCanvas, Left, CellRect.Top, Data.fimagenotiz);
    // end;
    5: begin

        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, 2);
      end;
    6: begin

        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, 0);
      end;
    7: begin
        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, 1);
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
    3: // Notizen
      begin
        Node := avst.focusedNode;
        Data := avst.getnodedata(Node);
        ln   := Node;
        while not(ln = avst.RootNode) do begin
          ln     := ln.Parent;
          lndata := avst.getnodedata(ln);
          try lg := lndata.fliegenschaft;
          except
          end;
        end;
        notiz                    := Data.fnotizen;
        formmemo.pheader.Caption := Format(formmemo.pheader.Caption, [lg]);
        formmemo.Memo1.Text      := Data.fnotizen;
        formmemo.Show;
      end;
    4, 5:
      // Wiedervorlage
      formwieder.Show;

    6: begin // Dokument �ffnen
        opendocuments(Application.Handle, Data.fdateiname);
      end;

    7: // Auftrag erstellen
      begin
        if Sender = vstsearch then exit;

        showdata(Sender as TVirtualStringTree);
        pager.ActivePage := tabneuerauftrag;
        try
          zframe.enutzernummer.SetFocus;
          zframe.fauftragsnummer.SetFocus;
        except

        end;
        paintallcontrols(peinzelauftr, aufcon.dunkelblaufm);
        // pneuerauftrag.Color := aufcon.hellerblaufm;
      end;
  end;

end;

procedure Tformmain.vstanfGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);

var
  Data      : PTreedata;
  vt        : TVirtualStringTree;
  startttext: string;
  nodelevel : Integer;
begin

  vt        := Sender as TVirtualStringTree;
  Data      := vt.getnodedata(Node);
  nodelevel := vt.GetNodeLevel(Node);
  case Column of
    0: begin
        if nodelevel = 0 then begin
          // CellText := 'Liegenschaft: ' + Data^.FCaption;
          CellText := Data^.fliegenschaft;
          exit;
        end;
        // if Node.ChildCount > 0 then Begin
        // if vt = vstanf then startttext    := 'angefordert: ';
        // if vt = vstsearch then startttext := 'offen: ';
        // if vt = vst then startttext       := 'unbearbeitet: ';
        // End;
        //
        // CellText := startttext + Data^.fliegenschaft;
        // exit;
        // End;
        // if Node.ChildCount = 0 then
        // CellText := 'Nutzernummer: ' + Data^.fliegenschaft;

        // // font.Style := font.Style + [fsStrikeOut];
        // end;
        // 1: CellText := Data^.fauftrtyp;
        // // 1: celltext := 'Montage';
        // 2: CellText       := Data^.fdatum;
        // 3, 4, 5: CellText := '               ';
        // // 4: CellText := '  ' + Data^.fwiedervorl;
      end;
    1: begin
        // if vt.GetNodeLevel(Node) = 0 then exit;
        if nodelevel = 1 then begin
          CellText := Data^.fauftrtyp;
        end;
      end;
    2: begin
        if nodelevel = 2 then begin
          // if Node.ChildCount = 0 then begin
          CellText := Data^.fnutzer;
        end;
      end;
    3: begin
        if nodelevel = 2 then CellText := Data^.fnotizen;
      end;
    4: if nodelevel = 2 then CellText := Data^.fdatum;

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
  vst : TVirtualStringTree;
begin
  vst := Sender as TVirtualStringTree;
  if vst.GetNodeLevel(Node) = 0 then begin
    TargetCanvas.Brush.Color := aufcon.hellgrau;
    TargetCanvas.FillRect(CellRect);
  end;

  Data := vst.getnodedata(Node);
  if AnsiStartsText('Auftr', Data.fliegenschaft) then begin
    TargetCanvas.Brush.Color := clWebBeige;
    TargetCanvas.FillRect(CellRect);
  end;
  if AnsiStartsText('Lieg', Data.fliegenschaft) then begin
    TargetCanvas.Brush.Color := aufcon.hellgrau;
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
          try lg := lndata.fliegenschaft;
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
    4: begin // Dokument �ffnen
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
        paintallcontrols(peinzelauftr, aufcon.dunkelblaufm);
        pneuerauftrag.Color := aufcon.hellerblaufm;
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
          try lg := lndata.fliegenschaft;
          except
          end;
        end;
        notiz                    := Data.fnotizen;
        formmemo.pheader.Caption := Format(formmemo.pheader.Caption, [lg]);
        formmemo.Memo1.Text      := Data.fnotizen;
        formmemo.Show;
      end;
    2:
      // Wiedervorlage
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
  Data.fliegenschaft := '';
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
          CellText := 'Liegenschaft: ' + Data^.fliegenschaft;
          exit;
        end;
        if Node.ChildCount > 0 then Begin
          if vt = vstanf then startttext    := 'angefordert: ';
          if vt = vstsearch then startttext := 'offen: ';
          if vt = vst then startttext       := 'unbearbeitet: ';

          CellText := startttext + Data^.fliegenschaft;
          exit;
        End;
        if Node.ChildCount = 0 then
            CellText := 'Nutzernummer: ' + Data^.fliegenschaft;

        // font.Style := font.Style + [fsStrikeOut];
      end;
    // 1: CellText       := Data^.fnotizen;
    2: CellText       := Data^.fdatum;
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
  Left := CellRect.Left;
  // + trunc(CellRect.Width / 2) - 5;
  case Column of
    3: begin

        Rect := Sender.GetDisplayRect(Node, Column, true);
        ImageList1.Draw(TargetCanvas, Left, CellRect.Top, Data.fimagewied);
      end;

    4: begin
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
          try lg := lndata.fliegenschaft;
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
    4: begin // Dokument �ffnen
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
        // if Node.ChildCount = 0 then CellText := ' ' + Data^.fausf�hrungstermin;
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
  // zframe.Button1Click(Sender);

end;

procedure Tformmain.zframeeliegenschaftExit(Sender: TObject);
var
  dict: TDictionary<string, string>;
begin
  try
    if zframe.eliegenschaft.Text = '' then exit;

    zframe.eliegenschaftExit(Sender);
    dict := setliegenschaftsdaten(zframe.eliegenschaft.Text);
    setrightside(dict);

  except
    on e: Exception do showmessage(e.Message);
  end;
  try setleftside(dict);
  except
    on e: Exception do showmessage(e.Message);

  end;
  if length(zframe.eliegenschaft.Text) = 7 then
      Tframeshowauftr1.NxButton1.enabled := true;
  Tframeshowauftr1.NxButton2.enabled     := true;
  //
  // zframe.enutzernummer.Clear;
  // zframeenutzernummerExit(zframe.enutzernummer);
end;

procedure Tformmain.zframeenutzernummerExit(Sender: TObject);

var
  dict                 : TDictionary<string, string>;
  hostname, wherestring: string;
  list                 : TStringList;
  database             : string;
  table                : string;
  // name1, name2         : string;
  namen: TStringList;
begin
  if ((zframe.enutzernummer.Text) = '') or (zframe.enutzernummer.Text = '000')
  then exit;
  if ((zframe.eliegenschaft.Text = '')) then exit;
  try
    zframe.enutzernummerExit(Sender);
    list  := TStringList.Create;
    namen := getnutzernamen(zframe.eliegenschaft.Text,
      zframe.enutzernummer.Text);

    liegenschaftsdaten.ename1.Text := namen[0];
    liegenschaftsdaten.ename2.Text := namen[1];
    zframe.enutzername1.Text       := namen[0];
    zframe.enutzername2.Text       := namen[1];
  except
    begin
      zframe.enutzername1.Clear;
      zframe.enutzername2.Clear;
      outputdebugstring(pchar('irgendwas passt da nicht'));
    end;

  end;
end;

procedure Tformmain.zframeNxButton1Click(Sender: TObject);
begin
  zframe.nxbutton1click(Sender);
end;

procedure Tformmain.zframeNxButton2Click(Sender: TObject);
begin
  zframe.NxButton2Click(Sender);

end;

procedure Tformmain.babschlie�en(Sender: TObject);
var
  dict        : TDictionary<string, string>;
  ausf        : string;
  helperdate  : string;
  tmpdatei    : string;
  hostfilename: string;
  localfile   : string;
  err         : string;
begin
  with aufcon do begin
    with zframe do begin
      if cberreicht.Checked then err := '1'
      else err                       := '0';

      dict := TDictionary<string, string>.Create;
      ausf := getausf�hrungsdatum;
      dict.Add(aufcon.wiedervorlage, ausf);
      dict.Add(liegenschaft, eliegenschaft.Text);
      helperdate := formatDateOhneTrenner(dperstellungsdatum.Text);
      dict.Add(Posteingang, helperdate);
      helperdate := formatDateOhneTrenner(dpabrechnungsende.Text);
      dict.Add(abrechnungsende, helperdate);
      dict.Add(auftragstyp, cbauftragstyp.Items[cbauftragstyp.ItemIndex]);
      dict.Add(nutzernummer, enutzernummer.Text);
      // dict.Add(Nutzername, enutzername1.Text);
      // dict.Add(Nutzername, enutzername2);
      dict.Add(nutzeremail, eemail.Text);
      dict.Add(Auftragsnummer, fauftragsnummer.Text);
      dict.Add(Telefonnummer, etelefon.Text);
      dict.Add(ableser, cbmonteur.Items[cbmonteur.ItemIndex]);
      dict.Add(aufcon.Notizen, Notizen.Text);
      dict.Add(sachbearbeiter, sb);
      dict.Add(Kundennummer, copy(eliegenschaft.Text, 1, 2));
      dict.Add(aufcon.auftragsid, inttostr(self.auftragsid));
      dict.Add(ausf�hrungsdatum, formatDateOhneTrenner(ausf));
      dict.Add(ausf�hrungsstart, evon.Text);
      dict.Add(ausf�hrungsende, ebis.Text);
      hostfilename := 'scdb/' + createhostfilename(dict);
      dict.Add(dateiname, hostfilename);
      outputdebugstring(pchar(cbmonteur.Text));
      dict.Add(monteur, cbmonteur.Text);
      dict.Add(erreicht, err);

      dict.Add(informiert, cberreichtdetail.Text);
      // dict.Add(uconstants.Notizen, Notizen.Text);
      if not(self.auftragsid > -1) then begin // da sein muss die aber schon
        if not formdb.update(inttostr(self.auftragsid), table_auf,
          'anforderungAbgeschlossen', '1') then
            showmessage('unbearbeiteter Auftrag l�sst sich nicht updaten');
      end;
    end;
    if not formdb.insertintoauftrag(dict) then begin
      showmessage('Auftrag kann nicht in die Datenbank eingetragen werden');
      exit;
    end;
    // if not formdb.insertquery(table_auftr�ge, dict) then begin
    // showmessage('bullshit');
    // exit;
    // end;

    tmpdatei := createpdf(False);

    if (mrYes = MessageDlg('Auftrag drucken?', mtConfirmation, mbYesNo, 0)) then
    begin
      localfile := gettmpshowfile('Auftragsverwaltung',
        ExtractFileName(tmpdatei));
      CopyFile(pchar(tmpdatei), pchar(localfile), False);
      ShellExecute(Application.Handle, 'open', pchar(localfile), nil, nil,
        sw_normal)
    end;
    FNpipeClient1.Send('SET ' + tmpdatei + '^' + hostfilename);
    zframe.resetpage;

  end;
end;

procedure Tformmain.zframePanel3Click(Sender: TObject);
begin
  showmessage('Rechnunung und co');
end;

// --------------------------------

function Tformmain.getausf�hrungsdatum: string;
begin
  Result := zframe.getausf�hrungstermin;
end;

// --------------------------------------
function Tformmain.getdatum(avst: TVirtualStringTree;
  ANode: PVirtualNode): string;
var
  Data: PTreedata;
begin
  Result := '';
  Data   := avst.getnodedata(ANode);
  while not(correctnn(Data.fliegenschaft)) do begin
    outputdebugstring(pchar(Data.fliegenschaft));
    ANode  := ANode.Parent;
    Data   := vst.getnodedata(ANode);
    Result := Data.fdatum;
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
  vstsearch.Visible  := False;
  pauftrerst.enabled := true;
  psearchoff.enabled := true;

  query := ' WHERE  AnforderungAbgeschlossen=0 AND ' + aufcon.liegenschaft +
    ' =' + zframe.eliegenschaft.Text + ' ORDER BY ' + aufcon.liegenschaft
    + ' asc;';
  getunbearbeitet(query);
  if Sender is TPanel then
      fillvst(formdb.queryanforderungen, vst, Sender as TPanel)
  else fillvst(formdb.queryanforderungen, vst, pua);
  pager.ActivePage  := sheetunbearbeitet;
  vstsearch.Visible := False;
end;

procedure Tformmain.Tframeshowauftr1NxButton1Click(Sender: TObject);
var
  query: string;
begin
  pauftrerst.enabled := true;
  psearchoff.enabled := true;
  query := ' WHERE ' + aufcon.liegenschaft + ' =' + zframe.eliegenschaft.Text +
    ' ORDER BY ' + aufcon.liegenschaft + ' asc;';
  getoffeneauftr�ge(query);
  vst.Visible := False;
  try
    if Sender is TPanel then begin
      fillvst(formdb.queryauftr�ge, vst, Sender as TPanel);
    end else begin
      fillvst(formdb.queryauftr�ge, vstsearch, pua);
    end;
    pager.ActivePage := sheetoffene;
    vst.Visible      := False;
  except showmessage('keine g�ltige Liegenschaft');
  end;
end;

end.
