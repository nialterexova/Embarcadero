object AboutForm: TAboutForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 2
  Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
  ClientHeight = 106
  ClientWidth = 357
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
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 305
    Height = 19
    Caption = #1058#1091#1090' '#1085#1072#1093#1086#1076#1080#1090#1089#1103' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 24
    Top = 64
    Width = 115
    Height = 25
    Caption = #1063#1090#1086'-'#1090#1086' '#1077#1097#1077'?'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ButtonClose: TButton
    Left = 214
    Top = 64
    Width = 115
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = ButtonCloseClick
  end
end
