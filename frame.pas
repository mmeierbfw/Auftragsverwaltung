unit frame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, NxCollection, NxScrollControl, NxLinkMenu;

type
  Tfrleft = class(TFrame)
    NxExpandPanel1: TNxExpandPanel;
    NxExpandPanel4: TNxExpandPanel;
    NxLinkLabel6: TNxLinkLabel;
    NxLinkLabel7: TNxLinkLabel;
    NxLinkLabel8: TNxLinkLabel;
    NxLinkLabel9: TNxLinkLabel;
    NxLinkLabel4: TNxLinkLabel;
    NxLinkLabel5: TNxLinkLabel;
    NxGroupHeader2: TNxGroupHeader;
    Panel1: TPanel;
    NxGroupHeader1: TNxGroupHeader;
    NxLinkLabel1: TNxLinkLabel;
    NxLinkLabel2: TNxLinkLabel;
    NxLinkLabel3: TNxLinkLabel;
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxExpandPanel1Expand(Sender: TObject);
    procedure NxExpandPanel4Expand(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

implementation

{$R *.dfm}

procedure Tfrleft.NxExpandPanel1Expand(Sender: TObject);
begin
  NxExpandPanel4.Expanded := false;
end;

procedure Tfrleft.NxExpandPanel4Expand(Sender: TObject);
begin
  NxExpandPanel1.Expanded := false;
end;

procedure Tfrleft.NxLinkLabel1Click(Sender: TObject);
var
  sen: TNxLinkLabel;
begin
  // ShowMessage('aloha');
  // sen := sender as TNxLinkLabel;
  // sen.Font.Style := [fsbold];

end;

end.
