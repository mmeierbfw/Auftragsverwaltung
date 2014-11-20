unit utreedata;

interface

uses StdCtrls, winapi.windows;

type
  PTreeData = ^TTreeData;

  TTreeData = record
    FCaption: String;
    FColumn: string;
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
  end;

implementation

end.
