object fmFilterControlDialog: TfmFilterControlDialog
  Left = 360
  Top = 200
  BorderIcons = [biSystemMenu]
  Caption = 'fmFilterControlDialog'
  ClientHeight = 316
  ClientWidth = 552
  Color = clBtnFace
  Constraints.MinHeight = 165
  Constraints.MinWidth = 560
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010100000000000280100001600000028000000100000002000
    00000100040000000000C0000000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000008
    8EEE8FFFF8FF000888888888888800088EEE8FFFF8FF00088888888888880008
    8E6677FFF8FF0007700007777777000780F607888788000770F6077777770008
    80F807888888000880F807888888000808886070000000706888660700000706
    8F88866070000068F88888660700068FFF88886660000000000000000000C000
    0000C0000000C0000000C0000000C0000000C0000000C0000000C0000000C000
    0000C0000000C0000000C00F000080070000800300000003000000030000}
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottom: TPanel
    Left = 0
    Top = 278
    Width = 552
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object pnlBottomRight: TPanel
      Left = 234
      Top = 0
      Width = 318
      Height = 38
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
  object OpenDialog: TOpenDialog
    Left = 240
    Top = 8
  end
  object SaveDialog: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 272
    Top = 8
  end
end
