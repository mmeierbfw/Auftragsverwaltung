unit worker;

interface

uses Windows, System.generics.collections, strutils, sysutils, classes,
  udbconnector, uconstants, extctrls, graphics, uutils, shellapi, controls,
  shlobj, regularexpressions, updfmain, uftpconnector;

function setliegenschaftsdaten(liegenschaftst: string)
  : TDictionary<string, string>;
function setauftraggeberdaten(liegenschaft: string)
  : TDictionary<string, string>;
function getprefix(index: integer): string;
function setnutzerdaten(nutzernummer, kundennummer, liegenschaft: string)
  : TDictionary<string, string>;
function dateolderthan(age: integer; olddate: string): boolean;
procedure paintallcontrols(pparent: TPanel; col: TColor);

function getfilenames(const names: string): Tstringlist;
function opendocuments(handle: HWND; const names: string): integer;
function getfittingabrechnungsende(date: string): string;
function correctlg(lg: string): boolean;

function correctnn(nn: string): boolean;
function correcttyp(nn: string): boolean;
function paintauftrag(values: TDictionary<string, string>): boolean;
function createfilename(dict: TDictionary<string, string>): string;
function createhostfilename(dict: TDictionary<string, string>): string;
function createpdf: string;
function getzeitraum(von, bis: string): string;
// function getempfname(auftraggeber: string): string;
function getempfstrasse(name: string): string;
function getempfaengerdaten(name: string): TDictionary<string, string>;

implementation

uses umain;

function getempfaengerdaten(name: string): TDictionary<string, string>;
var
  values: Tstringlist;
begin
  values := Tstringlist.Create;
  values.Add('Strasse');
  values.Add('PLZ');
  values.Add('Ort');
  values.Add('Ansprech');
  Result := TDictionary<string, string>.Create;
  Result := formdb.get(formmain.aufcon.table_ableser, ' WHERE Name1 LIKE ' +
    quotedstr(name), values);
end;

(* hole Strasse aus db für Ableser "name" *)
function getempfstrasse(name: string): string;
begin
  // formdb.get(formmain.aufcon.table_ableser, ' WHERE Name1 LIKE ' + name,
  // Tstringlist.Create.Add('Strasse'));
end;

(* erzeuge aus Anfangs- un Enduhrzeit einen "von-bis" string *)
function getzeitraum(von, bis: string): string;
begin
  if not(von = '') then begin
    Result                       := von;
    if not(bis = '') then Result := Result + ' - ' + bis;
    exit;
  end;
  if not(bis = '') then Result := bis;
end;

function createpdf: string;
var
  dict     : TDictionary<string, string>;
  tmpdatei : string;
  empfdaten: TDictionary<string, string>;
begin

  with formmain.aufcon do begin
    dict := TDictionary<string, string>.Create();
    with formmain do begin
      empfdaten := getempfaengerdaten(zframe.cbmonteur.Text);

      dict.Add(auftragstyp, zframe.cbauftragstyp.Text);
      dict.Add(liegenschaft, zframe.eliegenschaft.Text);
      dict.Add(Posteingang, zframe.dperstellungsdatum.Text);
      dict.Add(ausführungsdatum, zframe.dperstellungsdatum.Text);
      dict.Add(uhrzeit, getzeitraum(zframe.evon.Text, zframe.ebis.Text));
      dict.Add(Auftragsnummer, zframe.fauftragsnummer.Text);
      dict.Add(Notizen, zframe.Notizen.Text);
      dict.Add(nutzernummer, zframe.enutzernummer.Text);
      dict.Add(Nutzername1, zframe.enutzername1.Text);
      dict.Add(nutzername2, zframe.enutzername2.Text);
      dict.Add(strasse, liegenschaftsdaten.estrasse.Text);
      dict.Add(plz, liegenschaftsdaten.eplz.Text);
      dict.Add(ort, liegenschaftsdaten.eort.Text);
      dict.Add(emailadr, zframe.eemail.Text);
      dict.Add(Telefonnummer, zframe.etelefon.Text);
      dict.Add(sachbearbeiter, getsb);
      dict.Add(abrechnungsende, zframe.dpabrechnungsende.Text);
      dict.Add(empfname, zframe.cbmonteur.Text);
      try dict.Add(empfstrasse, empfdaten.Items['Strasse']);
      except dict.Add(empfstrasse, '');
      end;
      try dict.Add(empfplz, empfdaten.Items['PLZ']);
      except dict.Add(empfplz, '');
      end;
      try dict.Add(empfort, empfdaten.Items['Ort']);
      except dict.Add(empfort, '');
      end;
      try dict.Add(empfansprech, empfdaten.Items['Ansprech']);
      except dict.Add(empfansprech, zframe.cbmonteur.text);
      end;
      tmpdatei := gettmpfile('Auftragsverwaltung', createfilename(dict));
      dict.Add('dateiname', tmpdatei);

      with liegenschaftsdaten do begin
        Tframeshowauftr1.lcopen.Caption       := '';
        Tframeshowauftr1.lcunbe.Caption       := '';
        if not assigned(formpdf) then formpdf := Tformpdf.Create(nil);
        Result                                := formpdf.createpdf(dict);
      end;
    end;
  end;
