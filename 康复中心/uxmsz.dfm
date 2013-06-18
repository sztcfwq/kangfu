object frm_ts: Tfrm_ts
  Left = 376
  Top = 331
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #36755#20837#26597#35810#38190#20540#24182#36873#25321#26597#35810#39033#30446
  ClientHeight = 200
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 33
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvSpace
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 11
      Width = 28
      Height = 14
      Caption = #26597#25214
    end
    object Label2: TLabel
      Left = 289
      Top = 11
      Width = 28
      Height = 14
      Caption = #26041#24335
    end
    object edt_cztj: TEdit
      Left = 48
      Top = 7
      Width = 129
      Height = 22
      TabOrder = 0
      Text = 'edt_cztj'
      OnKeyPress = edt_cztjKeyPress
    end
    object cbb_fs: TComboBox
      Left = 321
      Top = 7
      Width = 81
      Height = 22
      Enabled = False
      ItemHeight = 14
      ItemIndex = 0
      TabOrder = 1
      Text = #20195#30721
      OnChange = cbb_fsChange
      Items.Strings = (
        #20195#30721
        #25340#38899
        #20116#31508)
    end
    object cb_zn: TCheckBox
      Left = 405
      Top = 10
      Width = 57
      Height = 17
      Caption = #26234#33021
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = cb_znClick
    end
    object BitBtn1: TBitBtn
      Left = 487
      Top = 4
      Width = 38
      Height = 25
      Caption = #20851#38381
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object dbg_xmlb: TDBGrid
    Left = 0
    Top = 33
    Width = 531
    Height = 167
    Align = alClient
    BorderStyle = bsNone
    DataSource = dm.ds_ts
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDblClick = dbg_xmlbDblClick
    OnKeyPress = dbg_xmlbKeyPress
  end
end
