object Einstellungen: TEinstellungen
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Einstellungen'
  ClientHeight = 201
  ClientWidth = 421
  Color = 6908265
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 10
  Padding.Top = 10
  Padding.Right = 10
  Padding.Bottom = 10
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 10
    Top = 10
    Width = 401
    Height = 181
    AutoSize = True
    Color = 15856113
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'tahoma'
    Font.Style = []
    Padding.Left = 30
    Padding.Top = 30
    Padding.Right = 30
    Padding.Bottom = 30
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      401
      181)
    object ekundennummer: TLabeledEdit
      Left = 280
      Top = 31
      Width = 28
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = []
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      CharCase = ecUpperCase
      Color = clWhite
      EditLabel.Width = 90
      EditLabel.Height = 16
      EditLabel.Margins.Left = 2
      EditLabel.Margins.Top = 2
      EditLabel.Margins.Right = 2
      EditLabel.Margins.Bottom = 2
      EditLabel.Caption = 'Kundennummer'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      EditLabel.Layout = tlCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      LabelSpacing = 15
      MaxLength = 2
      ParentFont = False
      TabOrder = 0
      Text = '10'
    end
    object esachbearbeiter: TLabeledEdit
      Left = 280
      Top = 55
      Width = 28
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = []
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      CharCase = ecUpperCase
      Color = clWhite
      EditLabel.Width = 87
      EditLabel.Height = 16
      EditLabel.Margins.Left = 2
      EditLabel.Margins.Top = 2
      EditLabel.Margins.Right = 2
      EditLabel.Margins.Bottom = 2
      EditLabel.Caption = 'Sachbearbeiter'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      EditLabel.Layout = tlCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      LabelSpacing = 15
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
      Text = '10'
    end
    object Button2: TButton
      Left = 31
      Top = 120
      Width = 161
      Height = 30
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Speichern'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 209
      Top = 120
      Width = 161
      Height = 30
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Abbrechen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button3Click
    end
  end
end