end;

// ##################################
function createhostfilename(dict: TDictionary<string, string>): string;
var
  lg, jahr, kn, typ: string;
  ausfterm         : string;
begin
  with formmain.aufcon do begin
    dict.TryGetValue(liegenschaft, lg);
    if lg = '' then lg := '0000000';
    dict.TryGetValue('ausführungstermin', ausfterm);
    if ausfterm = '' then jahr := '010100';
    jahr                       := '20' + copy(ausfterm, 5, 2);
    kn                         := copy(lg, 1, 2);
    if kn = '' then kn         := '00';

    dict.TryGetValue(auftragstyp, typ);
    if typ = '' then typ := '000';
    Result               := kn + '/' + lg + '/' + typ + '/' + jahr + '/';

    Result := Result + createfilename(dict);
  end;
end;

// ##############################

function createfilename(dict: TDictionary<string, string>): string;
var
  lg, nn, typ, jahr, idx: string;
  nowstring             : string;
begin
  with formmain.aufcon do begin
    dict.TryGetValue(formmain.aufcon.Auftragsnummer, idx);
    dict.TryGetValue(liegenschaft, lg);
    dict.TryGetValue(nutzernummer, nn);
    dict.TryGetValue(auftragstyp, typ);
    dict.TryGetValue('ausführungstermin', jahr);

    // if id = '' then id := '2014-1234';
    jahr                   := '20' + copy(jahr, 5, 4);
    if jahr = '' then jahr := '2010';
    if lg = '' then lg     := '0000000';
    if typ = '' then typ   := '000';
    datetimetostring(nowstring, 'yymddhhnnsszz', now);
    // nowstring := formatdateohnetrennertmj(nowstring);

    Result := lg + '_' + nn + '_' + typ + '_' + jahr + '_' + nowstring + '.pdf';
  end;
end;

// ################################################

function getfittingabrechnungsende(date: string): string;
var
  today, aktabrende, resultdate     : tdatetime;
  abryear                           : Word;
  abrmonth                          : Word;
  abrday                            : Word;
  nowyear                           : Word;
  nowmonth                          : Word;
  nowday                            : Word;
  resultday, resultmonth, resultyear: Word;
begin
  today      := now;
  aktabrende := StrToDate(date);
  DecodeDate(aktabrende, abryear, abrmonth, abrday);
  DecodeDate(today, nowyear, nowmonth, nowday);
  resultday   := abrday;
  resultmonth := abrmonth;
  resultyear  := nowyear;
  if nowmonth > abrmonth then inc(resultyear);
  resultdate := Encodedate(resultyear, resultmonth, resultday);
  Result     := formatdatetime('dd.mm.yy', resultdate);
end;


// -----------------------------------------------------

function opendocuments(handle: HWND; const names: string): integer;
var
  namelist                 : Tstringlist;
  filename, helper, tmpfile: string;
  se                       : integer;
