unit uconstants;

interface

const

  inidatei     = 'auftraege.ini';
  programmname = 'auftragsverwaltung';

  table_aufträge     = 'aufträge';
  table_montagen     = 'montagen';
  table_reklamation  = 'reklamation';
  table_anf          = 'auftragsanforderung';
  table_unbearbeitet = 'unbearbeitete';
  database           = 'scandokumente';
  insertBegin        = '%s %s (';
  insertMiddle       = ') VALUES(';
  insertEnd          = ');';

  { Farben }
  // $00696969
  schriftgrau     = $00696969;
  disableeditgrau = $00E3DFD9;
  blau            = $00EBBE8E;
  hellgrau        = $00F1F1F1;
  neueshellblau   = $00FEEACF;
  neuestesellblau = $00FFFFF6;
  hellorange      = $00008EFF;
  dunkelblau      = $00745243;
  hellblau        = $00DEC7BC;
  grau            = $00DCDCDC;
  orange          = $004E87FF;
  hellbraun       = $005899AC;
  dunkelgrau      = $696969;
  dunkelblaufm    = $009C7248;
  hellerblaufm    = $005D3B1E;
  { für main-Formular }
  CSIDL_LOCAL_APPDATA    = $001C;
  CSIDL_COMMON_DOCUMENTS = $002E;
  CSIDL_COMMON_APPDATA   = $0023;

  { für Zwischenablesung }
  zwischenablesung   = 'zwischenablesung';
  montage            = 'montagen';
  sonstiges          = 'sonstiges';
  reklamation        = 'reklamation';
  Energieausweis     = 'energieausweis';
  Kostenermittlungen = 'Kostenermittlungen';
  nutzerlisten       = 'Nutzerlisten';
  vertrag            = 'Verträge';
  angebote           = 'Angebotsanfrage';
  auftrag            = 'Auftragsanforderung';
  vermerke           = 'Vermerke';
  wiedervorlage      = 'Wiedervorlage';
  Begrwiedervotl     = 'begrWiedervorl';
  auftragsdatei      = 'auftrag.txt';

  aenderungsdatei = 'aenderung.txt';

  kuarchiv         = '\\BFWKA\KUARCHIV\';
  name             = 'verwaltung.Name';
  tel              = 'verwaltung.Tel';
  fax              = 'verwaltung.Fax';
  email            = 'verwaltung.Email';
  auftragstyp      = 'Auftragstyp';
  liegenschaft     = 'Liegenschaft';
  Kundennummer     = 'Kundennummer';
  Posteingang      = 'Posteingang';
  Vertragsbeginn   = 'Vertragsbeginn';
  Ablesedatum      = 'Ablesedatum';
  Nutzernummer     = 'Nutzernummer';
  Nutzername       = 'Nutzername';
  Nutzername1      = 'Nutzername';
  nutzername2      = 'Nutzername2';
  erledigt         = 'erledigt';
  Notizen          = 'Notizen';
  Auftragsnummer   = 'Auftragsnummer';
  Monteur          = 'monteur';
  erreicht         = 'erreicht';
  ausführungsdatum = 'ausführungsdatum';
  ausführungsstart = 'ausführungsstart';
  ausführungsende  = 'ausführungsende';
  Dateiname        = 'Dateiname';
  id               = 'Dokumentid';
  sachbearbeiter   = 'Sachbearbeiter';
  datumgepr        = 'datumgeprueft';
  sammelordner     = 'Sammelordner';
  abrechnungsende  = 'Abrechnungsende';
  auftragsid       = 'auftragsanforderungsid';
  ableser          = 'Ablesedienst';
  nutzeremail      = 'Email';
  default_value    = '';

  { für Montage }
  Gueltigkeitsdatum = 'Gueltigkeitsdatum';
  Montagedatum      = 'Einbaudatum';

  nicherledigtstr = '0';
  erledigtstr     = '1';

  pseudoliegenschaft = 'Pseudoliegenschaft';
  strasse            = 'Strasse';
  ort                = 'Ort';
  plz                = 'PLZ';

  { Dokumentarten }
  ZwischenablsgINT  = 0;
  MontageINT        = 1;
  ReklamationINT    = 2;
  EnergieausweisINT = 3;
  KostenINT         = 4;
  Nutzerint         = 5;
  SonstigesInt      = 6;
  Vertragsint       = 7;
  Angebotsint       = 8;
  Auftragsint       = 9;

  { für Email }
  Absendername     = 'Absendername';
  Absenderadresse  = 'Absenderadresse';
  Empfängername    = 'Empfängername';
  Empfängeradresse = 'Empfängeradresse';
  Betref           = 'Betreff';

  { für anrufe }
  Anrufer       = 'Anrufer';
  Telefonnummer = 'Telefonnummer';

  // Variable für count(*) Aufrufe
  cntVar = 'cnt';

implementation

end.
