object Frame2: TFrame2
  Left = 0
  Top = 0
  Width = 970
  Height = 570
  TabOrder = 0
  object lmonteur: TLabel
    Left = 25
    Top = 54
    Width = 40
    Height = 13
    Caption = 'Monteur'
    Layout = tlCenter
  end
  object NxGroupHeader1: TNxGroupHeader
    Left = 616
    Top = 24
    Width = 200
    Height = 22
    Caption = 'NxGroupHeader1'
  end
  object cbableser: TfComboBox
    Left = 84
    Top = 49
    Width = 233
    Height = 24
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'Monteur'
    TabOnEnter = False
    FontColorOnEnter = 10252872
    ColorFocused = 10252872
    ColorNotFocused = 11776947
  end
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 3
    Top = 96
    Width = 967
    Height = 353
    Caption = 'Monteurtermine'
    ColorScheme = csSilver
    DockSite = True
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    HeaderStyle = psFlat
    Options = [hoClickOnBodyExpand, hoColorSchemeFont, hoCollapseButton]
    TabOrder = 1
    FullWidth = 967
  end
  object NextDBGrid1: TNextDBGrid
    Left = 0
    Top = 0
    Width = 970
    Height = 570
    Align = alClient
    Caption = ''
    TabOrder = 2
    TabStop = True
    ExplicitLeft = 360
    ExplicitTop = 208
    ExplicitWidth = 250
    ExplicitHeight = 150
    object NxDBTextColumn1: TNxDBTextColumn
      DefaultWidth = 8
      Header.Caption = 'Liegenschaft'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coAutoSize, coPublicUsing, coShowTextFitHint]
      Position = 0
      SortType = stAlphabetic
      Width = 8
    end
    object NxDBTextColumn2: TNxDBTextColumn
      DefaultWidth = 0
      Header.Caption = 'Datum'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coPublicUsing, coShowTextFitHint]
      Position = 1
      SortType = stAlphabetic
      Width = 240
    end
    object NxDBTextColumn3: TNxDBTextColumn
      DefaultWidth = 0
      Header.Caption = 'von'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coPublicUsing, coShowTextFitHint]
      Position = 2
      SortType = stAlphabetic
      Width = 240
    end
    object NxDBTextColumn5: TNxDBTextColumn
      DefaultWidth = 0
      Header.Caption = 'bis'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coPublicUsing, coShowTextFitHint]
      Position = 3
      SortType = stAlphabetic
      Width = 240
    end
    object NxDBTextColumn4: TNxDBTextColumn
      DefaultWidth = 0
      Header.Caption = 'Auftragstyp'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coPublicUsing, coShowTextFitHint]
      Position = 4
      SortType = stAlphabetic
      Width = 240
    end
  end
end
