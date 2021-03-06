program auftragsverwaltungvcl;

uses
  Vcl.Forms,
  umain in 'umain.pas' {formmain},
  uconstants in 'uconstants.pas',
  worker in 'worker.pas',
  uliegenschaftsdaten in 'uliegenschaftsdaten.pas' {frameliegenschaftsdaten: TFrame},
  ueinstellungen in 'ueinstellungen.pas' {Einstellungen},
  uframewizard in 'uframewizard.pas' {Frame1: TFrame},
  utreedata in 'utreedata.pas',
  vstbutton in 'vstbutton.pas',
  umemo in 'umemo.pas' {formmemo},
  uformwiedervor in 'uformwiedervor.pas' {formwieder},
  uauftragsinfo in 'uauftragsinfo.pas' {frameshowauftr: TFrame},
  DelphiZXIngQRCode in 'C:\Komponenten\qr\Source\DelphiZXIngQRCode.pas',
  uframeauftragsverwaltung in 'uframeauftragsverwaltung.pas' {frameauftragsdaten: TFrame},
  uftpconnector in '..\neueftpverbindung\uftpconnector.pas' {formftp},
  udbconnector in '..\dbconnector\udbconnector.pas' {formdb};

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tformmain, formmain);
  Application.CreateForm(TEinstellungen, Einstellungen);
  Application.CreateForm(Tformmemo, formmemo);
  Application.CreateForm(Tformwieder, formwieder);
  Application.CreateForm(Tformftp, formftp);
  Application.CreateForm(Tformdb, formdb);
  //  Application.CreateForm(Tformpdf, formpdf);
  Application.Run;
end.