begin
  namelist := getfilenames(names);
  for filename in namelist do begin
    helper  := ReplaceStr(filename, '/', '\');
    tmpfile := gettmpfile('Auftragsverwaltung', ExtractFileName(helper));
    if not assigned(formftp) then formftp := Tformftp.Create(nil);
    if not FileExists(tmpfile) then formftp.getFile(helper, tmpfile);
    Result := ShellExecute(handle, 'open', pchar(tmpfile), nil, nil, 1);
    // Result := Shellmyex('/C' + tmpfile, sw_normal);
  end;
end;

// -------------------------------------------------
function getfilenames(const names: string): Tstringlist;
begin
  Result               := Tstringlist.Create;
  Result.Delimiter     := ';';
  Result.DelimitedText := names;
end;

// ---------------------------------------------------
procedure paintallcontrols(pparent: TPanel; col: TColor);
var
  index: integer;
begin
  for index := 0 to pparent.ControlCount - 1 do begin
    (pparent.controls[index] as TPanel).Color := col;
  end;
end;

function dateolderthan(age: integer; olddate: string): boolean;
var
  old: TDate;
  dif: real;
begin
  try old := StrToDate(olddate);
  except
    Result := false;
    exit;
  end;
  dif    := date - StrToDate(olddate);
  Result := dif > age;
end;

function setnutzerdaten(nutzernummer, kundennummer, liegenschaft: string)
  : TDictionary<string, string>;
var
  dict                 : TDictionary<string, string>;
  hostname, wherestring: string;
  list                 : Tstringlist;
  db                   : string;
  table                : string;
begin
  with formmain.aufcon do begin
    list := Tstringlist.Create;
    list.Add('WO5');
    list.Add('WO6');
    db := kuarchiv + kundennummer + '\' + liegenschaft + '\' +
      liegenschaft + '.DB';
    wherestring := ' WHERE WO1 = ' + inttostr(strtoint(nutzernummer)) +
      ' AND WO0=' + quotedstr('W');
    table  := 'WO_TYP';
    dict   := formdb.getfromhn(database, table, wherestring, list);
    Result := dict;
  end;
end;

// ##############################
function getprefix(index: integer): string;
var
  res: string;
begin
  with formmain.aufcon do begin
    case index of
      ZwischenablsgINT: res := 'z';
      MontageINT: res       := 'm';

    end;
    Result := res;
  end;
end;

function setauftraggeberdaten(liegenschaft: string)
  : TDictionary<string, string>;
var
  wherestring, database: string;
  list                 : Tstringlist;
  dic                  : TDictionary<string, string>;
begin
  database :=
    '  verwaltung.anlagen left join verwaltung.ansprechpartner on anlagen.hsvid=ansprechpartner.hsvid';
  wherestring := ' WHERE liegnr= ' + liegenschaft;
  list        := Tstringlist.Create;
  list.Add('Name');
  list.Add('Tel');
  list.Add('Fax');
  list.Add('Email');

  with formdb do begin
    dic := get(queryauftraggeber, database, wherestring, list);
  end;
  Result := dic;

end;

function setliegenschaftsdaten(liegenschaftst: string)
  : TDictionary<string, string>;
var
  database, wherestring: string;
  list                 : Tstringlist;
  cua, coa             : string;
  res                  : TDictionary<string, string>;
  db                   : string;
begin
  with formmain.aufcon do begin
    res         := TDictionary<string, string>.Create;
    wherestring := ' WHERE liegnr =  ' + liegenschaftst;
    list        := Tstringlist.Create;
    list.Add('anlagen.plz');
    list.Add('anlagen.ort');
    list.Add('anlagen.str');
    list.Add('anlagen.eigplz');
    list.Add('anlagen.eigort');
    list.Add('anlagen.eigstr');
    list.Add('anlagen.eigent1');
    list.Add('anlagen.eigent2');
    list.Add('scandokumente.DANLSUC.DatAbr');
    // list.add('Databr');
    list.Add(formmain.aufcon.vermerke);
    db := 'verwaltung.anlagen join scandokumente.DANLSUC on verwaltung.anlagen.liegnr =scandokumente.DANLSUC.lienr';
    if not assigned(formdb) then formdb := Tformdb.Create(nil);
    Result := formdb.get(formdb.queryauftraggeber, db, wherestring, list);
    if not(Result.count = 0) then begin
      cua := inttostr(formdb.count('liegenschaft', view_anforderungen,
        ' WHERE liegenschaft = ' + liegenschaft +
        ' AND anforderungAbgeschlossen=0'));
      coa := inttostr(formdb.count('liegenschaft', view_auftraege,
        ' WHERE liegenschaft = ' + liegenschaft));
      Result.Add('offen', coa);
      Result.Add('unbearbeitet', cua);
    end;
  end;
end;

// ------------------------------------------------------------

function correctlg(lg: string): boolean;
begin
  Result := tregex.ismatch(lg, '^[0-9]{7}$');

end;

// ----------------------------------------------------------------

function correctnn(nn: string): boolean;
begin
  Result := tregex.ismatch(nn, '^[0-9]{3}$');
end;


// ----------------------------------------------------------------

function correcttyp(nn: string): boolean;
begin
  Result := (nn = 'Montage') or (nn = 'Gerätetausch') or
    (nn = 'Zwischenablesung') or (nn = 'Reklamation') or (nn = 'Nachablesung');
end;
// -------------------------------------

function paintauftrag(values: TDictionary<string, string>): boolean;
begin
  formpdf.createpdf(values);
end;

// ------------------------------------
end.
