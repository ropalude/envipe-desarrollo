object FHint: TFHint
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 220
  BorderStyle = bsNone
  ClientHeight = 218
  ClientWidth = 1043
  Color = clNone
  TransparentColorValue = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object redtMsn: TRichEdit
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1037
    Height = 212
    Cursor = crHandPoint
    Align = alClient
    BevelInner = bvNone
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnResizeRequest = redtMsnResizeRequest
  end
end