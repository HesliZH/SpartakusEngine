object FoLogin: TFoLogin
  Left = 0
  Top = 0
  Caption = 'Spartakus Engine - HitKill Studios'
  ClientHeight = 358
  ClientWidth = 330
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
    Left = 24
    Top = 216
    Width = 105
    Height = 13
    Caption = 'Digite seu usu'#225'rio'
  end
  object Label2: TLabel
    Left = 24
    Top = 266
    Width = 79
    Height = 13
    Caption = 'Digite sua senha'
  end
  object txtLogin: TEdit
    Left = 24
    Top = 239
    Width = 281
    Height = 21
    TabOrder = 0
  end
  object txtSenha: TEdit
    Left = 24
    Top = 285
    Width = 281
    Height = 21
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 24
    Top = 325
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 2
  end
  object btnSair: TButton
    Left = 230
    Top = 325
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btnSairClick
  end
end
