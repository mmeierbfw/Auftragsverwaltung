object frleft: Tfrleft
  Left = 0
  Top = 0
  Width = 251
  Height = 635
  TabOrder = 0
  object NxExpandPanel1: TNxExpandPanel
    Left = 0
    Top = 0
    Width = 251
    Height = 246
    Align = alTop
    CollapsedText = 'Auftrag erzeugen'
    Color = clWhite
    ExpandedText = 'Auftrag erzeugen'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    OnExpand = NxExpandPanel1Expand
    FullHeight = 334
    object NxGroupHeader2: TNxGroupHeader
      Left = 0
      Top = 137
      Width = 251
      Height = 22
      Align = alTop
      Caption = 'Sammelauftrag erzeugen'
      ExplicitLeft = 22
      ExplicitTop = 145
      ExplicitWidth = 200
    end
    object NxLinkLabel4: TNxLinkLabel
      Left = 6
      Top = 173
      Width = 202
      Height = 15
      Caption = 'aus unbearbeiteten Auftr'#228'gen generieren'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clGray
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
    end
    object NxLinkLabel5: TNxLinkLabel
      Left = 6
      Top = 194
      Width = 190
      Height = 15
      Caption = 'aus Auftragsanforderungen generieren'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clGray
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
    end
    object Panel1: TPanel
      Left = 0
      Top = 39
      Width = 251
      Height = 98
      Align = alTop
      TabOrder = 2
      object NxGroupHeader1: TNxGroupHeader
        Left = 1
        Top = 1
        Width = 249
        Height = 22
        Align = alTop
        Caption = 'Einzelauftrag erzeugen'
        ExplicitLeft = 22
        ExplicitTop = 44
        ExplicitWidth = 200
      end
      object NxLinkLabel1: TNxLinkLabel
        Left = 6
        Top = 29
        Width = 112
        Height = 15
        Caption = 'neuen Auftrag anlegen'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HoverColor = clGray
        ParentColor = False
        ParentFont = False
        TextDistance = 2
        VertSpacing = 2
      end
      object NxLinkLabel2: TNxLinkLabel
        Left = 6
        Top = 71
        Width = 202
        Height = 15
        Caption = 'aus unbearbeiteten Auftr'#228'gen generieren'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HoverColor = clGray
        ParentColor = False
        ParentFont = False
        TextDistance = 2
        VertSpacing = 2
      end
      object NxLinkLabel3: TNxLinkLabel
        Left = 6
        Top = 50
        Width = 190
        Height = 15
        Caption = 'aus Auftragsanforderungen generieren'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HoverColor = clGray
        ParentColor = False
        ParentFont = False
        TextDistance = 2
        VertSpacing = 2
      end
    end
  end
  object NxExpandPanel4: TNxExpandPanel
    Left = 0
    Top = 246
    Width = 251
    Height = 157
    Align = alTop
    CollapsedText = 'Anzeige'
    Color = clWhite
    ExpandedText = 'Anzeige'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    OnExpand = NxExpandPanel4Expand
    FullHeight = 245
    object NxLinkLabel6: TNxLinkLabel
      Left = 22
      Top = 98
      Width = 82
      Height = 15
      Caption = 'offene Auftr'#228'ge '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clGray
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
    end
    object NxLinkLabel7: TNxLinkLabel
      Left = 22
      Top = 77
      Width = 115
      Height = 15
      Caption = 'unbearbeitete Auftr'#228'ge'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clGray
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
    end
    object NxLinkLabel8: TNxLinkLabel
      Left = 22
      Top = 56
      Width = 118
      Height = 15
      Caption = 'Auftragsanforderungen '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clGray
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
    end
    object NxLinkLabel9: TNxLinkLabel
      Left = 22
      Top = 119
      Width = 126
      Height = 15
      Caption = 'abgeschlossene Auftr'#228'ge '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clGray
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
    end
  end
end
