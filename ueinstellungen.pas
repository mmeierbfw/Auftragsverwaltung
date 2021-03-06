unit ueinstellungen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEinstellungen = class(TForm)
    Panel1: TPanel;
    ekundennummer: TLabeledEdit;
    esachbearbeiter: TLabeledEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Einstellungen: TEinstellungen;

implementation

uses umain;
{$R *.dfm}

procedure TEinstellungen.Button2Click(Sender: TObject);
begin
  formmain.savesettings(ekundennummer.Text, esachbearbeiter.Text);
  self.hide;
end;

procedure TEinstellungen.Button3Click(Sender: TObject);
begin
  self.hide;
end;

procedure TEinstellungen.FormCreate(Sender: TObject);
begin
  ekundennummer.Text   := formmain.getkundennummer;
  esachbearbeiter.Text := formmain.getsb;
end;

procedure TEinstellungen.FormShow(Sender: TObject);
begin
  ekundennummer.Text   := formmain.getkundennummer;
  esachbearbeiter.Text := formmain.getsb;
end;

end.
