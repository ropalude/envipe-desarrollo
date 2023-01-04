object formCaptura: TformCaptura
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Captura del Cuestionario'
  ClientHeight = 344
  ClientWidth = 1086
  Color = clWhite
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object WebBrowser: TWebBrowser
    AlignWithMargins = True
    Left = 3
    Top = 42
    Width = 1080
    Height = 299
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 0
    ExplicitHeight = 315
    ControlData = {
      4C0000009F6F0000E71E00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1086
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object btnSalir: TAdvGlowButton
      AlignWithMargins = True
      Left = 983
      Top = 3
      Width = 100
      Height = 33
      Align = alRight
      Caption = 'REGRESAR'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btn1Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
end
