unit utreedata;

interface

uses StdCtrls, winapi.windows;

type
  PTreeData = ^TTreeData;

  TTreeData = record
    fliegenschaft: String; // Liegenschaft
    fdatum: string;        // Datum
    fauftrtyp: string;
    fnutzer: string;
    fwiedervorl: string;
    fimagedok: integer;
    fimagewied: integer;
    fimageerst: integer;
    fimagenotiz: integer;
    fspecial: boolean;
    fnotizen: string;
    fdateiname: string;
    fid: integer;
    fausführungstermin: string;

    procedure clear;
  end;

implementation

procedure TTreeData.clear;
begin
  // with TTreeData do begin
  fliegenschaft      := '';
  fdatum             := '';
  fauftrtyp          := '';
  fnutzer            := '';
  fwiedervorl        := '';
  fimagedok          := -1;
  fimagewied         := -1;
  fimageerst         := -1;
  fimagenotiz        := -1;
  fspecial           := false;
  fnotizen           := '';
  fdateiname         := '';
  fid                := -1;
  fausführungstermin := '';
  // end;

end;

end.
