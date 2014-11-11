program auftragsverwaltungvcl;

uses
  Vcl.Forms,
  umain in 'umain.pas' {formmain},
  udbconnector in '..\dbconnector\udbconnector.pas' {formdb},
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
  DelphiZXIngQRCode in '..\..\Komponenten\qr\Source\DelphiZXIngQRCode.pas',
  umysqlcontroller in '..\Dokumentverwaltung\umysqlcontroller.pas',
  uframeauftragsverwaltung in '..\..\Embarcadero\Studio\Projekte\sources2208\uframeauftragsverwaltung.pas' {frameauftragsdaten: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tformmain, formmain);
  Application.CreateForm(Tformdb, formdb);
  Application.CreateForm(TEinstellungen, Einstellungen);
  Application.CreateForm(Tformmemo, formmemo);
  Application.CreateForm(Tformwieder, formwieder);
  //  Application.CreateForm(Tformpdf, formpdf);
  Application.Run;
end.
