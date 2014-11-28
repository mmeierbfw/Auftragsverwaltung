unit uframewizard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, NxEdit, fEdit, fComboBox, NxPageControl, NxCollection,
  Vcl.ExtCtrls, fMemo, Vcl.Mask, umaskedit, Vcl.ComCtrls, uutils;

type
  TFrame1 = class(TFrame)
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Panel2: TPanel;
    pager: TNxPageControl;
    tauftragsauswahl: TNxTabSheet;
    Label2: TLabel;
    fcbauftrag: TfComboBox;
    NxButton2: TNxButton;
    tliegenschaft: TNxTabSheet;
    Label3: TLabel;
    feliegenschaft: TfEdit;
    NxButton4: TNxButton;
    teigentümer: TNxTabSheet;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ename1: TfEdit;
    ename2: TfEdit;
    estrasse: TfEdit;
    eplz: TfEdit;
    eort: TfEdit;
    NxButton3: TNxButton;
    tnutzer: TNxTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    enutzername1: TfEdit;
    enutzername2: TfEdit;
    enutzermail: TfEdit;
    enutzertel: TfEdit;
    NxButton5: TNxButton;
    tausführung: TNxTabSheet;
    Label13: TLabel;
    fcbmonteur: TfComboBox;
    NxButton1: TNxButton;
    Label1: TLabel;
    lnutzernr: TLabel;
    enutzernummer: TfEdit;
    Memo1: TfMemo;
    Panel3: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    tfmaskedit1: tfmaskedit;
    Button1: TButton;
    Panel4: TPanel;
    NxMonthCalendar1: TNxMonthCalendar;
    Label17: TLabel;
    tfmaskedit2: tfmaskedit;
    Label18: TLabel;
    NxButton6: TNxButton;
    NxButton7: TNxButton;
    procedure NxButton5Click(Sender: TObject);
    procedure tauftragsauswahlShow(Sender: TObject);
    procedure tausführungShow(Sender: TObject);
    procedure teigentümerShow(Sender: TObject);
    procedure tliegenschaftShow(Sender: TObject);
    procedure tnutzerShow(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure enutzernummerExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure NxMonthCalendar1DblClick(Sender: TObject);
  private
    procedure setpage(index: integer);
  public
    { Public-Deklarationen }
  end;

implementation

{$R *.dfm}

procedure TFrame1.Button1Click(Sender: TObject);
begin
  panel4.Visible := true;
  panel4.BringToFront;
  panel4.Align := TAlign.alClient;
  Memo1.Visible := false;
  fcbmonteur.Visible := false;
end;

procedure TFrame1.enutzernummerExit(Sender: TObject);
var
  nunr: integer;
  nu: TObject;
begin
  try nunr := strtoint(enutzernummer.Text);
  except nunr := 0;
  end;

  enutzernummer.Text := Format('%.3d', [nunr]);
end;

procedure TFrame1.NxButton5Click(Sender: TObject);
begin
  pager.ActivePageIndex := pager.ActivePageIndex + 1;
end;

procedure TFrame1.NxButton6Click(Sender: TObject);
begin
  panel4.Visible := false;
  Memo1.Visible := true;
  fcbmonteur.Visible := true;
end;

procedure TFrame1.NxButton7Click(Sender: TObject);
begin
  panel4.Visible := false;
  Memo1.Visible := true;
  fcbmonteur.Visible := true;
end;

procedure TFrame1.NxMonthCalendar1DblClick(Sender: TObject);
var
  datestring: string;
begin
  datestring := DateToStr(NxMonthCalendar1.SelectedDate);
  datestring := formatdatefrom4jto2j(datestring);
  tfmaskedit2.Text := datestring;
end;

procedure TFrame1.RadioButton1Click(Sender: TObject);
begin
  setpage(0);
end;

procedure TFrame1.RadioButton2Click(Sender: TObject);
begin
  setpage(1);
end;

procedure TFrame1.RadioButton3Click(Sender: TObject);
begin
  setpage(2);
end;

procedure TFrame1.RadioButton4Click(Sender: TObject);
begin
  setpage(3);
end;

procedure TFrame1.RadioButton5Click(Sender: TObject);
begin
  setpage(4);
end;

procedure TFrame1.setpage(index: integer);
begin
  pager.ActivePageIndex := index;
end;

procedure TFrame1.tauftragsauswahlShow(Sender: TObject);
begin
  try
    fcbauftrag.SetFocus;
    RadioButton1.Checked := true;
  except

  end;
end;

procedure TFrame1.tausführungShow(Sender: TObject);
begin
  try
    fcbmonteur.SetFocus;
    RadioButton5.Checked := true;
  except

  end;
end;

procedure TFrame1.teigentümerShow(Sender: TObject);
begin
  try
    ename1.SetFocus;
    RadioButton3.Checked := true;
  except

  end;
end;

procedure TFrame1.tliegenschaftShow(Sender: TObject);
begin
  try
    feliegenschaft.SetFocus;
    RadioButton2.Checked := true;
  except

  end;
end;

procedure TFrame1.tnutzerShow(Sender: TObject);
begin
  try
    enutzernummer.SetFocus;
    RadioButton4.Checked := true;
  except

  end;
end;

end.
