object formmemo: Tformmemo
  Left = 0
  Top = 0
  Caption = 'Notiz'
  ClientHeight = 320
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 41
    Width = 643
    Height = 249
    Align = alTop
    TabOrder = 0
    OnKeyPress = Memo1KeyPress
  end
  object pheader: TPanel
    Left = 0
    Top = 0
    Width = 643
    Height = 41
    Align = alTop
    Caption = 'Notiz zu %s'
    Color = 14933977
    ParentBackground = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 290
    Width = 643
    Height = 41
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object NxButton1: TNxButton
      Left = 1
      Top = 1
      Width = 272
      Caption = #196'nderungen speichern'
      TabOrder = 0
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 368
      Top = 1
      Width = 272
      Caption = #196'nderungen verwerfen'
      TabOrder = 1
      OnClick = NxButton2Click
    end
  end
end