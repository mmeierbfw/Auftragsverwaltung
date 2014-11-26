unit uframeauftragsverwaltung;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, fEdit, NxEdit, fMemo, fComboBox, NxCollection,
  Vcl.Mask, umaskedit, System.Generics.collections, uutils, strutils,
  NxPageControl, NxControls6, NxEdit6, Vcl.ComCtrls, NxScrollControl, NxToolBox,
  NxLinkMenu, Vcl.Imaging.pngimage, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  NxColumns, NxDBColumns, uconstants, uexpandframe, Vcl.CheckLst;

type
  Tframeauftragsdaten = class(TFrame)
    pager: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    FlowPanel1: TFlowPanel;
    pliegenschaft: TPanel;
    Label7: TLabel;
    lauftragsnummer: TLabel;
    Label5: TLabel;
    eliegenschaft: TfEdit;
    fauftragsnummer: TfEdit;
    cbauftragstyp: TfComboBox;
    perreichbarkeit: TPanel;
    lnutzername: TLabel;
    lerreichbarkeit: TLabel;
    lemail: TLabel;
    ltelefon: TLabel;
    lnutzernr: TLabel;
    enutzername1: TfEdit;
    eemail: TfEdit;
    etelefon: TfEdit;
    enutzernummer: TfEdit;
    pnotizen: TPanel;
    lcharleft: TLabel;
    notizen: TfMemo;
    NxButton1: TNxButton;
    NxButton4: TNxButton;
    NxTabSheet2: TNxTabSheet;
    Label4: TLabel;
    perreichtdetails: TPanel;
    NxTabSheet3: TNxTabSheet;
    ptermindetails: TNxPanel;
    Label6: TLabel;
    Label15: TLabel;
    cberreichtdetail: TNxComboBox;
    Label16: TLabel;
    Label17: TLabel;
    dpabrechnungsende: TNxDatePicker;
    enutzername2: TfEdit;
    // cbableser: TfComboBox;
    cberreicht: TNxCheckBox;
    gridableser: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    ptermin: TPanel;
    pausführung: TPanel;
    ldayOM: TLabel;
    Lmy: TLabel;
    lvon: TLabel;
    pdivisor: TPanel;
    lausfürhung: TLabel;
    lmonteur: TLabel;
    Label13: TLabel;
    edate: TfEdit;
    Label14: TLabel;
    evon: TfEdit;
    Label3: TLabel;
    ebis: TfEdit;
    cbmonteur: TfComboBox;
    Label22: TLabel;
    showmonteurcal: TButton;
    cbableserdetail: TfComboBox;
    Label1: TLabel;
    mitHA: TCheckBox;
    externGeplant: TCheckBox;
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    eplz: TfEdit;
    eort: TfEdit;
    estrasse: TfEdit;
    ename1: TfEdit;
    Label12: TLabel;
    dperstellungsdatum: TNxDatePicker;
    Label2: TLabel;
    ename2: TfEdit;
    Button1: TButton;
    Label23: TLabel;
    edatemonteur: TfEdit;
    Label24: TLabel;
    Label25: TLabel;
    evonmonteur: TfEdit;
    ebismonteur: TfEdit;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxButton5: TNxButton;
    NxButton6: TNxButton;
    Panel3: TPanel;
    TFrame21: TFrame2;
    function calcleftchars: integer;

    procedure checkinput(var Key: Word);
    procedure notizenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure enutzernummerExit(Sender: TObject);
    procedure eliegenschaftExit(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure n1click(Sender: TObject);
    procedure nxdateChange(Sender: TObject);
    procedure mitHAClick(Sender: TObject);
    procedure tfdateExit(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure Back(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
    procedure tfvonExit(Sender: TObject);
    procedure tfbisExit(Sender: TObject);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure NxMonthCalendar2Change(Sender: TObject);
    procedure evonExit(Sender: TObject);
    procedure hpterminExpand(Sender: TObject; var Accept: Boolean);
    procedure hpterminCollapse(Sender: TObject; var Accept: Boolean);
    procedure cbableserChange(Sender: TObject);
    procedure notizenExit(Sender: TObject);
    procedure notizenChange(Sender: TObject);
    procedure mitHAMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure edateExit(Sender: TObject);
    procedure showcalClick(Sender: TObject);
    procedure showmonteurcalClick(Sender: TObject);
    procedure NxTabSheet3Show(Sender: TObject);
    procedure NxTabSheet3Hide(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure click(Sender: TObject);
    procedure TFrame21LinkLabel1Click(Sender: TObject);
    procedure TFrame21CheckListBox2Exit(Sender: TObject);
  private
    writtenchars: integer;
    // function getmonth(monthasstring: string): string;
    procedure createmonthdic;
  public

    function getmonthstring(mon: integer): string;
    function getstart: string;
    function getende: string;
    function getausführungstermin: string;
    procedure getinshape(panel: TPanel; shape: TShape);
    procedure resetpage;
    { Public-Deklarationen }
  end;

  TDictconstant = array [0 .. 11, 0 .. 1] of string;

const
  abschar                      = 612;
  dict_constant: TDictconstant = (('Jan', '1'), ('Feb', '2'), ('Mar', '3'),
    ('Apr', '4'),

    ('Mai', '5'), ('Jun', '6'),

    ('Jul', '7'), ('Aug', '8'), ('Sep', '9'), ('Okt', '10'), ('Nov', '11'),
    ('Dez', '12'));

const
  charlefttext = 'Noch %d Zeichen übrig';

var
  monthdict: TDictionary<string, string>;

implementation

uses umain;
{$R *.dfm}
{ Tframeauftragsdaten }

procedure Tframeauftragsdaten.n1click(Sender: TObject);
begin
  pager.ActivePage := NxTabSheet3;
  ptermindetails.show;
  ptermindetails.Align := TAlign.alClient;
  try edate.SetFocus;
  except
    ;

  end;
  // edate.Text := DateToStr(nxdate.SelectedDate);
end;

procedure Tframeauftragsdaten.mitHAClick(Sender: TObject);
var
  enable: Boolean;
begin
  enable := not(externGeplant.Checked or mitHA.Checked);
  pausführung.hide;
  evon.Enabled  := enable;
  ebis.Enabled  := enable;
  edate.Enabled := enable;
  if Sender = externGeplant then begin
    mitHA.Checked := false;
  end else begin
    externGeplant.Checked := false;
  end;

  // evon.font.color := clyellow;
  // if enable then begin
  // evon.font.color  := schriftgrau;
  // ebis.font.color  := schriftgrau;
  // edate.font.color := schriftgrau;
  // end else begin
  // evon.font.color  := clred;
  // ebis.font.color  := clInactiveCaption;
  // edate.font.color := clInactiveCaption;
  // end;
  // evon.update;
  // ebis.update;
  // edate.update;

end;

procedure Tframeauftragsdaten.mitHAMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: integer);
begin
  mitHAClick(Sender);
end;

procedure Tframeauftragsdaten.cbableserChange(Sender: TObject);
begin
  // hpmonteurtermine.Expanded := true;
end;

procedure Tframeauftragsdaten.createmonthdic;
var
  // dict: TDictionary<string, string>;
  index: integer;
begin
  if assigned(monthdict) then exit;
  monthdict := TDictionary<string, string>.create();
  for index := 0 to high(dict_constant) do begin
    monthdict.Add(dict_constant[index][0], dict_constant[index][1]);
  end;

end;

procedure Tframeauftragsdaten.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
var
  test: string;

begin

end;

procedure Tframeauftragsdaten.edateExit(Sender: TObject);
var
  datestr, resdate: string;
  jahr, monat, tag: Word;
  day             : integer;
  termin          : tdate;
begin
  datestr := (Sender as TfEdit).Text;
  if not((length(datestr) = 6) or (length(datestr) = 8)) then exit;
  if not numeric(datestr) then exit;

  resdate := Copy(datestr, 1, 2) + '.' + Copy(datestr, 3, 2) + '.' +
    Copy(datestr, 5, 2);
  if length(datestr) = 8 then resdate := resdate + Copy(datestr, 7, 2);

  (Sender as TfEdit).Text := resdate;

  // ldayOM.Caption :=

  termin := StrToDate(resdate);
  DecodeDate(termin, jahr, monat, tag);
  // day := int(tag);

  ldayOM.Caption := Format('%.2d', [tag]);
  Lmy.Caption    := getmonthstring(monat) + ' ' + inttostr(jahr);
end;

procedure Tframeauftragsdaten.eliegenschaftExit(Sender: TObject);
var
  len  : integer;
  lg   : string;
  kunde: string;
begin
  lg := eliegenschaft.Text;
  if length(lg) = 0 then exit;
  kunde := formmain.getkundennummer;
  if (length(lg) <= 5) then begin
    len                := length(kunde);
    len                := 7 - len;
    lg                 := kunde + StringOfChar('0', len - length(lg)) + lg;
    eliegenschaft.Text := lg;
  end;
end;

procedure Tframeauftragsdaten.enutzernummerExit(Sender: TObject);
begin
  // enutzernummer.Text := Format('%.3d', [strtoint(enutzerummer.text)]);
  try enutzernummer.Text    := Format('%.3d', [strtoint(enutzernummer.Text)]);
  except enutzernummer.Text := '';
  end;
end;

procedure Tframeauftragsdaten.evonExit(Sender: TObject);
var
  time: string;
begin
  time                          := (Sender as TfEdit).Text;
  if length(time) = 2 then time := time + '00';
  if not(length(time) = 4) then begin
    lvon.Caption := '';
    exit;
  end;
  time                    := Copy(time, 1, 2) + ':' + Copy(time, 3, 2);
  (Sender as TfEdit).Text := time;

  if (Sender as TfEdit) = ebis then begin
    if evon.Text > ebis.Text then begin
      showmessage('Endzeit muss nach Startzeit liegen');
      ebis.SetFocus;
    end;
  end;
  if (Sender as TfEdit) = evon then lvon.Caption := time
  else lvon.Caption                              := evon.Text + ' - ' + time;
end;

function Tframeauftragsdaten.getausführungstermin: string;
var
  d, m, Y: integer;
  helper : string;
begin
  // createmonthdic;
  // y      := strtoint(copy(Lmy.Caption, 7, 2));
  // helper := copy(Lmy.Caption, 1, 3);
  // m      := strtoint(monthdict.Items[helper]);
  // helper := ldayOM.Caption;
  // try d  := strtoint(helper);
  // except
  // if helper = '' then d                 := 0;
  // if AnsiStartsText('0', helper) then d := strtoint(copy(helper, 1, 1));
  //
  // end;
  // Result := inttostr(y) + '.' + Format('%.2d', [m]) + '.' +
  // Format('%0.2d', [d]);
  if not(externGeplant.Checked or mitHA.Checked) then Result := edate.Text;
  if externGeplant.Checked then Result := 'extern geplant';
  if mitHA.Checked then Result := 'mit Hauptablesung';

end;

function Tframeauftragsdaten.getende: string;
begin
  if not(externGeplant.Checked or mitHA.Checked) then Result := ebis.Text;
  if externGeplant.Checked then Result := 'extern geplant';
  if mitHA.Checked then Result := 'mit Hauptablesung';

end;

procedure Tframeauftragsdaten.getinshape(panel: TPanel; shape: TShape);
begin
  shape.Left   := panel.Left - 1;
  shape.Top    := panel.Top - 1;
  shape.Height := panel.Height + 2;
  shape.Width  := panel.Width + 2;
end;
//
// function Tframeauftragsdaten.getmonth(monthasstring: string): string;
// begin
// createmonthdic;
// monthdict.Keys.ToArray[mon]
// end;

function Tframeauftragsdaten.getmonthstring(mon: integer): string;
var
  // list: Tlist<string>;
  helper1, helper2: string;
  elem            : string;
begin
  createmonthdic;
  for elem in monthdict.Keys do begin
    if monthdict.Items[elem] = inttostr(mon) then begin
      Result := elem;
      exit;
    end;
  end;
end;

function Tframeauftragsdaten.getstart: string;
begin
  if not(externGeplant.Checked or mitHA.Checked) then Result := evon.Text;
  if externGeplant.Checked then Result := 'extern geplant';
  if mitHA.Checked then Result := 'mit Hauptablesung';

end;

procedure Tframeauftragsdaten.notizenChange(Sender: TObject);
var
  Key: Word;
begin
  Key := VK_RETURN;
  checkinput(Key);
end;

procedure Tframeauftragsdaten.notizenExit(Sender: TObject);
var
  Key: Word;
begin
  Key := VK_RETURN;
  checkinput(Key);
end;

// #######################################
procedure Tframeauftragsdaten.notizenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  charleft: integer;
begin
  checkinput(Key);
end;

// #######################################
procedure Tframeauftragsdaten.checkinput(var Key: Word);
var
  charleft: integer;
begin
  charleft := calcleftchars;
  if charleft <= 0 then begin
    if Key = VK_BACK then exit;
    notizen.font.color := clred;
    Key                := ord(#0);
    exit;
  end;
  notizen.font.color := notizen.FontColorOnEnter;

end;

procedure Tframeauftragsdaten.click(Sender: TObject);
begin
  pager.ActivePage := NxTabSheet1;
end;

// #######################
procedure Tframeauftragsdaten.Button1Click(Sender: TObject);
begin
  pager.ActivePage := NxTabSheet2;
end;

function Tframeauftragsdaten.calcleftchars: integer;
var
  charleft: integer;
begin
  writtenchars      := length(notizen.Lines.Text) - (2 * notizen.Lines.Count);
  Result            := abschar - writtenchars;
  lcharleft.Caption := Format(charlefttext, [Result]);

end;

// #########################
procedure Tframeauftragsdaten.NxButton1Click(Sender: TObject);
begin
  resetpage;
end;

procedure Tframeauftragsdaten.NxButton2Click(Sender: TObject);
var
  date            : tdate;
  jahr, monat, tag: Word;
begin
  if mitHA.Checked then begin
    ldayOM.Caption := '';

    Lmy.Caption      := '';
    lvon.Caption     := 'mit Hauptablesung';
    lvon.Alignment   := TAlignment.taRightJustify;
    lvon.Left        := 0;
    pager.ActivePage := NxTabSheet1;
    pdivisor.Visible := false;
    exit;
  end;
  if externGeplant.Checked then begin
    ldayOM.Caption   := '';
    Lmy.Caption      := '';
    lvon.Caption     := 'extern geplant';
    lvon.Alignment   := TAlignment.taRightJustify;
    pdivisor.Visible := false;
    lvon.Left        := 0;
    pager.ActivePage := NxTabSheet1;
    exit;
  end;
  lmonteur.Caption := cbmonteur.Text;
  createmonthdic;
  // date := nxdate.SelectedDate;
  DecodeDate(date, jahr, monat, tag);
  pdivisor.Visible := True;
  Lmy.Caption      := getmonthstring(monat) + ' ' + inttostr(jahr);
  ldayOM.Caption   := inttostr(tag);
  if ('' = evon.Text) then begin
    lvon.hide;
    // lbis.Visible := false;
    pager.ActivePage := NxTabSheet1;
    // ptermindetails.Hide;
    exit;
  end;

  if not(ebis.Text = '') then begin
    lvon.show;
    lvon.Caption   := evon.Text;
    lvon.Caption   := lvon.Caption + ' - ' + ebis.Text;
    lvon.Alignment := TAlignment.taLeftJustify;
    // lbis.Alignment := TAlignment.taLeftJustify;
    lvon.Left := 2;
    // lbis.Left := 67;
  end else begin

    // lbis.Alignment := TAlignment.taLeftJustify;
    lvon.Caption := evon.Text;
    // lbis.Visible := false;
    lvon.Left := 0;
  end;
  evon.Text        := evonmonteur.Text;
  ebis.Text        := ebismonteur.Text;
  edate.text            := edatemonteur.Text;
  pager.ActivePage := NxTabSheet1;
end;

procedure Tframeauftragsdaten.NxButton3Click(Sender: TObject);
begin
  pager.ActivePage := NxTabSheet1;
end;

procedure Tframeauftragsdaten.Back(Sender: TObject);
begin
  pager.ActivePage := NxTabSheet2;
  // perreichtdetails.Align:=TAlign.alClient;
  // perreichtdetails.show;
end;

procedure Tframeauftragsdaten.NxButton7Click(Sender: TObject);
begin
  pager.ActivePage := NxTabSheet1;
end;

procedure Tframeauftragsdaten.NxButton8Click(Sender: TObject);
begin
  // perreichtdetails.Hide;
  pager.ActivePage := NxTabSheet1;
end;

procedure Tframeauftragsdaten.nxdateChange(Sender: TObject);
begin
  // edate.Text := DateToStr(nxdate.SelectedDate);
  try evon.SetFocus;
  except

  end;
end;

procedure Tframeauftragsdaten.hpterminCollapse(Sender: TObject;
  var Accept: Boolean);
var
  hp: TNxHeaderPanel;
begin
  hp        := (Sender as TNxHeaderPanel);
  hp.Align  := TAlign.alNone;
  hp.Height := 20;
  hp.Width  := 29;
  hp.Left   := 19;

end;

procedure Tframeauftragsdaten.hpterminExpand(Sender: TObject;
  var Accept: Boolean);
begin
  (Sender as TNxHeaderPanel).Align := TAlign.alClient;
end;

procedure Tframeauftragsdaten.NxMonthCalendar2Change(Sender: TObject);
var
  datestring: string;
begin
  // datestring     := DateToStr(NxMonthCalendar2.SelectedDate);
  // datestring     := formatedatefrom4jto2j(datestring);
  // einfodate.Text := datestring;
end;

procedure Tframeauftragsdaten.NxTabSheet3Hide(Sender: TObject);
begin
  cbmonteur.ItemIndex := cbableserdetail.ItemIndex;
end;

procedure Tframeauftragsdaten.NxTabSheet3Show(Sender: TObject);
begin
  cbableserdetail.Items     := cbmonteur.Items;
  cbableserdetail.ItemIndex := cbmonteur.ItemIndex;
end;

procedure Tframeauftragsdaten.resetpage;
var
  todstring: string;
begin
  createmonthdic;
  eliegenschaft.Clear;
  fauftragsnummer.Clear;
  ename1.Clear;
  ename2.Clear;
  dperstellungsdatum.Clear;
  dpabrechnungsende.Clear;
  // cbauftragstyp.Clear;
  estrasse.Clear;
  eort.Clear;
  eplz.Clear;
  enutzernummer.Clear;
  enutzername1.Clear;
  enutzername2.Clear;
  eemail.Clear;
  etelefon.Clear;
  cbauftragstyp.Text := '';
  notizen.Clear;
  todstring      := DateToStr(now);
  ldayOM.Caption := Copy(todstring, 1, 2);
  Lmy.Caption    := getmonthstring(strtoint(Copy(todstring, 4, 2))) + ' ' +
    Copy(todstring, 7, 4);
  dperstellungsdatum.Text := DateToStr(now);

end;

procedure Tframeauftragsdaten.showcalClick(Sender: TObject);
begin
  // MonthCalendar1.Show;
end;

procedure Tframeauftragsdaten.showmonteurcalClick(Sender: TObject);
begin
  pager.ActivePage := NxTabSheet3;
end;

procedure Tframeauftragsdaten.tfbisExit(Sender: TObject);
begin
  if (Sender as tfmaskedit).Text = ' :  ' then exit;

end;

procedure Tframeauftragsdaten.tfdateExit(Sender: TObject);
var

  day, month, year: integer;
  Mask            : TMaskEdit;
  date            : string;
  valid           : Boolean;
begin
  valid := True;
  Mask  := Sender as TMaskEdit;
  date  := Mask.Text;
  if AnsiStartsText('  ', date) or AnsiStartsText('__', date) then exit;

  day   := strtoint(trimright(Copy(date, 0, 2)));
  month := strtoint(trimright(Copy(date, 4, 2)));
  year  := strtoint(trimright(Copy(date, 7, 4)));

  if (month < 1) or (month > 12) then begin
    valid := false;
  end;
  if day < 0 then begin
    valid := false;
  end;
  case month of
    1, 3, 5, 7, 8, 12: if day > 31 then begin
        valid := false;
      end;
    2: if day > 29 then begin
        valid := false;
      end;
    4, 6, 9, 11: if day > 30 then begin
        valid := false;
      end;
  end;
  if not valid then begin
    Mask.color := clred;
    try Mask.SetFocus;
    except

    end;
    Mask.SelStart := 0;
  end
  else Mask.color := clWhite;

  try
    // nxdate.date := strtodate(edate.Text);
    // nxdate.update;
  except
    ;
  end;

end;

procedure Tframeauftragsdaten.TFrame21CheckListBox2Exit(Sender: TObject);
begin
  TFrame21.CheckListBox2Exit(Sender);

end;

procedure Tframeauftragsdaten.TFrame21LinkLabel1Click(Sender: TObject);
begin
  TFrame21.LinkLabel1Click(Sender);

end;

procedure Tframeauftragsdaten.tfvonExit(Sender: TObject);
begin
  if (Sender as tfmaskedit).Text = '  .  ' then exit;

end;

end.
