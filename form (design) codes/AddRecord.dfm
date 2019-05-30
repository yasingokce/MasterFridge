object frmAddRecord: TfrmAddRecord
  Left = 0
  Top = 0
  Caption = 'frmAddRecord'
  ClientHeight = 245
  ClientWidth = 271
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LabeledEdit1: TLabeledEdit
    Left = 8
    Top = 48
    Width = 250
    Height = 21
    EditLabel.Width = 13
    EditLabel.Height = 13
    EditLabel.Caption = 'Ad'
    TabOrder = 0
  end
  object LabeledEdit2: TLabeledEdit
    Left = 8
    Top = 104
    Width = 250
    Height = 21
    EditLabel.Width = 30
    EditLabel.Height = 13
    EditLabel.Caption = 'Soyad'
    TabOrder = 1
  end
  object LabeledEdit3: TLabeledEdit
    Left = 8
    Top = 152
    Width = 250
    Height = 21
    EditLabel.Width = 41
    EditLabel.Height = 13
    EditLabel.Caption = 'Aciklama'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 188
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Ekle'
    Default = True
    ModalResult = 1
    TabOrder = 3
    OnClick = Button1Click
  end
end
