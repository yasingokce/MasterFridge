object Form7: TForm7
  AlignWithMargins = True
  Left = 0
  Top = 0
  AlphaBlend = True
  AutoSize = True
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = 'Delete Register'
  ClientHeight = 265
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 265
    Caption = 'Panel1'
    Color = clOlive
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 40
      Width = 118
      Height = 13
      Caption = 'enter to delete colums id'
    end
    object id: TEdit
      Left = 64
      Top = 80
      Width = 121
      Height = 21
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 80
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
