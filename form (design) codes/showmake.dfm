object showandmake: Tshowandmake
  Left = 0
  Top = 0
  Caption = 'show and make meals'
  ClientHeight = 393
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 32
    Width = 697
    Height = 121
    DataSource = DataModule1.DataSource3
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 136
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object BindSourceDB1: TBindSourceDB
    ScopeMappings = <>
    Left = 656
    Top = 176
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 656
    Top = 232
  end
end
