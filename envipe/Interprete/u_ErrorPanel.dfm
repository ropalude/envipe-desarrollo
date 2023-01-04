object TfrmTransp_: TTfrmTransp_
  AlignWithMargins = True
  Left = 0
  Top = 0
  Margins.Left = 10
  Margins.Top = 10
  Margins.Right = 10
  Margins.Bottom = 10
  BorderStyle = bsNone
  Caption = 'TfrmTransp_'
  ClientHeight = 768
  ClientWidth = 1366
  Color = cl3DLight
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1360
    Height = 556
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object pnl2: TPanel
      Left = 1
      Top = 515
      Width = 1358
      Height = 40
      Align = alBottom
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 0
      Visible = False
      object pnl3: TPanel
        Left = 0
        Top = 0
        Width = 400
        Height = 40
        Align = alLeft
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object btnguarda: TAdvGlowButton
          AlignWithMargins = True
          Left = 50
          Top = 5
          Width = 300
          Height = 30
          Margins.Left = 50
          Margins.Top = 5
          Margins.Right = 50
          Margins.Bottom = 5
          Align = alClient
          Caption = 'Guardar'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          OnClick = btnAceptObs__Click
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
      object pnl4: TPanel
        Left = 400
        Top = 0
        Width = 558
        Height = 40
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object btnContinua__: TAdvGlowButton
          AlignWithMargins = True
          Left = 200
          Top = 5
          Width = 158
          Height = 30
          Margins.Left = 200
          Margins.Top = 5
          Margins.Right = 200
          Margins.Bottom = 5
          Align = alClient
          Caption = 'Continuar'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          OnClick = btnContinua__Click
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
      object pnl5: TPanel
        Left = 958
        Top = 0
        Width = 400
        Height = 40
        Align = alRight
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 2
        object btncancela: TAdvGlowButton
          AlignWithMargins = True
          Left = 50
          Top = 5
          Width = 300
          Height = 30
          Margins.Left = 50
          Margins.Top = 5
          Margins.Right = 50
          Margins.Bottom = 5
          Align = alClient
          Caption = 'Cancelar'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          OnClick = btnCancelObs__Click
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
    object pnl6: TPanel
      Left = 1
      Top = 189
      Width = 1358
      Height = 326
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 1
      Visible = False
      object txtRef__: TRichEdit
        Left = 0
        Top = 0
        Width = 1358
        Height = 96
        Align = alTop
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'redt4')
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
        WantTabs = True
      end
      object mmObs__: TDBMemo
        Left = 0
        Top = 96
        Width = 1358
        Height = 230
        Align = alClient
        Color = clWhite
        TabOrder = 1
        OnKeyPress = mmObs__KeyPress
      end
    end
    object pnl7: TPanel
      Left = 1
      Top = 1
      Width = 1358
      Height = 20
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 2
      object btnClose__: TLabel
        AlignWithMargins = True
        Left = 1340
        Top = 3
        Width = 8
        Height = 14
        Cursor = crHandPoint
        Margins.Right = 10
        Align = alRight
        Alignment = taCenter
        Caption = 'X'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnClick = lbl1Click
        OnDblClick = btnClose__DblClick
        ExplicitLeft = 1296
      end
    end
    object scrlbx1: TScrollBox
      Left = 1
      Top = 21
      Width = 1358
      Height = 168
      Align = alTop
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 3
    end
  end
  object tcKeyboard: TAdvTouchKeyboard
    AlignWithMargins = True
    Left = 3
    Top = 565
    Width = 1360
    Height = 200
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    AutoCapsDisplay = True
    KeyboardType = ktQWERTY
    Keys = <
      item
        X = 0
        Y = 0
        Caption = '`'
        ShiftCaption = '~'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 40
        Y = 0
        Caption = '1'
        ShiftCaption = '!'
        AltGrCaption = '|'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 80
        Y = 0
        Caption = '2'
        ShiftCaption = '@'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 120
        Y = 0
        Caption = '3'
        ShiftCaption = '#'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 160
        Y = 0
        Caption = '4'
        ShiftCaption = '$'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 200
        Y = 0
        Caption = '5'
        ShiftCaption = '%'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 240
        Y = 0
        Caption = '6'
        ShiftCaption = '^'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 280
        Y = 0
        Caption = '7'
        ShiftCaption = '&'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 320
        Y = 0
        Caption = '8'
        ShiftCaption = '*'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 360
        Y = 0
        Caption = '9'
        ShiftCaption = '('
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 400
        Y = 0
        Caption = '0'
        ShiftCaption = ')'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 440
        Y = 0
        Caption = '-'
        ShiftCaption = '_'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 480
        Y = 0
        Caption = '='
        ShiftCaption = '+'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 520
        Y = 0
        Caption = '\'
        ShiftCaption = '|'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 560
        Y = 0
        Caption = 'Back'
        KeyValue = 8
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skBackSpace
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = 10526880
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 0
        Y = 40
        Caption = '->'
        ShiftCaption = '<-'
        KeyValue = 9
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skTab
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = 10526880
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 60
        Y = 40
        Caption = 'Q'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 100
        Y = 40
        Caption = 'W'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 140
        Y = 40
        Caption = 'E'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 180
        Y = 40
        Caption = 'R'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 220
        Y = 40
        Caption = 'T'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 260
        Y = 40
        Caption = 'Y'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 300
        Y = 40
        Caption = 'U'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 340
        Y = 40
        Caption = 'I'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 380
        Y = 40
        Caption = 'O'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 420
        Y = 40
        Caption = 'P'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 460
        Y = 40
        Caption = '['
        ShiftCaption = '{'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 500
        Y = 40
        Caption = ']'
        ShiftCaption = '}'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 550
        Y = 40
        Caption = 'Enter'
        KeyValue = 13
        ShiftKeyValue = 0
        AltGrKeyValue = 0
        Height = 80
        Width = 50
        SpecialKey = skReturn
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = 10526880
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 0
        Y = 80
        Caption = 'Caps Lock'
        KeyValue = 20
        ShiftKeyValue = 0
        AltGrKeyValue = 0
        Height = 40
        Width = 70
        SpecialKey = skCaps
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = 10526880
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 70
        Y = 80
        Caption = 'A'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 110
        Y = 80
        Caption = 'S'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 150
        Y = 80
        Caption = 'D'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 190
        Y = 80
        Caption = 'F'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 230
        Y = 80
        Caption = 'G'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 270
        Y = 80
        Caption = 'H'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 310
        Y = 80
        Caption = 'J'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 350
        Y = 80
        Caption = 'K'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 390
        Y = 80
        Caption = 'L'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 430
        Y = 80
        Caption = #209
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 470
        Y = 80
        Caption = ';'
        ShiftCaption = ':'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 510
        Y = 80
        Caption = ','
        ShiftCaption = '"'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 0
        Y = 120
        Caption = 'Shift'
        KeyValue = 160
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 80
        SpecialKey = skShift
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = 10526880
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 80
        Y = 120
        Caption = 'Z'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 120
        Y = 120
        Caption = 'X'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 160
        Y = 120
        Caption = 'C'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 200
        Y = 120
        Caption = 'V'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 240
        Y = 120
        Caption = 'B'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 280
        Y = 120
        Caption = 'N'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 320
        Y = 120
        Caption = 'M'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 360
        Y = 120
        Caption = ','
        ShiftCaption = '<'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 400
        Y = 120
        Caption = '.'
        ShiftCaption = '>'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 440
        Y = 120
        Caption = '/'
        ShiftCaption = '?'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 480
        Y = 120
        Caption = 'Shift'
        KeyValue = 161
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 110
        SpecialKey = skShift
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = 10526880
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 0
        Y = 160
        Caption = 'Ctrl'
        KeyValue = 162
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skCtrl
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = 10526880
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 60
        Y = 160
        Caption = 'Win'
        KeyValue = 91
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skWin
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = 10526880
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 100
        Y = 160
        Caption = 'Alt'
        KeyValue = 18
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skAlt
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = 10526880
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 160
        Y = 160
        KeyValue = 32
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 240
        SpecialKey = skSpaceBar
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 400
        Y = 160
        Caption = 'Alt Gr'
        KeyValue = 0
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skAltGr
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = 10526880
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 460
        Y = 160
        Caption = 'Win'
        KeyValue = 92
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skWin
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = 10526880
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 500
        Y = 160
        Caption = 'Menu'
        KeyValue = 93
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skApp
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = 10526880
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 540
        Y = 160
        Caption = '->'
        KeyValue = 39
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skRight
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = 10526880
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end>
    SmallFont.Charset = DEFAULT_CHARSET
    SmallFont.Color = clWindowText
    SmallFont.Height = -11
    SmallFont.Name = 'Tahoma'
    SmallFont.Style = []
    Version = '1.2.9.0'
    Visible = False
    ExplicitWidth = 600
  end
end
