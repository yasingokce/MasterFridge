object NewUserForm: TNewUserForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '***New user***'
  ClientHeight = 479
  ClientWidth = 712
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
    Left = 72
    Top = 24
    Width = 545
    Height = 377
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 131
      Width = 40
      Height = 13
      Caption = 'Subject:'
    end
    object Label2: TLabel
      Left = 14
      Top = 96
      Width = 50
      Height = 13
      Caption = 'Password:'
    end
    object Label3: TLabel
      Left = 32
      Top = 8
      Width = 182
      Height = 13
      Caption = 'New user panel enter the yandex mail'
    end
    object Label5: TLabel
      Left = 32
      Top = 59
      Width = 32
      Height = 13
      Caption = 'E-mail:'
    end
    object Label6: TLabel
      Left = 33
      Top = 171
      Width = 31
      Height = 13
      Caption = 'Giden:'
    end
    object label9: TLabel
      Left = 324
      Top = 8
      Width = 132
      Height = 13
      Caption = 'User'#39's name and password:'
    end
    object Label7: TLabel
      Left = 282
      Top = 75
      Width = 52
      Height = 13
      Caption = 'Username:'
    end
    object Label8: TLabel
      Left = 284
      Top = 131
      Width = 50
      Height = 13
      Caption = 'Password:'
    end
    object btndoit: TButton
      Left = 231
      Top = 296
      Width = 153
      Height = 33
      Caption = 'Create'
      TabOrder = 0
      OnClick = btndoitClick
    end
    object edtUser: TEdit
      Left = 360
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtPsw: TEdit
      Left = 360
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edtpassword: TEdit
      Left = 80
      Top = 93
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 3
      Text = 'yasin216216'
    end
    object edtto: TEdit
      Left = 80
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'ygsahin4@yandex.com'
    end
    object edtsubject: TEdit
      Left = 80
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object edtUSERNAME: TEdit
    Left = 152
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'ygsahin4@yandex.com'
  end
  object idsmtp1: TIdSMTP
    SASLMechanisms = <>
    Left = 479
    Top = 320
  end
  object idmsg1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 552
    Top = 320
  end
  object idslhndlrscktpnsl1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 552
    Top = 264
  end
end
