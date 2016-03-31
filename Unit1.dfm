object Form1: TForm1
  Left = 329
  Top = 155
  Width = 481
  Height = 410
  Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1072#1103' '#1079#1072#1076#1072#1095#1072' ('#1050#1091#1088#1077#1085#1082#1086#1074', '#1064#1091#1084#1091#1085#1086#1074', '#1063#1072#1081#1082#1086')'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    465
    371)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 138
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1077#1081': 4'
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 142
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074': 4'
  end
  object UpDown1: TUpDown
    Left = 168
    Top = 8
    Width = 17
    Height = 33
    Min = 2
    Position = 4
    TabOrder = 0
    OnClick = UpDown1Click
  end
  object UpDown2: TUpDown
    Left = 168
    Top = 48
    Width = 17
    Height = 33
    Min = 2
    Position = 4
    TabOrder = 1
    OnClick = UpDown2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 208
    Top = 8
    Width = 249
    Height = 73
    Anchors = [akLeft, akTop, akRight]
    Caption = #1052#1077#1090#1086#1076' '#1088#1077#1096#1077#1085#1080#1103
    ItemIndex = 0
    Items.Strings = (
      #1052#1077#1090#1086#1076' '#1051#1077#1073#1077#1076#1077#1074#1072
      #1052#1077#1090#1086#1076' '#1084#1080#1085#1080#1084#1072#1083#1100#1085#1086#1075#1086' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1074' '#1084#1072#1090#1088#1080#1094#1077)
    TabOrder = 2
  end
  object TabControl1: TTabControl
    Left = 8
    Top = 88
    Width = 449
    Height = 237
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    Tabs.Strings = (
      #1042#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      #1042#1099#1095#1080#1089#1083#1077#1085#1080#1077
      #1056#1077#1079#1091#1083#1100#1090#1072#1090)
    TabIndex = 0
    OnChange = TabControl1Change
    DesignSize = (
      449
      237)
    object StringGrid1: TStringGrid
      Left = 8
      Top = 24
      Width = 433
      Height = 205
      Anchors = [akLeft, akTop, akRight, akBottom]
      DefaultColWidth = 88
      DefaultRowHeight = 20
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goColMoving, goEditing]
      TabOrder = 0
      RowHeights = (
        20
        21
        20
        20
        20)
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 332
    Width = 449
    Height = 33
    Anchors = [akLeft, akRight, akBottom]
    Lines.Strings = (
      #1051#1086#1075':')
    ScrollBars = ssVertical
    TabOrder = 4
  end
end
