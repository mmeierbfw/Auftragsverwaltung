program auftragsverwaltungvcl;

uses
  Vcl.Forms,
  umain in 'umain.pas' {formmain},
  udbconnector in '..\dbconnector\udbconnector.pas' {formdb},
  uconstants in 'uconstants.pas',
  uftpconnector in '..\neueftpverbindung\uftpconnector.pas' {formftp},
  uutils in '..\sources2208\uutils.pas',
  umysqlcontroller in '..\scanohnethread\umysqlcontroller.pas',
  uframeauftragsverwaltung in '..\sources2208\uframeauftragsverwaltung.pas' {frameauftragsdaten: TFrame},
  worker in 'worker.pas',
  uliegenschaftsdaten in 'uliegenschaftsdaten.pas' {frameliegenschaftsdaten: TFrame},
  ueinstellungen in 'ueinstellungen.pas' {Einstellungen},
  uframewizard in 'uframewizard.pas' {Frame1: TFrame},
  utreedata in 'utreedata.pas',
  vstbutton in 'vstbutton.pas',
  umemo in 'umemo.pas' {formmemo},
  uformwiedervor in 'uformwiedervor.pas' {formwieder},
  uauftragsinfo in 'uauftragsinfo.pas' {frameshowauftr: TFrame},
  constants in '..\MakePDF2\constants.pas',
  SynPdf in '..\MakePDF2\SynPdf.pas',
  SynCommons in '..\MakePDF2\SynCommons.pas',
  SynLZ in '..\MakePDF2\SynLZ.pas',
  SynGdiPlus in '..\MakePDF2\SynGdiPlus.pas',
  SynZip in '..\MakePDF2\SynZip.pas',
  SynCrypto in '..\MakePDF2\SynCrypto.pas',
  mORMotReport in '..\MakePDF2\mORMotReport.pas',
  DelphiZXIngQRCode in '..\..\Komponenten\qr\Source\DelphiZXIngQRCode.pas',
  updfmain in '..\MakePDF2\updfmain.pas' {formpdf};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tformmain, formmain);
  Application.CreateForm(Tformdb, formdb);
  Application.CreateForm(Tformftp, formftp);
  Application.CreateForm(TEinstellungen, Einstellungen);
  Application.CreateForm(Tformmemo, formmemo);
  Application.CreateForm(Tformwieder, formwieder);
  Application.CreateForm(Tformpdf, formpdf);
  Application.CreateForm(Tformpdf, formpdf);
  Application.Run;
end.
