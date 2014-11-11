unit uwizard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, NxPageControl, fEdit, fComboBox, NxEdit,
  NxCollection;

type
  Twizard = class(TForm)
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    pager: TNxPageControl;
    tauftragsauswahl: TNxTabSheet;
    fcbauftrag: TfComboBox;
    Label2: TLabel;
    Label1: TLabel;
    tliegenschaft: TNxTabSheet;
    Label3: TLabel;
    feliegenschaft: TfEdit;
    teigentümer: TNxTabSheet;
    Label4: TLabel;
    Label9: TLabel;
    ename1: TfEdit;
    ename2: TfEdit;
    Label10: TLabel;
    estrasse: TfEdit;
    Label11: TLabel;
    Label12: TLabel;
    eplz: TfEdit;
    eort: TfEdit;
    tnutzer: TNxTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    enutzername1: TfEdit;
    enutzername2: TfEdit;
    enutzermail: TfEdit;
    enutzertel: TfEdit;
    tausführung: TNxTabSheet;
    Label13: TLabel;
    fcbmonteur: TfComboBox;
    NxMonthCalendar1: TNxMonthCalendar;
    NxTimePicker1: TNxTimePicker;
    Memo1: TMemo;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    NxButton5: TNxButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tauftragsauswahlShow(Sender: TObject);
    procedure tliegenschaftShow(Sender: TObject);
    procedure teigentümerShow(Sender: TObject);
    procedure tnutzerShow(Sender: TObject);
    procedure tausführungShow(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
  private
    procedure setpageindex(index: integer);
    procedure CMDialogKey(var Message: TCMDialogKey); message CM_DIALOGKEY;
  public
    { Public-Deklarationen }
  end;

var
  wizard: Twizard;

implementation

{$R *.dfm}

uses umain;
procedure Twizard.CMDialogKey(var Message: TCMDialogKey);
begin
   if message.charcode <> vk_tab then begin
    inherited;
    exit;
  end;
  if ((ActiveControl = feliegenschaft) or (ActiveControl = fcbauftrag) or
    (ActiveControl = eort) or (ActiveControl = enutzertel) or
    (ActiveControl = NxTimePicker1)) then begin
    (FindComponent('Radiobutton' + (inttostr(pager.ActivePageIndex + 2)))
      as TRadioButton).Checked := true;
    pager.ActivePageIndex := pager.ActivePageIndex + 1;
    exit;
  end;
  inherited;
end;

procedure Twizard.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_tab then showmessage('tab');
end;

procedure Twizard.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #9) then begin
    Perform(CM_DIALOGKEY, vk_tab, 0);
  end;
end;

procedure Twizard.FormShow(Sender: TObject);
begin
  pager.ActivePageIndex := 0;
end;

procedure Twizard.NxButton1Click(Sender: TObject);
begin
  self.Hide;
  formmain.pager.ActivePageIndex := 1;

end;

procedure Twizard.NxButton5Click(Sender: TObject);
begin
  pager.ActivePageIndex := pager.ActivePageIndex + 1;
end;

procedure Twizard.RadioButton1Click(Sender: TObject);
begin
  setpageindex(0);
end;

procedure Twizard.RadioButton2Click(Sender: TObject);
begin
  setpageindex(1);
end;

procedure Twizard.RadioButton3Click(Sender: TObject);
begin
  setpageindex(2);
end;

procedure Twizard.RadioButton4Click(Sender: TObject);
begin
  setpageindex(3);
end;

procedure Twizard.RadioButton5Click(Sender: TObject);
begin
  setpageindex(4);
end;

procedure Twizard.setpageindex(index: integer);
begin
  pager.ActivePageIndex := index;
end;

procedure Twizard.tauftragsauswahlShow(Sender: TObject);
begin
  try fcbauftrag.SetFocus;
  except

  end;
end;

procedure Twizard.tausführungShow(Sender: TObject);
begin
  try fcbmonteur.SetFocus;
  except

  end;
end;

procedure Twizard.teigentümerShow(Sender: TObject);
begin
  try ename1.SetFocus;
  except

  end;
end;

procedure Twizard.tliegenschaftShow(Sender: TObject);
begin
  try feliegenschaft.SetFocus;
  except
  end;
end;

procedure Twizard.tnutzerShow(Sender: TObject);
begin
  try

      enutzername1.SetFocus;
  except

  end;
end;

end.
