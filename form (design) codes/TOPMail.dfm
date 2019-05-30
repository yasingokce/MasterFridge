object TMail: TTMail
  Left = 0
  Top = 0
  Caption = '***SENDL'#304'NG E_MA'#304'L FOR USERS***'
  ClientHeight = 400
  ClientWidth = 760
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
    AlignWithMargins = True
    Left = 3
    Top = 237
    Width = 754
    Height = 160
    Align = alBottom
    DataSource = DataModule1.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object memo1: TMemo
    Left = 24
    Top = 32
    Width = 481
    Height = 177
    Color = clBtnFace
    Ctl3D = True
    DoubleBuffered = False
    Lines.Strings = (
      'memo1')
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 600
    Top = 48
    Width = 137
    Height = 41
    Caption = 'SEND E-MA'#304'L'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 600
    Top = 120
    Width = 137
    Height = 41
    Caption = 'CLEAR'
    TabOrder = 3
    OnClick = Button2Click
  end
end
