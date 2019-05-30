object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Breakfast***'
  ClientHeight = 398
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 16
    Width = 18
    Height = 13
    Caption = 'edit'
  end
  object Label2: TLabel
    Left = 456
    Top = 8
    Width = 29
    Height = 13
    Caption = 'watch'
  end
  object CheckListBox1: TCheckListBox
    Left = 40
    Top = 48
    Width = 121
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      'egg'
      'cheese'
      'jam'
      'honney'
      'oil'
      'butter'
      'cucenbar'
      'tomato'
      'kasharcheese'
      'sucuk'
      'sosis'
      'cereal'
      'milk'
      'nutella'
      'penut butter'
      'avacado'
      'past'#305'rma'
      'red peper'
      'green peper')
    TabOrder = 0
  end
  object quantity: TEdit
    Left = 200
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'quantity'
  end
  object Add: TButton
    Left = 224
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 2
    OnClick = AddClick
  end
  object Button1: TButton
    Left = 342
    Top = 44
    Width = 131
    Height = 23
    Caption = 'pacangha pie'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 502
    Top = 43
    Width = 131
    Height = 25
    Caption = 'cake'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 342
    Top = 80
    Width = 131
    Height = 25
    Caption = 'eggy sujuk'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 502
    Top = 80
    Width = 131
    Height = 25
    Caption = 'eggy bread'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 342
    Top = 120
    Width = 131
    Height = 25
    Caption = 'garlic kashar bread'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 430
    Top = 167
    Width = 131
    Height = 25
    Caption = 'man-a-man'
    TabOrder = 8
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 502
    Top = 120
    Width = 131
    Height = 25
    Caption = 'omlette with vagatables'
    TabOrder = 9
    OnClick = Button7Click
  end
  object typemeal: TEdit
    Left = 200
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'Type'
  end
  object Button8: TButton
    Left = 56
    Top = 167
    Width = 185
    Height = 58
    Caption = 'Show and say'
    TabOrder = 11
    OnClick = Button8Click
  end
end
