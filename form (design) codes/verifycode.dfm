object VRFcode: TVRFcode
  Left = 0
  Top = 0
  Caption = 'VRFcode'
  ClientHeight = 169
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object vrfcode: TLabel
    Left = 120
    Top = 8
    Width = 167
    Height = 13
    Caption = 'Enter verify code for in the e_mail:'
  end
  object Label2: TLabel
    Left = 328
    Top = 93
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object edtVerify: TEdit
    Left = 120
    Top = 37
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object Enter: TButton
    Left = 120
    Top = 80
    Width = 137
    Height = 41
    Caption = 'Enter'
    ModalResult = 1
    TabOrder = 1
    OnClick = EnterClick
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 48
    Top = 88
  end
end
