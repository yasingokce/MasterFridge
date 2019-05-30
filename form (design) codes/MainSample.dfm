object Form3: TForm3
  AlignWithMargins = True
  Left = 0
  Top = 0
  ActiveControl = Button2
  AlphaBlend = True
  Anchors = []
  BorderWidth = 4
  Caption = 'Show Panel'
  ClientHeight = 481
  ClientWidth = 762
  Color = clMenuHighlight
  DockSite = True
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  DesignSize = (
    762
    481)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 134
    Width = 762
    Height = 235
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = bsNone
    DataSource = DataModule1.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
  end
  object Panel2: TPanel
    Left = 30
    Top = 8
    Width = 700
    Height = 75
    Anchors = []
    Caption = 'Panel2'
    Color = clOlive
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Label9: TLabel
      Left = 105
      Top = 4
      Width = 215
      Height = 13
      Caption = 'if you can sarch list of name , you can  write '
    end
    object search: TButton
      Left = 290
      Top = 23
      Width = 120
      Height = 33
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = searchClick
    end
    object SearchEdit: TEdit
      Left = 85
      Top = 34
      Width = 120
      Height = 21
      TabOrder = 1
      OnKeyDown = SearchEditKeyDown
      OnKeyPress = SearchEditKeyPress
    end
    object Refresh: TButton
      Left = 495
      Top = 23
      Width = 120
      Height = 33
      Caption = 'Refresh'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = RefreshClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 391
    Width = 762
    Height = 90
    Align = alBottom
    Anchors = [akRight]
    Color = clAqua
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      762
      90)
    object Label1: TLabel
      Left = 340
      Top = 8
      Width = 67
      Height = 13
      Anchors = []
      Caption = 'Control Panel '
    end
    object Add: TButton
      Left = 26
      Top = 40
      Width = 120
      Height = 33
      Anchors = [akLeft]
      Caption = 'Add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = AddClick
    end
    object Delete: TButton
      Left = 172
      Top = 40
      Width = 120
      Height = 33
      Anchors = [akLeft]
      Caption = 'Delete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = DeleteClick
    end
    object Button4: TButton
      Left = 464
      Top = 40
      Width = 120
      Height = 33
      Anchors = [akLeft]
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button2: TButton
      Left = 610
      Top = 40
      Width = 120
      Height = 33
      Anchors = [akRight]
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 318
      Top = 40
      Width = 120
      Height = 33
      Anchors = [akLeft]
      Caption = 'Luxorious Delete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object Panel1: TPanel
    Left = 184
    Top = 88
    Width = 441
    Height = 40
    Anchors = [akLeft, akTop, akRight]
    Color = clTeal
    ParentBackground = False
    TabOrder = 3
    object Label2: TLabel
      Left = 24
      Top = 12
      Width = 115
      Height = 13
      Caption = 'Sending e-mail to users:'
    end
    object Button3: TButton
      Left = 256
      Top = 7
      Width = 145
      Height = 25
      Caption = 'Start'
      TabOrder = 0
      OnClick = Button3Click
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.ADOQuery1
    ScopeMappings = <>
    Left = 687
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 684
    Top = 69
  end
end
