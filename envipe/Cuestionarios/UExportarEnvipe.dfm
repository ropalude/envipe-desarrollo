object FExportarEnvipe: TFExportarEnvipe
  Left = 0
  Top = 0
  Hint = '|Exportar'
  Caption = 'FExportarEnvipe'
  ClientHeight = 217
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PanelViviendas: TPanel
    Left = 197
    Top = 0
    Width = 250
    Height = 217
    Align = alRight
    Alignment = taRightJustify
    Caption = 'PanelViviendas'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object GroupBoxVivienda: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 16
      Width = 235
      Height = 190
      Margins.Top = 15
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      Caption = ' Viviendas UPM VSel Prog '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object CurvyPanelVivienda: TCurvyPanel
        AlignWithMargins = True
        Left = 7
        Top = 26
        Width = 221
        Height = 157
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        object ScrollBox2: TScrollBox
          AlignWithMargins = True
          Left = 15
          Top = 10
          Width = 196
          Height = 137
          Margins.Left = 15
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
end
