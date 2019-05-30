object Form6: TForm6
  AlignWithMargins = True
  Left = 0
  Top = 0
  AlphaBlend = True
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Edit Panel'
  ClientHeight = 265
  ClientWidth = 434
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 434
    Height = 265
    Caption = 'Panel2'
    Color = clSilver
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Label2: TLabel
      Left = 38
      Top = 64
      Width = 12
      Height = 13
      Caption = 'id:'
    end
    object Label3: TLabel
      Left = 19
      Top = 102
      Width = 31
      Height = 13
      Caption = 'Name:'
    end
    object Label4: TLabel
      Left = 4
      Top = 141
      Width = 46
      Height = 13
      Caption = 'Surname:'
    end
    object Label5: TLabel
      Left = 251
      Top = 141
      Width = 21
      Height = 13
      Caption = 'Job:'
    end
    object Label6: TLabel
      Left = 235
      Top = 102
      Width = 37
      Height = 13
      Caption = 'Adress:'
    end
    object Label7: TLabel
      Left = 211
      Top = 64
      Width = 63
      Height = 13
      Caption = 'PlaceOfBirth:'
    end
    object Label8: TLabel
      Left = 5
      Top = 176
      Width = 45
      Height = 13
      Caption = 'BirthDay:'
    end
    object Label9: TLabel
      Left = 225
      Top = 176
      Width = 49
      Height = 13
      Caption = 'Company:'
    end
    object Label10: TLabel
      Left = 27
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Edit panel.'
    end
    object Label1: TLabel
      Left = 16
      Top = 215
      Width = 34
      Height = 13
      Caption = 'E_mail:'
    end
    object DBEdit1: TDBEdit
      AlignWithMargins = True
      Left = 56
      Top = 61
      Width = 121
      Height = 21
      DataField = 'id'
      DataSource = DataModule1.DataSource1
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 56
      Top = 99
      Width = 121
      Height = 21
      DataField = 'Name'
      DataSource = DataModule1.DataSource1
      TabOrder = 1
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 56
      Top = 138
      Width = 121
      Height = 21
      DataField = 'Surname'
      DataSource = DataModule1.DataSource1
      TabOrder = 2
      OnKeyPress = DBEdit3KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 56
      Top = 173
      Width = 121
      Height = 21
      DataField = 'BrithDay'
      DataSource = DataModule1.DataSource1
      TabOrder = 3
      OnKeyPress = DBEdit4KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 288
      Top = 61
      Width = 121
      Height = 21
      DataField = 'PlaceOfBirth'
      DataSource = DataModule1.DataSource1
      TabOrder = 4
      OnKeyPress = DBEdit5KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 288
      Top = 101
      Width = 121
      Height = 21
      DataField = 'Adress'
      DataSource = DataModule1.DataSource1
      TabOrder = 5
      OnKeyPress = DBEdit6KeyPress
    end
    object DBEdit7: TDBEdit
      Left = 288
      Top = 138
      Width = 121
      Height = 21
      DataField = 'Job'
      DataSource = DataModule1.DataSource1
      TabOrder = 6
      OnKeyPress = DBEdit7KeyPress
    end
    object DBEdit8: TDBEdit
      Left = 288
      Top = 173
      Width = 121
      Height = 21
      DataField = 'Company'
      DataSource = DataModule1.DataSource1
      TabOrder = 7
      OnKeyPress = DBEdit8KeyPress
    end
    object Save: TButton
      Left = 200
      Top = 212
      Width = 97
      Height = 37
      Caption = 'Save'
      TabOrder = 8
      OnClick = SaveClick
    end
    object Cancel: TButton
      Left = 312
      Top = 212
      Width = 97
      Height = 37
      Caption = 'Cancel'
      TabOrder = 9
      OnClick = CancelClick
    end
    object DBEdit9: TDBEdit
      Left = 56
      Top = 212
      Width = 121
      Height = 21
      DataField = 'email'
      DataSource = DataModule1.DataSource1
      TabOrder = 10
    end
  end
end
