object espera: Tespera
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 84
  ClientWidth = 462
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 462
    Height = 84
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Espera Cargando .'
    Color = clInactiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object lblText: TLabel
      Left = 0
      Top = 66
      Width = 462
      Height = 18
      Align = alBottom
      ExplicitTop = 0
      ExplicitWidth = 4
    end
  end
end
