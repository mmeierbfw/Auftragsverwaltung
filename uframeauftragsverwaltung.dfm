object frameauftragsdaten: Tframeauftragsdaten
  Left = 0
  Top = 0
  Width = 1070
  Height = 938
  Align = alLeft
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 6908265
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 1
  Padding.Top = 1
  Padding.Right = 1
  Padding.Bottom = 1
  ParentBackground = False
  ParentColor = False
  ParentFont = False
  TabOrder = 0
  ExplicitHeight = 304
  object pager: TNxPageControl
    AlignWithMargins = True
    Left = 4
    Top = 4
    Width = 1062
    Height = 930
    ActivePage = NxTabSheet1
    ActivePageIndex = 0
    Align = alClient
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    BackgroundColor = clWhite
    Margin = 0
    Options = [pgBoldActiveTab, pgCloseButton]
    Spacing = 0
    TabHeight = 17
    ExplicitHeight = 296
    object NxTabSheet1: TNxTabSheet
      Caption = 'NxTabSheet1'
      PageIndex = 0
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = 6908265
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      ExplicitHeight = 275
      object FlowPanel1: TFlowPanel
        Left = 0
        Top = 0
        Width = 1062
        Height = 909
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitHeight = 275
        object pliegenschaft: TPanel
          Left = 0
          Top = 0
          Width = 784
          Height = 153
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label7: TLabel
            Left = 32
            Top = 48
            Width = 61
            Height = 13
            Caption = 'Liegenschaft'
            Layout = tlCenter
          end
          object lauftragsnummer: TLabel
            Left = 32
            Top = 70
            Width = 80
            Height = 13
            Caption = 'Auftragsnummer'
            Layout = tlCenter
          end
          object Label5: TLabel
            Left = 32
            Top = 94
            Width = 58
            Height = 13
            Caption = 'Auftragstyp'
            Layout = tlCenter
          end
          object Label6: TLabel
            Left = 33
            Top = 24
            Width = 82
            Height = 16
            Caption = 'Stammdaten'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 33
            Top = 131
            Width = 87
            Height = 13
            Caption = 'Abrechnungsende'
            Layout = tlCenter
          end
          object eliegenschaft: TfEdit
            Left = 144
            Top = 48
            Width = 146
            Height = 23
            AutoSize = False
            BevelInner = bvLowered
            BevelKind = bkTile
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 7
            NumbersOnly = True
            ParentFont = False
            TabOrder = 0
            OnExit = eliegenschaftExit
            TabOnEnter = False
            FontColorOnEnter = 10252872
            ColorFocused = 10252872
            ColorNotFocused = 6908265
          end
          object fauftragsnummer: TfEdit
            Left = 144
            Top = 70
            Width = 146
            Height = 23
            AutoSize = False
            BevelInner = bvLowered
            BevelKind = bkTile
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabOnEnter = False
            FontColorOnEnter = 10252872
            ColorFocused = 10252872
            ColorNotFocused = 6908265
          end
          object cbauftragstyp: TfComboBox
            Left = 144
            Top = 92
            Width = 146
            Height = 24
            BevelInner = bvLowered
            BevelKind = bkTile
            BevelOuter = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = 'Auftragstyp'
            Items.Strings = (
              'Nachablesung'
              'Montage'
              'Ger'#228'tetausch')
            TabOnEnter = False
            FontColorOnEnter = 10252872
            ColorFocused = 10252872
            ColorNotFocused = 6908265
          end
          object dpabrechnungsende: TNxDatePicker
            Left = 144
            Top = 131
            Width = 146
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 3
            Text = '07.10.2014'
            HideFocus = False
            Date = 41919.000000000000000000
            NoneCaption = 'None'
            TodayCaption = 'Today'
          end
          object Panel1: TPanel
            Left = 291
            Top = 1
            Width = 525
            Height = 162
            TabOrder = 4
            object Label8: TLabel
              Left = 66
              Top = 24
              Width = 89
              Height = 16
              Caption = 'Auftraggeber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 67
              Top = 47
              Width = 54
              Height = 13
              Caption = 'Eigent'#252'mer'
              Layout = tlCenter
            end
            object Label10: TLabel
              Left = 66
              Top = 69
              Width = 32
              Height = 13
              Caption = 'Stra'#223'e'
              Layout = tlCenter
            end
            object Label11: TLabel
              Left = 96
              Top = 93
              Width = 17
              Height = 13
              Caption = 'PLZ'
              Layout = tlCenter
            end
            object Label12: TLabel
              Left = 66
              Top = 93
              Width = 16
              Height = 13
              Caption = 'Ort'
              Layout = tlCenter
            end
            object Label2: TLabel
              Left = 494
              Top = 6
              Width = 31
              Height = 13
              Caption = 'Datum'
              Layout = tlCenter
            end
            object eplz: TfEdit
              Left = 135
              Top = 89
              Width = 41
              Height = 23
              TabStop = False
              AutoSize = False
              BevelInner = bvLowered
              BevelKind = bkTile
              CharCase = ecUpperCase
              Color = 15656925
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6908265
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 0
              TabOnEnter = False
              FontColorOnEnter = 10252872
              ColorFocused = 10252872
              ColorNotFocused = 6908265
            end
            object eort: TfEdit
              Left = 175
              Top = 89
              Width = 306
              Height = 23
              TabStop = False
              AutoSize = False
              BevelInner = bvLowered
              BevelKind = bkTile
              CharCase = ecUpperCase
              Color = 15656925
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6908265
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              TabOnEnter = False
              FontColorOnEnter = 10252872
              ColorFocused = 10252872
              ColorNotFocused = 6908265
            end
            object estrasse: TfEdit
              Left = 135
              Top = 67
              Width = 346
              Height = 23
              TabStop = False
              AutoSize = False
              BevelInner = bvLowered
              BevelKind = bkTile
              CharCase = ecUpperCase
              Color = 15656925
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6908265
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              TabOnEnter = False
              FontColorOnEnter = 10252872
              ColorFocused = 10252872
              ColorNotFocused = 6908265
            end
            object ename1: TfEdit
              Left = 135
              Top = 46
              Width = 185
              Height = 23
              TabStop = False
              AutoSize = False
              BevelInner = bvLowered
              BevelKind = bkTile
              CharCase = ecUpperCase
              Color = 15656925
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6908265
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              TabOnEnter = False
              FontColorOnEnter = 10252872
              ColorFocused = 10252872
              ColorNotFocused = 6908265
            end
            object dperstellungsdatum: TNxDatePicker
              Left = 355
              Top = 3
              Width = 122
              Height = 21
              BevelOuter = bvNone
              Color = clWhite
              TabOrder = 4
              Text = '07.10.2014'
              HideFocus = False
              Date = 41919.000000000000000000
              NoneCaption = 'None'
              TodayCaption = 'Today'
            end
            object ename2: TfEdit
              Left = 318
              Top = 46
              Width = 163
              Height = 23
              TabStop = False
              AutoSize = False
              BevelInner = bvLowered
              BevelKind = bkTile
              CharCase = ecUpperCase
              Color = 15656925
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6908265
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              TabOnEnter = False
              FontColorOnEnter = 10252872
              ColorFocused = 10252872
              ColorNotFocused = 6908265
            end
          end
        end
        object perreichbarkeit: TPanel
          Left = 0
          Top = 153
          Width = 781
          Height = 159
          Margins.Left = 1
          Margins.Top = 0
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object lnutzername: TLabel
            Left = 33
            Top = 61
            Width = 58
            Height = 13
            Caption = 'Nutzername'
            Layout = tlCenter
          end
          object lerreichbarkeit: TLabel
            Left = 32
            Top = 16
            Width = 91
            Height = 16
            Caption = 'Erreichbarkeit'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lemail: TLabel
            Left = 32
            Top = 82
            Width = 24
            Height = 13
            Caption = 'Email'
            Layout = tlCenter
          end
          object ltelefon: TLabel
            Left = 32
            Top = 105
            Width = 36
            Height = 13
            Caption = 'Telefon'
            Layout = tlCenter
          end
          object lnutzernr: TLabel
            Left = 32
            Top = 39
            Width = 70
            Height = 13
            Caption = 'Nutzernummer'
            Layout = tlCenter
          end
          object Label15: TLabel
            Left = 32
            Top = 126
            Width = 87
            Height = 13
            Caption = 'Nutzer wurde per '
          end
          object Label16: TLabel
            Left = 270
            Top = 133
            Width = 46
            Height = 13
            Caption = 'informiert'
          end
          object enutzername1: TfEdit
            Left = 144
            Top = 60
            Width = 310
            Height = 23
            AutoSize = False
            BevelInner = bvLowered
            BevelKind = bkTile
            CharCase = ecUpperCase
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabOnEnter = False
            FontColorOnEnter = 10252872
            ColorFocused = 10252872
            ColorNotFocused = 6908265
          end
          object eemail: TfEdit
            Left = 144
            Top = 82
            Width = 620
            Height = 23
            AutoSize = False
            BevelInner = bvLowered
            BevelKind = bkTile
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            TabOnEnter = False
            FontColorOnEnter = 10252872
            ColorFocused = 10252872
            ColorNotFocused = 6908265
          end
          object etelefon: TfEdit
            Left = 144
            Top = 104
            Width = 620
            Height = 23
            AutoSize = False
            BevelInner = bvLowered
            BevelKind = bkTile
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            TabOnEnter = False
            FontColorOnEnter = 10252872
            ColorFocused = 10252872
            ColorNotFocused = 6908265
          end
          object enutzernummer: TfEdit
            Left = 144
            Top = 38
            Width = 34
            Height = 23
            AutoSize = False
            BevelInner = bvLowered
            BevelKind = bkTile
            CharCase = ecUpperCase
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 3
            NumbersOnly = True
            ParentFont = False
            TabOrder = 0
            OnExit = enutzernummerExit
            TabOnEnter = False
            FontColorOnEnter = 10252872
            ColorFocused = 10252872
            ColorNotFocused = 6908265
          end
          object cberreichtdetail: TNxComboBox
            Left = 144
            Top = 126
            Width = 120
            Height = 21
            BevelInner = bvNone
            TabOrder = 5
            HideFocus = False
            AutoCompleteDelay = 0
            Items.Strings = (
              'Email'
              'Anruf'
              'Brief'
              'Postkarte'
              'Hausaushang')
          end
          object enutzername2: TfEdit
            Left = 454
            Top = 60
            Width = 310
            Height = 23
            AutoSize = False
            BevelInner = bvLowered
            BevelKind = bkTile
            CharCase = ecUpperCase
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            TabOnEnter = False
            FontColorOnEnter = 10252872
            ColorFocused = 10252872
            ColorNotFocused = 6908265
          end
          object cberreicht: TNxCheckBox
            Left = 328
            Top = 130
            Width = 75
            Height = 21
            BorderStyle = bsNone
            TabOrder = 6
            Text = 'cberreicht'
            Caption = 'erreicht'
          end
        end
        object ptermin: TPanel
          Left = 0
          Top = 312
          Width = 889
          Height = 163
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object lausfürhung: TLabel
            Left = 32
            Top = 16
            Width = 125
            Height = 16
            Caption = 'Ausf'#252'hrungstermin'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lmonteur: TLabel
            Left = 760
            Top = 155
            Width = 3
            Height = 13
            BiDiMode = bdRightToLeft
            ParentBiDiMode = False
          end
          object Label13: TLabel
            Left = 23
            Top = 71
            Width = 31
            Height = 13
            Caption = 'Datum'
          end
          object Label14: TLabel
            Left = 23
            Top = 94
            Width = 21
            Height = 13
            Caption = 'von '
          end
          object Label3: TLabel
            Left = 55
            Top = 94
            Width = 13
            Height = 13
            Caption = 'bis'
          end
          object Label22: TLabel
            Left = 23
            Top = 114
            Width = 36
            Height = 13
            Caption = 'Ableser'
          end
          object Label1: TLabel
            Left = 367
            Top = 65
            Width = 155
            Height = 19
            Caption = 'keine Terminauswahl '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object pausführung: TPanel
            Left = 641
            Top = 16
            Width = 127
            Height = 132
            BevelEdges = []
            BevelInner = bvRaised
            BevelKind = bkTile
            BevelOuter = bvSpace
            BevelWidth = 2
            Caption = '  '
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object ldayOM: TLabel
              Left = 4
              Top = 4
              Width = 119
              Height = 58
              Align = alTop
              Alignment = taCenter
              Caption = '7'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6908265
              Font.Height = -48
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 31
            end
            object Lmy: TLabel
              Left = 4
              Top = 62
              Width = 119
              Height = 25
              Align = alTop
              Alignment = taCenter
              Caption = 'Aug 2014'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6908265
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 88
            end
            object lvon: TLabel
              AlignWithMargins = True
              Left = 7
              Top = 102
              Width = 113
              Height = 19
              Margins.Top = 5
              Align = alTop
              Alignment = taCenter
              Caption = '12:00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6908265
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitWidth = 42
            end
            object pdivisor: TPanel
              AlignWithMargins = True
              Left = 7
              Top = 92
              Width = 113
              Height = 2
              Margins.Top = 5
              Align = alTop
              TabOrder = 0
            end
          end
          object edate: TfEdit
            Left = 144
            Top = 67
            Width = 80
            Height = 23
            AutoSize = False
            BevelInner = bvLowered
            BevelKind = bkTile
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '12.04.14'
            TextHint = 'ttmmjj'
            OnExit = edateExit
            TabOnEnter = False
            FontColorOnEnter = 10252872
            ColorFocused = 10252872
            ColorNotFocused = 6908265
          end
          object evon: TfEdit
            Left = 144
            Top = 89
            Width = 40
            Height = 23
            AutoSize = False
            BevelInner = bvLowered
            BevelKind = bkTile
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '12:00'
            TextHint = 'ssmm'
            OnExit = evonExit
            TabOnEnter = False
            FontColorOnEnter = 10252872
            ColorFocused = 10252872
            ColorNotFocused = 6908265
          end
          object ebis: TfEdit
            Left = 184
            Top = 89
            Width = 40
            Height = 23
            AutoSize = False
            BevelInner = bvLowered
            BevelKind = bkTile
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '14:00'
            TextHint = 'ssmm'
            OnExit = evonExit
            TabOnEnter = False
            FontColorOnEnter = 10252872
            ColorFocused = 10252872
            ColorNotFocused = 6908265
          end
          object cbmonteur: TfComboBox
            Left = 144
            Top = 111
            Width = 193
            Height = 24
            BevelInner = bvLowered
            BevelKind = bkTile
            BevelOuter = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = 'Ableser'
            TabOnEnter = False
            FontColorOnEnter = 10252872
            ColorFocused = 10252872
            ColorNotFocused = 6908265
          end
          object showmonteurcal: TButton
            Left = 143
            Top = 141
            Width = 194
            Height = 23
            Caption = 'Monteurtermine anzeigen'
            TabOrder = 5
            OnClick = showmonteurcalClick
          end
          object mitHA: TCheckBox
            Left = 367
            Top = 110
            Width = 161
            Height = 17
            Caption = 'mit der Hauptablesung'
            TabOrder = 6
            OnClick = mitHAClick
            OnMouseDown = mitHAMouseDown
          end
          object externGeplant: TCheckBox
            Left = 367
            Top = 133
            Width = 161
            Height = 17
            Caption = 'extern geplant'
            TabOrder = 7
            OnClick = mitHAClick
          end
        end
        object pnotizen: TPanel
          Left = 0
          Top = 475
          Width = 784
          Height = 136
          Margins.Left = 1
          Margins.Top = 0
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          object lcharleft: TLabel
            Left = 650
            Top = 119
            Width = 122
            Height = 13
            Caption = 'noch 612 Zeichen m'#246'glich'
            Layout = tlCenter
          end
          object Label4: TLabel
            Left = 32
            Top = 16
            Width = 48
            Height = 16
            Caption = 'Notizen'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object notizen: TfMemo
            Left = 144
            Top = 16
            Width = 624
            Height = 97
            BevelInner = bvLowered
            BevelKind = bkTile
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
            OnChange = notizenChange
            OnExit = notizenExit
            OnKeyDown = notizenKeyDown
            FontColorOnEnter = 10252872
            ColorFocused = 10252872
            ColorNotFocused = 11776947
          end
          object NxButton1: TNxButton
            Left = 627
            Top = 261
            Width = 137
            Caption = 'Werte zur'#252'cksetzen'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = NxButton1Click
          end
          object NxButton4: TNxButton
            Left = 484
            Top = 261
            Width = 137
            Caption = 'abschlie'#223'en'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object prechnungsdetails: TPanel
          Left = 0
          Top = 611
          Width = 784
          Height = 174
          Margins.Left = 1
          Margins.Top = 0
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 4
          object Label19: TLabel
            Left = 32
            Top = 16
            Width = 114
            Height = 16
            Caption = 'Rechnungsdetails'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Panel2: TPanel
            Left = 142
            Top = 0
            Width = 642
            Height = 174
            Align = alRight
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            TabStop = True
            ExplicitHeight = 238
            object NxFlipPanel1: TNxFlipPanel
              Left = 1
              Top = 1
              Width = 640
              Height = 129
              Align = alTop
              AutoCollapse = True
              BackgroundColor = clWhite
              BackgroundStyle = bsTransparent
              Caption = 'Fakturierung Auftrag'
              CaptionCollapsed = 'Fakturierung Auftrag'
              CollapseGlyph.Data = {
                7A010000424D7A01000000000000360000002800000009000000090000000100
                2000000000004401000000000000000000000000000000000000604830406048
                30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
                90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
                30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D8C0FFF0D0C0FFD0B8
                A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D0
                C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
                30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFFFFF0
                F0FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF8FFFFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
                A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
              ColorScheme = csSilver
              ExpandGlyph.Data = {
                7A010000424D7A01000000000000360000002800000009000000090000000100
                2000000000004401000000000000000000000000000000000000604830406048
                30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
                90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
                30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FF604830FFF0D8C0FFF0D0C0FFD0B8
                A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FF604830FFF0D8D0FFF0D0
                C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
                30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFF6048
                30FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
                FFFF604830FFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
                A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
              HeaderColor = clGreen
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = 6908265
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              HeaderHeight = 23
              HeaderStyle = hsAuto
              TabStop = True
              OnEnter = NxFlipPanel1Enter
              OnExit = NxFlipPanel1Exit
              FullHeight = 0
              object bezahlt: TNxCheckBox
                Left = 0
                Top = 99
                Width = 640
                Height = 19
                Align = alTop
                AutoSize = True
                TabOrder = 0
                Text = 'NxCheckBox1'
                ShowHint = True
                Caption = 'bezahlt'
                Options = [coExpandActiveRect]
                ExplicitLeft = 16
                ExplicitTop = 22
                ExplicitWidth = 58
              end
              object gutschriftErstellen: TNxCheckBox
                Left = 0
                Top = 23
                Width = 640
                Height = 19
                Align = alTop
                AutoSize = True
                TabOrder = 1
                Text = 'NxCheckBox1'
                Caption = 'Gutschrift erstellen'
                ExplicitLeft = 24
                ExplicitTop = 22
                ExplicitWidth = 114
              end
              object ohneBerechnung: TNxCheckBox
                Left = 0
                Top = 42
                Width = 640
                Height = 19
                Align = alTop
                AutoSize = True
                TabOrder = 2
                Text = 'NxCheckBox1'
                Caption = 'ohne Berechnung'
                ExplicitLeft = 48
                ExplicitTop = 22
                ExplicitWidth = 107
              end
              object istKostenpflichtig: TNxCheckBox
                Left = 0
                Top = 61
                Width = 640
                Height = 19
                Align = alTop
                AutoSize = True
                TabOrder = 3
                Text = 'istKostenpflichtig'
                ShowHint = True
                Caption = 'ist kostenpflichtig'
                Options = [coExpandActiveRect]
                ExplicitLeft = 40
                ExplicitTop = 22
                ExplicitWidth = 106
              end
              object gutschriftErstellt: TNxCheckBox
                Left = 0
                Top = 80
                Width = 640
                Height = 19
                Align = alTop
                AutoSize = True
                TabOrder = 4
                Text = 'NxCheckBox1'
                Caption = 'Rg / Gutschrift erstellt'
                ExplicitLeft = 32
                ExplicitTop = 22
                ExplicitWidth = 129
              end
            end
            object NxFlipPanel2: TNxFlipPanel
              Left = 1
              Top = 130
              Width = 640
              Height = 147
              Align = alTop
              BackgroundColor = clWhite
              BackgroundStyle = bsTransparent
              Caption = 'Bezahlung Auftragnehmer'
              CaptionCollapsed = 'Bezahlung Auftragnehmer'
              CollapseGlyph.Data = {
                7A010000424D7A01000000000000360000002800000009000000090000000100
                2000000000004401000000000000000000000000000000000000604830406048
                30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
                90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
                30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D8C0FFF0D0C0FFD0B8
                A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D0
                C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
                30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFFFFF0
                F0FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF8FFFFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
                A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
              ColorScheme = csSilver
              ExpandGlyph.Data = {
                7A010000424D7A01000000000000360000002800000009000000090000000100
                2000000000004401000000000000000000000000000000000000604830406048
                30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
                90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
                30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FF604830FFF0D8C0FFF0D0C0FFD0B8
                A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FF604830FFF0D8D0FFF0D0
                C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
                30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFF6048
                30FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
                FFFF604830FFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
                A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
              HeaderColor = clGreen
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              HeaderHeight = 23
              HeaderStyle = hsWindowsLive
              ParentHeaderFont = False
              TabStop = True
              OnEnter = NxFlipPanel1Enter
              OnExit = NxFlipPanel1Exit
              FullHeight = 0
              object vollVergüten: TNxCheckBox
                Left = 0
                Top = 42
                Width = 640
                Height = 19
                Align = alTop
                AutoSize = True
                TabOrder = 0
                Text = 'NxCheckBox1'
                Caption = 'voll verg'#252'ten'
                ExplicitLeft = 16
                ExplicitTop = 34
                ExplicitWidth = 86
              end
              object nichtVergüten: TNxCheckBox
                Left = 0
                Top = 61
                Width = 640
                Height = 19
                Align = alTop
                AutoSize = True
                TabOrder = 2
                Text = 'NxCheckBox1'
                Caption = 'nicht verg'#252'ten'
                ExplicitLeft = 16
                ExplicitTop = 69
                ExplicitWidth = 93
              end
              object teilweiseVergüten: TNxCheckBox
                Left = 0
                Top = 80
                Width = 640
                Height = 19
                Align = alTop
                AutoSize = True
                TabOrder = 1
                Text = 'NxCheckBox1'
                Caption = 'teilweise verg'#252'ten'
                ExplicitLeft = 16
                ExplicitTop = 52
                ExplicitWidth = 111
              end
              object rechnungErhalten: TNxCheckBox
                Left = 0
                Top = 99
                Width = 640
                Height = 19
                Align = alTop
                AutoSize = True
                TabOrder = 3
                Text = 'NxCheckBox1'
                Caption = 'Rechnung erhalten'
                ExplicitLeft = 16
                ExplicitTop = 86
                ExplicitWidth = 114
              end
              object auftragnehmerBezahlt: TNxCheckBox
                Left = 0
                Top = 23
                Width = 640
                Height = 19
                Align = alTop
                AutoSize = True
                TabOrder = 4
                Text = 'NxCheckBox1'
                Caption = 'bezahlt'
                ExplicitLeft = 16
                ExplicitTop = 104
                ExplicitWidth = 58
              end
            end
            object NxFlipPanel3: TNxFlipPanel
              Left = 1
              Top = 277
              Width = 640
              Height = 109
              Align = alTop
              BackgroundColor = clWhite
              BackgroundStyle = bsTransparent
              Caption = 'Regress'
              CaptionCollapsed = 'Regress'
              CollapseGlyph.Data = {
                7A010000424D7A01000000000000360000002800000009000000090000000100
                2000000000004401000000000000000000000000000000000000604830406048
                30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
                90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
                30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D8C0FFF0D0C0FFD0B8
                A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D0
                C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
                30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFFFFF0
                F0FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF8FFFFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
                A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
              ColorScheme = csSilver
              ExpandGlyph.Data = {
                7A010000424D7A01000000000000360000002800000009000000090000000100
                2000000000004401000000000000000000000000000000000000604830406048
                30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
                90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
                30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FF604830FFF0D8C0FFF0D0C0FFD0B8
                A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FF604830FFF0D8D0FFF0D0
                C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
                30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFF6048
                30FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
                FFFF604830FFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
                A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
              HeaderColor = clGreen
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              HeaderHeight = 23
              HeaderStyle = hsWindowsLive
              ParentHeaderFont = False
              TabStop = True
              OnEnter = NxFlipPanel1Enter
              OnExit = NxFlipPanel1Exit
              ExplicitTop = 239
              FullHeight = 0
              object regresspflichtig: TNxCheckBox
                Left = 0
                Top = 42
                Width = 640
                Height = 19
                Align = alTop
                AutoSize = True
                TabOrder = 0
                Text = 'NxCheckBox1'
                Caption = 'Verursacher ist regresspflichtig'
                ExplicitLeft = 16
                ExplicitTop = 28
                ExplicitWidth = 171
              end
              object rechnungGestellt: TNxCheckBox
                Left = 0
                Top = 23
                Width = 640
                Height = 19
                Align = alTop
                AutoSize = True
                TabOrder = 1
                Text = 'NxCheckBox1'
                Caption = 'Rechnung gestellt'
                ExplicitLeft = 16
                ExplicitTop = 46
                ExplicitWidth = 109
              end
              object regressBezahlt: TNxCheckBox
                Left = 0
                Top = 61
                Width = 640
                Height = 19
                Align = alTop
                AutoSize = True
                TabOrder = 2
                Text = 'NxCheckBox1'
                Caption = 'bezahlt'
                ExplicitLeft = 16
                ExplicitTop = 64
                ExplicitWidth = 58
              end
            end
          end
        end
        object pbuttons: TPanel
          Left = 0
          Top = 785
          Width = 784
          Height = 136
          Margins.Left = 1
          Margins.Top = 0
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 5
          object NxButton7: TNxButton
            Left = 627
            Top = 4
            Width = 137
            Caption = 'Werte zur'#252'cksetzen'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = NxButton1Click
          end
          object NxButton8: TNxButton
            Left = 484
            Top = 4
            Width = 137
            Caption = 'abschlie'#223'en'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
      end
    end
    object NxTabSheet2: TNxTabSheet
      Caption = 'NxTabSheet2'
      PageIndex = 1
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = 6908265
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      ExplicitTop = 0
      ExplicitHeight = 929
      object perreichtdetails: TPanel
        Left = 0
        Top = 0
        Width = 1062
        Height = 909
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitHeight = 275
        object NxButton5: TNxButton
          Left = 589
          Top = 9
          Width = 75
          Caption = #252'bernehmen'
          TabOrder = 0
          OnClick = click
        end
        object NxButton6: TNxButton
          Left = 696
          Top = 9
          Width = 75
          Caption = 'verwerfen'
          TabOrder = 1
          OnClick = NxButton3Click
        end
        object Panel3: TPanel
          Left = 0
          Top = 167
          Width = 1062
          Height = 742
          Align = alBottom
          BorderStyle = bsSingle
          TabOrder = 2
          ExplicitTop = -467
          inline TFrame21: TFrame2
            Left = 1
            Top = 1
            Width = 1056
            Height = 587
            Align = alTop
            Color = clWhite
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitWidth = 1056
            inherited NxExpandPanel1: TNxExpandPanel
              Width = 1050
              Height = 154
              ExplicitWidth = 1050
              ExplicitHeight = 154
              FullHeight = 0
            end
            inherited NxExpandPanel2: TNxExpandPanel
              Width = 1050
              ExplicitWidth = 1050
              FullHeight = 0
            end
            inherited NxExpandPanel3: TNxExpandPanel
              Width = 1050
              ExplicitWidth = 1050
              FullHeight = 0
            end
          end
        end
      end
      inline framerechng: TFrame2
        Left = 66
        Top = 0
        Width = 996
        Height = 587
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        ExplicitLeft = 66
        ExplicitWidth = 996
        inherited NxExpandPanel1: TNxExpandPanel
          Width = 990
          ExplicitWidth = 990
          FullHeight = 0
        end
        inherited NxExpandPanel2: TNxExpandPanel
          Width = 990
          ExplicitWidth = 990
          FullHeight = 0
        end
        inherited NxExpandPanel3: TNxExpandPanel
          Width = 990
          ExplicitWidth = 990
          FullHeight = 0
        end
      end
    end
    object NxTabSheet3: TNxTabSheet
      Caption = 'NxTabSheet3'
      PageIndex = 2
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = 6908265
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      OnHide = NxTabSheet3Hide
      OnShow = NxTabSheet3Show
      ExplicitHeight = 275
      object ptermindetails: TNxPanel
        Left = 0
        Top = 0
        Width = 1062
        Height = 909
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        AdaptiveColors = False
        Align = alClient
        BorderPen.Color = 14933977
        BorderPen.Style = psClear
        Color = clWhite
        ColorScheme = csSilver2010
        UseDockManager = False
        FullRepaint = True
        ParentColor = False
        TabOrder = 0
        ExplicitHeight = 275
        object Label23: TLabel
          Left = 272
          Top = 22
          Width = 31
          Height = 13
          Caption = 'Datum'
        end
        object Label24: TLabel
          Left = 272
          Top = 45
          Width = 21
          Height = 13
          Caption = 'von '
        end
        object gridableser: TNextDBGrid
          Left = 23
          Top = 67
          Width = 740
          Height = 629
          Caption = ''
          TabOrder = 0
          TabStop = True
          object NxDBTextColumn1: TNxDBTextColumn
            DefaultWidth = 73
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Liegenschaft'
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = clWindowText
            Header.Font.Height = -11
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 0
            SortType = stAlphabetic
            Width = 73
          end
          object NxDBTextColumn2: TNxDBTextColumn
            DefaultWidth = 125
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Stra'#223'e'
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = clWindowText
            Header.Font.Height = -11
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 1
            SortType = stAlphabetic
            Width = 125
          end
          object NxDBTextColumn3: TNxDBTextColumn
            DefaultWidth = 120
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Ort'
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = clWindowText
            Header.Font.Height = -11
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 2
            SortType = stAlphabetic
            Width = 120
          end
          object NxDBTextColumn4: TNxDBTextColumn
            DefaultWidth = 126
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Ausf'#252'hrungsdatum'
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = clWindowText
            Header.Font.Height = -11
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 3
            SortType = stAlphabetic
            Width = 126
          end
          object NxDBTextColumn6: TNxDBTextColumn
            DefaultWidth = 120
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'von'
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = clWindowText
            Header.Font.Height = -11
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 4
            SortType = stAlphabetic
            Width = 120
          end
          object NxDBTextColumn7: TNxDBTextColumn
            DefaultWidth = 174
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'bis'
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = clWindowText
            Header.Font.Height = -11
            Header.Font.Name = 'Tahoma'
            Header.Font.Style = []
            Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 5
            SortType = stAlphabetic
            Width = 174
          end
        end
        object cbableserdetail: TfComboBox
          Left = 23
          Top = 21
          Width = 230
          Height = 24
          BevelInner = bvLowered
          BevelKind = bkTile
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'cbableserdetail'
          TabOnEnter = False
          FontColorOnEnter = 36607
          ColorFocused = 36607
          ColorNotFocused = clBlack
        end
        object edatemonteur: TfEdit
          Left = 393
          Top = 18
          Width = 80
          Height = 23
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkTile
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6908265
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '12.04.14'
          TextHint = 'ttmmjj'
          OnExit = edateExit
          TabOnEnter = False
          FontColorOnEnter = 10252872
          ColorFocused = 10252872
          ColorNotFocused = 6908265
        end
        object evonmonteur: TfEdit
          Left = 393
          Top = 40
          Width = 40
          Height = 23
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkTile
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6908265
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = '12:00'
          TextHint = 'ssmm'
          OnExit = evonExit
          TabOnEnter = False
          FontColorOnEnter = 10252872
          ColorFocused = 10252872
          ColorNotFocused = 6908265
        end
        object ebismonteur: TfEdit
          Left = 433
          Top = 40
          Width = 40
          Height = 23
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkTile
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6908265
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = '14:00'
          TextHint = 'ssmm'
          OnExit = evonExit
          TabOnEnter = False
          FontColorOnEnter = 10252872
          ColorFocused = 10252872
          ColorNotFocused = 6908265
        end
        object NxButton2: TNxButton
          Left = 581
          Top = 38
          Width = 75
          Caption = #252'bernehmen'
          TabOrder = 5
          OnClick = NxButton2Click
        end
        object NxButton3: TNxButton
          Left = 688
          Top = 38
          Width = 75
          Caption = 'verwerfen'
          TabOrder = 6
          OnClick = NxButton3Click
        end
        object Button1: TButton
          Left = 496
          Top = 480
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 7
        end
        inline TFrame31: TFrame3
          Left = 8
          Top = 8
          Width = 632
          Height = 207
          TabOrder = 8
          ExplicitLeft = 8
          ExplicitTop = 8
          inherited NxHeaderPanel3: TNxHeaderPanel
            OnCollapse = nil
            OnExpand = nil
            FullWidth = 632
          end
          inherited NxHeaderPanel2: TNxHeaderPanel
            OnCollapse = nil
            OnExpand = nil
            FullWidth = 632
          end
          inherited NxHeaderPanel1: TNxHeaderPanel
            OnCollapse = nil
            OnExpand = nil
            FullWidth = 632
          end
          inherited NxHeaderPanel4: TNxHeaderPanel
            OnCollapse = nil
            OnExpand = nil
            FullWidth = 632
          end
        end
      end
    end
  end
end
