object Form1: TForm1
  Left = 230
  Top = 198
  Width = 697
  Height = 331
  Caption = #25968#25454#24211#36830#25509#31649#29702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 36
    Height = 13
    Caption = #26126#30721#65306
  end
  object Label2: TLabel
    Left = 8
    Top = 136
    Width = 36
    Height = 13
    Caption = #23494#30721#65306
  end
  object Label3: TLabel
    Left = 64
    Top = 8
    Width = 264
    Height = 13
    Caption = #27880#24847#65306#35831#22312#24405#20837#25110#20462#25913#35813#20869#23481#26102#65292#19981#35201#24405#20837#22238#36710#65281
  end
  object memo_mingma: TMemo
    Left = 64
    Top = 32
    Width = 601
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object memo_mima: TMemo
    Left = 64
    Top = 128
    Width = 601
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object btn_encrypt: TButton
    Left = 240
    Top = 248
    Width = 75
    Height = 25
    Caption = #21152#23494
    TabOrder = 2
    OnClick = btn_encryptClick
  end
  object btn_read: TButton
    Left = 96
    Top = 248
    Width = 75
    Height = 25
    Caption = #35835#20837#25991#20214
    TabOrder = 3
    OnClick = btn_readClick
  end
  object btn_decrypt: TButton
    Left = 392
    Top = 248
    Width = 75
    Height = 25
    Caption = #35299#23494
    TabOrder = 4
    OnClick = btn_decryptClick
  end
  object btn_write: TButton
    Left = 528
    Top = 248
    Width = 75
    Height = 25
    Caption = #20889#20837#25991#20214
    TabOrder = 5
    OnClick = btn_writeClick
  end
  object od_ini: TOpenDialog
    Left = 32
    Top = 240
  end
  object sd_ini: TSaveDialog
    Left = 624
    Top = 240
  end
end
