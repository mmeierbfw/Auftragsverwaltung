unit umemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, NxCollection;

type
  Tformmemo = class(TForm)
    Memo1: TMemo;
    pheader: TPanel;
    Panel1: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  formmemo: Tformmemo;

implementation
 uses umain;
{$R *.dfm}

procedure Tformmemo.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  NxButton1.Visible := true;
  NxButton2.Visible := true;
end;

procedure Tformmemo.NxButton1Click(Sender: TObject);
begin
  formmain.savenotizchanges(Memo1.Text);
  self.Hide;
end;

procedure Tformmemo.NxButton2Click(Sender: TObject);
begin
self.Hide;
end;

end.
