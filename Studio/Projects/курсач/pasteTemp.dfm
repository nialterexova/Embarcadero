object EditTempForm: TEditTempForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1096#1072#1073#1083#1086#1085
  ClientHeight = 356
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 16
    Top = 16
    Width = 569
    Height = 249
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 335
    Top = 279
    Width = 250
    Height = 57
    Hint = 'Save As|Saves the active file with a new name'
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    ImageIndex = 30
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 279
    Width = 250
    Height = 57
    Hint = 'Open|Opens an existing file'
    Caption = #1054#1090#1082#1088#1099#1090#1100
    ImageIndex = 7
    TabOrder = 2
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Left = 448
    Top = 32
  end
  object SaveDialog1: TSaveDialog
    Left = 520
    Top = 32
  end
end
