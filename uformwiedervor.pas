unit uformwiedervor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, umaskedit,
  Vcl.ExtCtrls, NxEdit, NxCollection, fMemo;

type
  Tformwieder = class(TForm)
    Panel1: TPanel;
    tfmaskedit1: tfmaskedit;
    Label1: TLabel;
    NxMonthCalendar1: TNxMonthCalendar;
    Panel2: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    fMemo1: TfMemo;
    procedure FormCreate(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxMonthCalendar1Change(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  formwieder: Tformwieder;

implementation

{$R *.dfm}
uses umain;

procedure Tformwieder.FormCreate(Sender: TObject);
begin
  tfmaskedit1.Text := DateToStr(now);
end;

procedure Tformwieder.NxButton1Click(Sender: TObject);
begin
  if fMemo1.Text = '' then begin showmessage('Ohne Begründung kann keine Wiedervorlage eingeführt werden.');
  fMemo1.SetFocus;
  exit;
  end;

  formmain.updatewiedervorlage(tfmaskedit1.Text);
  formmain.setbegr(fMemo1.Text);
  self.Hide;
end;

procedure Tformwieder.NxButton2Click(Sender: TObject);
begin
self.Hide;
end;

procedure Tformwieder.NxMonthCalendar1Change(Sender: TObject);
var str: string;
begin
    tfmaskedit1.Text := DateToStr(NxMonthCalendar1.selectedDate);
end;

end.
