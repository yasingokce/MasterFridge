object Form5: TForm5
  AlignWithMargins = True
  Left = 0
  Top = 0
  ActiveControl = Button2
  AlphaBlend = True
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'New Register'
  ClientHeight = 233
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 233
    Caption = 'Panel1'
    Color = clGrayText
    ParentBackground = False
    ParentShowHint = False
    ShowCaption = False
    ShowHint = False
    TabOrder = 0
    object Label2: TLabel
      Left = 33
      Top = 71
      Width = 47
      Height = 13
      Caption = 'SurName:'
    end
    object Label3: TLabel
      Left = 284
      Top = 74
      Width = 37
      Height = 13
      Caption = 'Adress:'
    end
    object Label4: TLabel
      Left = 258
      Top = 44
      Width = 63
      Height = 13
      Caption = 'PlaceOfBrith:'
    end
    object Label5: TLabel
      Left = 49
      Top = 44
      Width = 31
      Height = 13
      Caption = 'Name:'
    end
    object Label6: TLabel
      Left = 300
      Top = 98
      Width = 21
      Height = 13
      Caption = 'Job:'
    end
    object Label7: TLabel
      Left = 35
      Top = 98
      Width = 45
      Height = 13
      Caption = 'BrithDay:'
    end
    object Label8: TLabel
      Left = 31
      Top = 125
      Width = 49
      Height = 13
      Caption = 'Company:'
    end
    object Label10: TLabel
      Left = 22
      Top = 15
      Width = 64
      Height = 13
      Caption = 'new register:'
    end
    object Label1: TLabel
      Left = 46
      Top = 157
      Width = 34
      Height = 13
      Caption = 'E_mail:'
    end
    object BrithDay: TEdit
      Left = 104
      Top = 95
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = BrithDayKeyPress
    end
    object Button1: TButton
      Left = 196
      Top = 185
      Width = 129
      Height = 35
      Caption = 'Save'
      DoubleBuffered = False
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Company: TEdit
      Left = 104
      Top = 122
      Width = 121
      Height = 21
      TabOrder = 2
      OnKeyPress = CompanyKeyPress
    end
    object EDTName: TEdit
      Left = 104
      Top = 41
      Width = 121
      Height = 21
      TabOrder = 3
      OnKeyPress = EDTNameKeyPress
    end
    object Job: TEdit
      Left = 339
      Top = 98
      Width = 121
      Height = 21
      TabOrder = 4
      OnKeyPress = JobKeyPress
    end
    object PlaceOfBirth: TEdit
      Left = 339
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 5
      OnKeyPress = PlaceOfBirthKeyPress
    end
    object Adress: TEdit
      Left = 339
      Top = 71
      Width = 121
      Height = 21
      TabOrder = 6
      OnKeyPress = AdressKeyPress
    end
    object surname: TEdit
      Left = 104
      Top = 68
      Width = 121
      Height = 21
      TabOrder = 7
      OnKeyPress = surnameKeyPress
    end
    object Button2: TButton
      Left = 331
      Top = 185
      Width = 129
      Height = 35
      Caption = 'Cancel'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Email: TEdit
      Left = 104
      Top = 154
      Width = 121
      Height = 21
      TabOrder = 9
    end
  end
end
