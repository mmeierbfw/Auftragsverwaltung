﻿object wizard: Twizard
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'wizard'
  ClientHeight = 437
  ClientWidth = 651
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 0
    Width = 611
    Height = 81
    Margins.Left = 20
    Margins.Top = 0
    Margins.Right = 20
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 603
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 611
      Height = 19
      Align = alTop
      Alignment = taCenter
      Caption = 'Forschritt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 66
    end
    object RadioButton1: TRadioButton
      Left = 217
      Top = 45
      Width = 25
      Height = 17
      Checked = True
      TabOrder = 1
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 252
      Top = 45
      Width = 25
      Height = 17
      TabOrder = 0
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 288
      Top = 45
      Width = 25
      Height = 17
      TabOrder = 2
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 324
      Top = 45
      Width = 25
      Height = 17
      TabOrder = 3
      OnClick = RadioButton4Click
    end
    object RadioButton5: TRadioButton
      Left = 360
      Top = 45
      Width = 25
      Height = 17
      TabOrder = 4
      OnClick = RadioButton5Click
    end
  end
  object pager: TNxPageControl
    AlignWithMargins = True
    Left = 20
    Top = 81
    Width = 611
    Height = 290
    Margins.Left = 20
    Margins.Top = 0
    Margins.Right = 20
    Margins.Bottom = 0
    ActivePage = tnutzer
    ActivePageIndex = 3
    Align = alTop
    TabOrder = 0
    BackgroundColor = clWhite
    BackgroundKind = bkTransparent
    Margin = 0
    Options = [pgBoldActiveTab, pgPageBorder, pgScrollButtons, pgTopBorder]
    ShowTabs = False
    Spacing = 0
    TabHeight = 17
    TabStyle = tsOneNote
    TopIndent = 0
    object tauftragsauswahl: TNxTabSheet
      Margins.Left = 20
      Margins.Top = 0
      Margins.Right = 20
      Margins.Bottom = 0
      Caption = 'Auftragsauswahl'
      PageIndex = 0
      PageStyle = ptGradient
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      OnShow = tauftragsauswahlShow
      ExplicitWidth = 641
      ExplicitHeight = 248
      object Label2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 603
        Height = 23
        Align = alTop
        Alignment = taCenter
        Caption = 'Auftragsauswahl'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 138
      end
      object fcbauftrag: TfComboBox
        Left = 248
        Top = 104
        Width = 145
        Height = 24
        BevelInner = bvLowered
        BevelKind = bkTile
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Zwischenablesung'
        Items.Strings = (
          'Zwischenablesung'
          'Montage')
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = clBlack
      end
      object NxButton2: TNxButton
        Left = 460
        Top = 252
        Width = 75
        Caption = 'weiter'
        TabOrder = 1
        OnClick = NxButton5Click
      end
    end
    object tliegenschaft: TNxTabSheet
      Margins.Left = 20
      Margins.Top = 0
      Margins.Right = 20
      Margins.Bottom = 0
      Caption = 'Auftragsauswahl'
      PageIndex = 1
      PageStyle = ptGradient
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      OnShow = tliegenschaftShow
      ExplicitLeft = 29
      ExplicitTop = 2
      ExplicitWidth = 601
      ExplicitHeight = 248
      object Label3: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 603
        Height = 23
        Align = alTop
        Alignment = taCenter
        Caption = 'Liegenschaft'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 105
      end
      object feliegenschaft: TfEdit
        Left = 268
        Top = 112
        Width = 65
        Height = 23
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 7
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        Text = '1234567'
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = clBlack
      end
      object NxButton4: TNxButton
        Left = 468
        Top = 260
        Width = 75
        Caption = 'weiter'
        TabOrder = 1
        OnClick = NxButton5Click
      end
    end
    object teigentümer: TNxTabSheet
      Margins.Left = 20
      Margins.Top = 0
      Margins.Right = 20
      Margins.Bottom = 0
      Caption = 'Auftragsauswahl'
      PageIndex = 2
      PageStyle = ptGradient
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      OnShow = teigentümerShow
      ExplicitLeft = 29
      ExplicitTop = 2
      ExplicitWidth = 561
      ExplicitHeight = 248
      object Label4: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 603
        Height = 23
        Align = alTop
        Alignment = taCenter
        Caption = 'Eigent'#252'mer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 97
      end
      object Label9: TLabel
        Left = 32
        Top = 103
        Width = 54
        Height = 13
        Caption = 'Eigent'#252'mer'
        Layout = tlCenter
      end
      object Label10: TLabel
        Left = 32
        Top = 122
        Width = 32
        Height = 13
        Caption = 'Stra'#223'e'
        Layout = tlCenter
      end
      object Label11: TLabel
        Left = 32
        Top = 142
        Width = 17
        Height = 13
        Caption = 'PLZ'
        Layout = tlCenter
      end
      object Label12: TLabel
        Left = 56
        Top = 142
        Width = 16
        Height = 13
        Caption = 'Ort'
        Layout = tlCenter
      end
      object ename1: TfEdit
        Left = 113
        Top = 98
        Width = 89
        Height = 23
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = 11776947
      end
      object ename2: TfEdit
        Left = 200
        Top = 98
        Width = 337
        Height = 23
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 1
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = 11776947
      end
      object estrasse: TfEdit
        Left = 113
        Top = 120
        Width = 424
        Height = 23
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 2
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = 11776947
      end
      object eplz: TfEdit
        Left = 113
        Top = 142
        Width = 41
        Height = 23
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 5
        NumbersOnly = True
        ParentColor = True
        ParentFont = False
        TabOrder = 3
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = 11776947
      end
      object eort: TfEdit
        Left = 153
        Top = 142
        Width = 384
        Height = 23
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 4
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = 11776947
      end
      object NxButton3: TNxButton
        Left = 462
        Top = 262
        Width = 75
        Caption = 'weiter'
        TabOrder = 5
        OnClick = NxButton5Click
      end
    end
    object tnutzer: TNxTabSheet
      Margins.Left = 20
      Margins.Top = 0
      Margins.Right = 20
      Margins.Bottom = 0
      Caption = 'Auftragsauswahl'
      PageIndex = 3
      PageStyle = ptGradient
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      OnShow = tnutzerShow
      ExplicitLeft = 29
      ExplicitTop = 2
      ExplicitWidth = 561
      ExplicitHeight = 248
      object Label5: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 603
        Height = 23
        Align = alTop
        Alignment = taCenter
        Caption = 'Nutzerdaten'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 103
      end
      object Label6: TLabel
        Left = 32
        Top = 103
        Width = 58
        Height = 13
        Caption = 'Nutzername'
        Layout = tlCenter
      end
      object Label7: TLabel
        Left = 32
        Top = 122
        Width = 27
        Height = 13
        Caption = 'Email '
        Layout = tlCenter
      end
      object Label8: TLabel
        Left = 32
        Top = 142
        Width = 36
        Height = 13
        Caption = 'Telefon'
        Layout = tlCenter
      end
      object enutzername1: TfEdit
        Left = 113
        Top = 98
        Width = 212
        Height = 23
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = 11776947
      end
      object enutzername2: TfEdit
        Left = 325
        Top = 98
        Width = 212
        Height = 23
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 1
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = 11776947
      end
      object enutzermail: TfEdit
        Left = 113
        Top = 120
        Width = 424
        Height = 23
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 2
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = 11776947
      end
      object enutzertel: TfEdit
        Left = 113
        Top = 142
        Width = 424
        Height = 23
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 3
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = 11776947
      end
      object NxButton5: TNxButton
        Left = 462
        Top = 252
        Width = 75
        Caption = 'weiter'
        TabOrder = 4
        OnClick = NxButton5Click
      end
    end
    object tausführung: TNxTabSheet
      Margins.Left = 20
      Margins.Top = 0
      Margins.Right = 20
      Margins.Bottom = 0
      Caption = 'Auftragsauswahl'
      PageIndex = 4
      PageStyle = ptGradient
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      OnShow = tausführungShow
      ExplicitLeft = 29
      ExplicitTop = 2
      ExplicitWidth = 561
      ExplicitHeight = 248
      object Label13: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 603
        Height = 23
        Align = alTop
        Alignment = taCenter
        Caption = 'Ausf'#252'hrungsdaten'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 154
      end
      object fcbmonteur: TfComboBox
        Left = 32
        Top = 56
        Width = 346
        Height = 24
        BevelInner = bvLowered
        BevelKind = bkTile
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Monteur'
        Items.Strings = (
          'Zwischenablesung'
          'Montage')
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = clBlack
      end
      object NxMonthCalendar1: TNxMonthCalendar
        Left = 384
        Top = 56
        Width = 151
        Height = 163
        Day = 7
        Month = 10
        NoneCaption = 'None'
        SelectedDate = 41919.000000000000000000
        TodayCaption = 'Today'
        Year = 2014
      end
      object NxTimePicker1: TNxTimePicker
        Left = 384
        Top = 225
        Width = 153
        Height = 21
        TabOrder = 3
        Text = '17:15:00'
        HideFocus = False
        Time = 0.718750000000000000
        HoursString = 'H'
        MinutesString = 'M'
        UseStandardMinute = True
      end
      object Memo1: TMemo
        Left = 32
        Top = 96
        Width = 345
        Height = 153
        Lines.Strings = (
          'Memo1')
        TabOrder = 1
      end
    end
  end
  object NxButton1: TNxButton
    Left = 21
    Top = 374
    Width = 602
    Caption = 'fertig'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = NxButton1Click
  end
end
