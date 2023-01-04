object frmWeb: TfrmWeb
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Consola'
  ClientHeight = 617
  ClientWidth = 1070
  Color = clBtnFace
  UseDockManager = True
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 0
    Top = 603
    Width = 94
    Height = 72
    Caption = 'lbl1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 8
    Top = 161
    Width = 64
    Height = 13
    Caption = 'Texto Error   '
  end
  object Label13: TLabel
    Left = 8
    Top = 34
    Width = 81
    Height = 13
    Caption = 'Texto Validaci'#243'n '
  end
  object img2: TImage
    Left = 864
    Top = 520
    Width = 105
    Height = 105
    AutoSize = True
  end
  object fllst1: TFileListBox
    Left = 880
    Top = 480
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 14
  end
  object pnlBrowser__: TPanel
    Left = 510
    Top = 288
    Width = 185
    Height = 114
    TabOrder = 13
  end
  object lineas: TEdit
    Left = 760
    Top = 408
    Width = 121
    Height = 21
    TabOrder = 11
    Text = '12'
  end
  object Button1: TButton
    Left = 760
    Top = 435
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Memo6: TMemo
    Left = 550
    Top = 408
    Width = 185
    Height = 89
    DragCursor = crHourGlass
    DragMode = dmAutomatic
    Lines.Strings = (
      'Memo6')
    TabOrder = 9
  end
  object redt1: TRichEdit
    Left = 691
    Top = 177
    Width = 372
    Height = 187
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'textoAncho')
    ParentFont = False
    TabOrder = 2
    WordWrap = False
    OnResizeRequest = textoAnchoResizeRequest
  end
  object textoAncho: TRichEdit
    Left = 510
    Top = 79
    Width = 233
    Height = 53
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'textoAncho')
    ParentFont = False
    TabOrder = 0
    WordWrap = False
    OnResizeRequest = textoAnchoResizeRequest
  end
  object textoAlto: TRichEdit
    Left = 510
    Top = 177
    Width = 161
    Height = 51
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'texto'
      'Alto')
    ParentFont = False
    TabOrder = 1
    OnResizeRequest = textoAltoResizeRequest
  end
  object redtVal: TRichEdit
    Left = 8
    Top = 50
    Width = 474
    Height = 105
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'redtVal')
    ParentFont = False
    TabOrder = 3
  end
  object redtError: TRichEdit
    Left = 8
    Top = 180
    Width = 474
    Height = 89
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'redtError')
    ParentFont = False
    TabOrder = 4
  end
  object textoAlto1: TRichEdit
    Left = 104
    Top = 31
    Width = 921
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'textoAlto1')
    ParentFont = False
    TabOrder = 5
    OnResizeRequest = textoAlto1ResizeRequest
  end
  object lst1: TListBox
    Left = 550
    Top = 503
    Width = 121
    Height = 38
    ItemHeight = 13
    TabOrder = 6
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 1070
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 8
    object btn7: TBitBtn
      Left = 1045
      Top = 0
      Width = 25
      Height = 25
      Align = alRight
      Caption = 'X'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btn7Click
    end
    object BitBtn3: TBitBtn
      Left = 1020
      Top = 0
      Width = 25
      Height = 25
      Align = alRight
      Caption = '-'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object web_JS: TWebBrowser
    Left = 8
    Top = 293
    Width = 474
    Height = 150
    TabOrder = 12
    OnDocumentComplete = web_JSDocumentComplete
    ControlData = {
      4C000000FD300000810F00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object pc1: TPageControl
    Left = 8
    Top = 31
    Width = 1031
    Height = 578
    ActivePage = TabSheet1
    Align = alCustom
    TabOrder = 7
    OnChange = pc1Change
    object TabSheet1: TTabSheet
      Caption = 'JS Consola'
      OnShow = TabSheet1Show
      ExplicitWidth = 305
      ExplicitHeight = 96
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 684
        Height = 550
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 654
        ExplicitHeight = 96
        object pnl1: TPanel
          Left = 1
          Top = 161
          Width = 682
          Height = 388
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 652
          ExplicitHeight = 329
          object AdvM: TAdvMemo
            Left = 1
            Top = 1
            Width = 680
            Height = 386
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alClient
            AutoCompletion.Color = clInactiveCaption
            AutoCompletion.Font.Charset = DEFAULT_CHARSET
            AutoCompletion.Font.Color = clWindowText
            AutoCompletion.Font.Height = -11
            AutoCompletion.Font.Name = 'Tahoma'
            AutoCompletion.Font.Style = []
            AutoCorrect.Active = True
            AutoHintParameterPosition = hpBelowCode
            BorderStyle = bsSingle
            CodeFolding.Enabled = False
            CodeFolding.LineColor = clGray
            Ctl3D = False
            DelErase = True
            EnhancedHomeKey = False
            Gutter.DigitCount = 4
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -13
            Gutter.Font.Name = 'Courier New'
            Gutter.Font.Style = []
            Gutter.GutterWidth = 25
            Gutter.ShowModified = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'COURIER NEW'
            Font.Style = []
            HiddenCaret = False
            Lines.Strings = (
              'function test(){'
              ''
              ''
              '};')
            MarkerList.UseDefaultMarkerImageIndex = False
            MarkerList.DefaultMarkerImageIndex = -1
            MarkerList.ImageTransparentColor = 33554432
            PrintOptions.MarginLeft = 0
            PrintOptions.MarginRight = 0
            PrintOptions.MarginTop = 0
            PrintOptions.MarginBottom = 0
            PrintOptions.PageNr = False
            PrintOptions.PrintLineNumbers = False
            RightMarginColor = 14869218
            ScrollHint = False
            SelColor = clWhite
            SelBkColor = clNavy
            ShowRightMargin = True
            SmartTabs = False
            SyntaxStyles = AdvJSStyler
            TabOrder = 0
            TabSize = 4
            TabStop = True
            TrimTrailingSpaces = False
            UndoLimit = 100
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = True
            Version = '2.2.7.5'
            WordWrap = wwNone
            OnAutoCompletion = AdvMAutoCompletion
            OnKeyPress = AdvMKeyPress
            ExplicitWidth = 650
            ExplicitHeight = 327
          end
        end
        object pnl2: TPanel
          Left = 1
          Top = 1
          Width = 682
          Height = 65
          Align = alTop
          TabOrder = 1
          ExplicitWidth = 652
          object Label2: TLabel
            Left = 7
            Top = 16
            Width = 308
            Height = 13
            Caption = 'Ejecuta la Consulta de un reloadQuery por Nombre o por Source'
          end
          object Label16: TLabel
            Left = 343
            Top = 0
            Width = 125
            Height = 13
            Caption = 'Nombre del Grupo Ciclico :'
          end
          object btn5: TButton
            Left = 216
            Top = 35
            Width = 97
            Height = 25
            Caption = 'Ejecuta'
            TabOrder = 0
            OnClick = btn5Click
          end
          object edtQuery: TEdit
            Left = 8
            Top = 38
            Width = 202
            Height = 21
            TabOrder = 1
            Text = 'Reload'
          end
          object cbGpoCyclicJSConsole: TComboBox
            Left = 342
            Top = 19
            Width = 305
            Height = 22
            Style = csOwnerDrawFixed
            TabOrder = 2
            OnChange = cbGCyclicChange
          end
          object btnGetIndexRecordGpoCyclicJSConsole: TButton
            Left = 343
            Top = 44
            Width = 75
            Height = 20
            Caption = 'Reg Actual'
            TabOrder = 3
            OnClick = btnGetIndexRecordGpoCyclicJSConsoleClick
          end
        end
        object Panel14: TPanel
          Left = 1
          Top = 66
          Width = 682
          Height = 95
          Align = alTop
          TabOrder = 2
          ExplicitWidth = 652
          object res: TLabel
            Left = 71
            Top = 3
            Width = 12
            Height = 13
            Caption = '...'
          end
          object Label14: TLabel
            Left = 8
            Top = 6
            Width = 55
            Height = 13
            Caption = 'Resultado :'
          end
          object mmo1: TMemo
            Left = 249
            Top = 1
            Width = 432
            Height = 93
            Align = alRight
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
            ExplicitLeft = 219
          end
          object chk3: TCheckBox
            Left = 8
            Top = 62
            Width = 189
            Height = 17
            Caption = 'Espera Respuesta no booleana '
            TabOrder = 1
          end
          object btn3: TButton
            Left = 8
            Top = 31
            Width = 168
            Height = 25
            Caption = 'Ejecutar script'
            TabOrder = 2
            OnClick = btn3Click
          end
        end
      end
      object Panel5: TPanel
        Left = 684
        Top = 0
        Width = 339
        Height = 550
        Align = alRight
        TabOrder = 1
        ExplicitLeft = -34
        ExplicitHeight = 96
        object PageControl2: TPageControl
          Left = 1
          Top = 1
          Width = 337
          Height = 548
          ActivePage = TabSheet5
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 94
          object TabSheet5: TTabSheet
            Caption = 'Get&&Set _ Elementos '
            ExplicitHeight = 66
            object elementos: TListBox
              Left = 0
              Top = 0
              Width = 329
              Height = 520
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsItalic]
              ItemHeight = 13
              ParentFont = False
              TabOrder = 0
              OnDblClick = elementosDblClick
              ExplicitHeight = 66
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'TabSheet6'
            ImageIndex = 1
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      ExplicitWidth = 305
      ExplicitHeight = 96
      object pnlConsulta: TPanel
        Left = 0
        Top = 0
        Width = 1023
        Height = 550
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 305
        ExplicitHeight = 96
        object btnLimpia: TBitBtn
          Left = 14
          Top = 239
          Width = 75
          Height = 25
          Caption = 'Limpia'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = btnLimpiaClick
        end
        object dbg: TDBGrid
          Left = 1
          Top = 276
          Width = 1021
          Height = 273
          Align = alBottom
          DataSource = ds_c
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object Panel12: TPanel
          Left = 593
          Top = 1
          Width = 429
          Height = 275
          Align = alRight
          Alignment = taRightJustify
          TabOrder = 2
          ExplicitLeft = -125
          ExplicitHeight = 216
          object Label10: TLabel
            Left = 1
            Top = 1
            Width = 427
            Height = 26
            Align = alTop
            Caption = 'Coloque sus parametros (parametro,valor) '#13#10'Ejemplo:'
            ExplicitWidth = 208
          end
          object Label9: TLabel
            Left = 241
            Top = 59
            Width = 48
            Height = 13
            Caption = 'Conexi'#243'n '
          end
          object mParametros: TMemo
            Left = 1
            Top = 27
            Width = 208
            Height = 247
            Align = alLeft
            Lines.Strings = (
              'Par,5'
              'Par1,3'
              'Par2,4')
            TabOrder = 0
            WordWrap = False
            ExplicitHeight = 188
          end
          object Consulta: TBitBtn
            Left = 239
            Top = 111
            Width = 138
            Height = 44
            Caption = 'Consulta'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 1
            OnClick = ConsultaClick
          end
          object cmbConexiones: TComboBox
            Left = 243
            Top = 84
            Width = 98
            Height = 21
            TabOrder = 2
            Text = 'cmbConexiones'
            OnChange = cmbConexionesChange
          end
        end
        object Panel13: TPanel
          Left = 1
          Top = 1
          Width = 592
          Height = 275
          Align = alClient
          Caption = 'Panel13'
          TabOrder = 3
          ExplicitWidth = 562
          ExplicitHeight = 216
          object Label11: TLabel
            Left = 1
            Top = 1
            Width = 590
            Height = 13
            Align = alTop
            Caption = 'Coloque aqui su consulta:'
            ExplicitWidth = 123
          end
          object mConsulta: TMemo
            Left = 1
            Top = 14
            Width = 590
            Height = 260
            Align = alClient
            Lines.Strings = (
              'select :Par   '#39'Hola '#39',:Par   '#39'Hola2 '#39'  from DUAL union'
              'select :Par1 '#39'Hola '#39',:Par1  '#39'Hola2 '#39'  from DUAL union'
              'select :Par2 '#39'Hola '#39',:Par2   '#39'Hola2 '#39' from DUAL ')
            ScrollBars = ssBoth
            TabOrder = 0
            WordWrap = False
            ExplicitWidth = 560
            ExplicitHeight = 201
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Matrix Elementos'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1023
        Height = 550
        Align = alClient
        TabOrder = 0
        object Memo4: TMemo
          Left = 1
          Top = 323
          Width = 1021
          Height = 185
          Align = alBottom
          ScrollBars = ssBoth
          TabOrder = 1
          WordWrap = False
        end
        object Memo1: TMemo
          Left = 1
          Top = 1
          Width = 809
          Height = 322
          Align = alClient
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
        end
        object Memo5: TMemo
          Left = 810
          Top = 1
          Width = 212
          Height = 322
          Align = alRight
          Lines.Strings = (
            'right   = '#39'Rtr'#39';'
            'left     = '#39'Llt'#39';'
            'center = '#39'Cltrb'#39';')
          ScrollBars = ssBoth
          TabOrder = 2
          WordWrap = False
        end
        object Panel8: TPanel
          Left = 1
          Top = 508
          Width = 1021
          Height = 41
          Align = alBottom
          TabOrder = 3
          object Label3: TLabel
            Left = 11
            Top = 20
            Width = 95
            Height = 13
            Caption = 'Nombre de la Matriz'
          end
          object Button3: TButton
            Left = 455
            Top = 7
            Width = 101
            Height = 25
            Caption = 'Ver dise'#241'o'
            TabOrder = 0
            OnClick = Button3Click
          end
          object Button7: TButton
            Left = 342
            Top = 8
            Width = 101
            Height = 25
            Caption = 'Aplica dise'#241'o'
            TabOrder = 1
            OnClick = Button7Click
          end
          object Edit1: TEdit
            Left = 112
            Top = 12
            Width = 214
            Height = 21
            TabOrder = 2
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Eventos'
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1023
        Height = 550
        Align = alClient
        TabOrder = 0
        object Button6: TButton
          Left = 662
          Top = 492
          Width = 75
          Height = 25
          Caption = 'Salir'
          TabOrder = 0
        end
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 1021
          Height = 85
          Align = alTop
          TabOrder = 1
          object Label5: TLabel
            Left = 16
            Top = 46
            Width = 130
            Height = 13
            Caption = 'Selecciona el tipo de accion'
          end
          object Label8: TLabel
            Left = 17
            Top = 24
            Width = 102
            Height = 13
            Caption = 'Nombre de la  accion '
          end
          object Button4: TButton
            Left = 632
            Top = 44
            Width = 105
            Height = 26
            Caption = 'Reemplaza Evento'
            TabOrder = 0
            OnClick = Button4Click
          end
          object ComboBox1: TComboBox
            Left = 205
            Top = 50
            Width = 145
            Height = 21
            TabOrder = 1
            OnChange = ComboBox1Change
            Items.Strings = (
              'EventDisable'
              'EventReadonly'
              'EventEnable'
              'EventFilter'
              'EventGoto'
              'EventReloadCategories'
              'EventReloadQuery'
              'EventExpr'
              'EventReloadVariable'
              'EventValidation')
          end
          object Edit3: TEdit
            Left = 205
            Top = 24
            Width = 141
            Height = 21
            TabOrder = 2
          end
        end
        object Panel10: TPanel
          Left = 1
          Top = 86
          Width = 1021
          Height = 163
          Align = alTop
          TabOrder = 2
          object Label7: TLabel
            Left = 17
            Top = 80
            Width = 52
            Height = 13
            Caption = 'Condition :'
            Visible = False
          end
          object Memo3: TMemo
            Left = 80
            Top = 1
            Width = 940
            Height = 161
            Align = alRight
            Lines.Strings = (
              'function test() {'
              #13'    return true;'#10
              '}')
            TabOrder = 0
            Visible = False
          end
        end
        object Panel11: TPanel
          Left = 1
          Top = 249
          Width = 1021
          Height = 300
          Align = alClient
          TabOrder = 3
          object Label6: TLabel
            Left = 9
            Top = 28
            Width = 104
            Height = 13
            Caption = 'Validate o expresion :'
            Visible = False
          end
          object Memo2: TMemo
            Left = 80
            Top = 1
            Width = 940
            Height = 298
            Align = alRight
            Lines.Strings = (
              'f'
              'u'
              'n'
              'c'
              't'
              'i'
              'o'
              'n '
              't'
              'e'
              's'
              't'
              '('
              ') '
              '{'
              #13' '
              '  '
              'r'
              'e'
              't'
              'u'
              'r'
              'n '
              't'
              'r'
              'u'
              'e'
              ';'#10
              ''
              ''
              '}')
            TabOrder = 0
            Visible = False
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'General'
      ImageIndex = 4
      object Panel2: TPanel
        Left = 3
        Top = 14
        Width = 317
        Height = 54
        TabOrder = 0
        object Label1: TLabel
          Left = 7
          Top = 4
          Width = 290
          Height = 13
          Caption = 'Busca Elemento a inspeccionar por nombre (pagina o grupo )'
        end
        object edt3: TEdit
          Left = 7
          Top = 23
          Width = 203
          Height = 21
          TabOrder = 0
        end
        object btn4: TButton
          Left = 216
          Top = 20
          Width = 97
          Height = 25
          Caption = 'buscar'
          TabOrder = 1
          OnClick = btn4Click
        end
      end
      object BitBtn4: TBitBtn
        Left = 326
        Top = 12
        Width = 109
        Height = 25
        Caption = 'LiberaMemoria'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BitBtn4Click
      end
      object pnl3: TPanel
        Left = 3
        Top = 76
        Width = 183
        Height = 97
        TabOrder = 2
        object chk1: TCheckBox
          Left = 79
          Top = 12
          Width = 97
          Height = 17
          Caption = 'clWindow'
          TabOrder = 0
          OnClick = chk1Click
        end
        object btn8: TBitBtn
          Left = 8
          Top = 8
          Width = 65
          Height = 25
          Caption = 'Color'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = btn8Click
        end
        object btn9: TBitBtn
          Left = 8
          Top = 31
          Width = 65
          Height = 25
          Caption = 'Color Font'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = btn9Click
        end
        object chk2: TCheckBox
          Left = 79
          Top = 35
          Width = 97
          Height = 17
          Caption = 'clWindowText'
          TabOrder = 3
          OnClick = chk2Click
        end
        object btn10: TBitBtn
          Left = 8
          Top = 62
          Width = 169
          Height = 25
          Caption = 'Aplica Cambio de color'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 4
          OnClick = btn10Click
        end
      end
      object Panel6: TPanel
        Left = 207
        Top = 78
        Width = 216
        Height = 93
        TabOrder = 3
        object Label4: TLabel
          Left = 8
          Top = 1
          Width = 189
          Height = 13
          Caption = 'Ejecuta disable o enable  a la pregunta '
        end
        object preG_ena: TEdit
          Left = 8
          Top = 20
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object CheckBox1: TCheckBox
          Left = 7
          Top = 47
          Width = 97
          Height = 12
          Caption = 'activa'
          TabOrder = 1
        end
        object BitBtn1: TBitBtn
          Left = 137
          Top = 18
          Width = 74
          Height = 25
          Caption = 'Ejecuta'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = BitBtn1Click
        end
      end
      object mmoStylo: TMemo
        Left = 3
        Top = 179
        Width = 345
        Height = 89
        Lines.Strings = (
          'mmoStylo')
        ScrollBars = ssBoth
        TabOrder = 4
        WordWrap = False
      end
      object edtStylo: TEdit
        Left = 3
        Top = 274
        Width = 121
        Height = 21
        TabOrder = 5
        Text = '.qtxt'
      end
      object bitBtnStylo: TBitBtn
        Left = 3
        Top = 301
        Width = 75
        Height = 25
        Caption = 'Trae Stylo'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 6
        OnClick = bitBtnStyloClick
      end
      object edtWidth: TEdit
        Left = 440
        Top = 240
        Width = 121
        Height = 21
        TabOrder = 7
        Text = 'edtWidth'
      end
      object edtHeigth: TEdit
        Left = 440
        Top = 267
        Width = 121
        Height = 21
        TabOrder = 8
        Text = 'edtHeigth'
      end
      object bitBtnAjusta: TBitBtn
        Left = 440
        Top = 294
        Width = 75
        Height = 25
        Caption = 'Ajusta'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 9
        OnClick = bitBtnAjustaClick
      end
    end
    object Skips: TTabSheet
      Caption = 'Estados de Saltos Skips'
      ImageIndex = 5
      object skinButton: TPanel
        Left = 0
        Top = 465
        Width = 1023
        Height = 85
        Align = alBottom
        TabOrder = 0
        object columnasalto: TCheckListBox
          Left = 890
          Top = 1
          Width = 132
          Height = 83
          Align = alRight
          Columns = 1
          Enabled = False
          ItemHeight = 13
          Items.Strings = (
            'Secci'#243'n'
            'P'#225'gina'
            'Secci'#243'n Cyclic'
            'Grupo'
            'activa')
          TabOrder = 0
        end
        object Panel15: TPanel
          Left = 650
          Top = 1
          Width = 240
          Height = 83
          Align = alRight
          Caption = 'Panel15'
          TabOrder = 1
          object calSkin: TBitBtn
            Left = 1
            Top = 32
            Width = 233
            Height = 24
            Align = alCustom
            Caption = 'Calcula Lista'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 0
            OnClick = calSkinClick
          end
          object agrupa: TCheckBox
            Left = 133
            Top = 0
            Width = 84
            Height = 17
            Caption = 'Agrupa Saltos'
            TabOrder = 1
            OnClick = agrupaClick
          end
        end
      end
    end
    object lisGuarda: TTabSheet
      Caption = 'Lista Guardo'
      ImageIndex = 6
      object BitBtn2: TBitBtn
        Left = 0
        Top = 493
        Width = 1023
        Height = 57
        Align = alBottom
        Caption = 'Recarga Lista'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = BitBtn2Click
      end
      object jsonGuarda: TAdvMemo
        Left = 0
        Top = 352
        Width = 1023
        Height = 141
        Cursor = crIBeam
        ActiveLineSettings.ShowActiveLine = False
        ActiveLineSettings.ShowActiveLineIndicator = False
        Align = alBottom
        AutoCompletion.Font.Charset = DEFAULT_CHARSET
        AutoCompletion.Font.Color = clWindowText
        AutoCompletion.Font.Height = -11
        AutoCompletion.Font.Name = 'Tahoma'
        AutoCompletion.Font.Style = []
        AutoCorrect.Active = True
        AutoHintParameterPosition = hpBelowCode
        BorderStyle = bsSingle
        CodeFolding.Enabled = False
        CodeFolding.LineColor = clGray
        Ctl3D = False
        DelErase = True
        EnhancedHomeKey = False
        Gutter.DigitCount = 4
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -13
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'COURIER NEW'
        Font.Style = []
        HiddenCaret = False
        Lines.Strings = (
          '')
        MarkerList.UseDefaultMarkerImageIndex = False
        MarkerList.DefaultMarkerImageIndex = -1
        MarkerList.ImageTransparentColor = 33554432
        PrintOptions.MarginLeft = 0
        PrintOptions.MarginRight = 0
        PrintOptions.MarginTop = 0
        PrintOptions.MarginBottom = 0
        PrintOptions.PageNr = False
        PrintOptions.PrintLineNumbers = False
        RightMarginColor = 14869218
        ScrollHint = False
        SelColor = clWhite
        SelBkColor = clNavy
        ShowRightMargin = True
        SmartTabs = False
        TabOrder = 1
        TabSize = 4
        TabStop = True
        TrimTrailingSpaces = False
        UndoLimit = 100
        UrlStyle.TextColor = clBlue
        UrlStyle.BkColor = clWhite
        UrlStyle.Style = [fsUnderline]
        UseStyler = True
        Version = '2.2.7.5'
        WordWrap = wwNone
      end
    end
    object lstsalto: TTabSheet
      Caption = 'lstsalto'
      ImageIndex = 7
      object saltos: TBitBtn
        Left = 0
        Top = 525
        Width = 1023
        Height = 25
        Align = alBottom
        Caption = 'Saltos'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = saltosClick
      end
    end
    object tbError: TTabSheet
      Caption = 'bitacora Error'
      ImageIndex = 8
      object Button2: TButton
        Left = 0
        Top = 0
        Width = 1023
        Height = 25
        Align = alTop
        Caption = 'Actualiza log bd'
        TabOrder = 0
        OnClick = Button2Click
      end
      object pnlError: TPanel
        Left = 0
        Top = 25
        Width = 1023
        Height = 161
        Align = alClient
        TabOrder = 1
      end
      object Panel17: TPanel
        Left = 0
        Top = 186
        Width = 1023
        Height = 364
        Align = alBottom
        TabOrder = 2
        object mmlog: TAdvMemo
          Left = 1
          Top = 33
          Width = 1021
          Height = 330
          Cursor = crIBeam
          ActiveLineSettings.ShowActiveLine = False
          ActiveLineSettings.ShowActiveLineIndicator = False
          Align = alClient
          AutoCompletion.Font.Charset = DEFAULT_CHARSET
          AutoCompletion.Font.Color = clWindowText
          AutoCompletion.Font.Height = -11
          AutoCompletion.Font.Name = 'Tahoma'
          AutoCompletion.Font.Style = []
          AutoCorrect.Active = True
          AutoHintParameterPosition = hpBelowCode
          BorderStyle = bsSingle
          CodeFolding.Enabled = False
          CodeFolding.LineColor = clGray
          Ctl3D = False
          DelErase = True
          EnhancedHomeKey = False
          Gutter.DigitCount = 4
          Gutter.Font.Charset = DEFAULT_CHARSET
          Gutter.Font.Color = clWindowText
          Gutter.Font.Height = -13
          Gutter.Font.Name = 'Courier New'
          Gutter.Font.Style = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'COURIER NEW'
          Font.Style = []
          HiddenCaret = False
          Lines.Strings = (
            '')
          MarkerList.UseDefaultMarkerImageIndex = False
          MarkerList.DefaultMarkerImageIndex = -1
          MarkerList.ImageTransparentColor = 33554432
          PrintOptions.MarginLeft = 0
          PrintOptions.MarginRight = 0
          PrintOptions.MarginTop = 0
          PrintOptions.MarginBottom = 0
          PrintOptions.PageNr = False
          PrintOptions.PrintLineNumbers = False
          RightMarginColor = 14869218
          ScrollHint = False
          SelColor = clWhite
          SelBkColor = clNavy
          ShowRightMargin = True
          SmartTabs = False
          SyntaxStyles = AdvJSStyler
          TabOrder = 0
          TabSize = 4
          TabStop = True
          TrimTrailingSpaces = False
          UndoLimit = 100
          UrlStyle.TextColor = clBlue
          UrlStyle.BkColor = clWhite
          UrlStyle.Style = [fsUnderline]
          UseStyler = True
          Version = '2.2.7.5'
          WordWrap = wwNone
        end
        object Panel16: TPanel
          Left = 1
          Top = 1
          Width = 1021
          Height = 32
          Align = alTop
          TabOrder = 1
          object lblLog: TLabel
            Left = 1
            Top = 1
            Width = 562
            Height = 30
            Align = alClient
            Caption = 'lblLog'
            ExplicitWidth = 27
            ExplicitHeight = 13
          end
          object btnErroJs: TButton
            Left = 705
            Top = 1
            Width = 176
            Height = 30
            Align = alRight
            Caption = 'Carga Archivo de Errores en JS'
            TabOrder = 0
            OnClick = btnErroJsClick
          end
          object btnerror: TButton
            Left = 563
            Top = 1
            Width = 142
            Height = 30
            Align = alRight
            Caption = 'Carga Archivo de Errores'
            TabOrder = 1
            OnClick = btnerrorClick
          end
          object Button5: TButton
            Left = 881
            Top = 1
            Width = 139
            Height = 30
            Align = alRight
            Caption = 'Carga Archivo de Log JS'
            TabOrder = 2
            OnClick = Button5Click
          end
        end
      end
    end
    object tabMatrizEstados__: TTabSheet
      Caption = 'Matriz de estados GridX'
      ImageIndex = 9
      OnShow = tabMatrizEstados__Show
      object mallaGCyclicMatrizEstados: TcxGrid
        Left = 0
        Top = 69
        Width = 1023
        Height = 440
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object viewGCyclicMatriz: TcxGridTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<No hay grupo ciclico seleccionado>'
          OptionsView.GroupByBox = False
        end
        object mallaGCyclicMatrizEstadosLevel1: TcxGridLevel
          GridView = viewGCyclicMatriz
        end
      end
      object Panel18: TPanel
        Left = 0
        Top = 0
        Width = 1023
        Height = 69
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label15: TLabel
          Left = 41
          Top = 22
          Width = 125
          Height = 13
          Caption = 'Nombre del Grupo Ciclico :'
        end
        object cbGCyclic: TComboBox
          Left = 172
          Top = 19
          Width = 305
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 0
          OnChange = cbGCyclicChange
        end
      end
      object Panel19: TPanel
        Left = 0
        Top = 509
        Width = 1023
        Height = 41
        Align = alBottom
        TabOrder = 2
        object Button8: TButton
          Left = 830
          Top = 1
          Width = 192
          Height = 39
          Align = alRight
          Caption = 'Actualizar Estados'
          TabOrder = 0
          OnClick = Button8Click
        end
      end
    end
    object GridxEventos: TTabSheet
      Caption = 'GridxEventos'
      ImageIndex = 10
      object Panel20: TPanel
        Left = 0
        Top = 499
        Width = 1023
        Height = 51
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object Button9: TButton
          Left = 886
          Top = 0
          Width = 137
          Height = 51
          Align = alRight
          Caption = 'Limpiar'
          TabOrder = 0
          OnClick = Button9Click
        end
      end
      object mmoGridxEventos: TMemo
        Left = 0
        Top = 0
        Width = 1023
        Height = 499
        Align = alClient
        Lines.Strings = (
          'mmoGridxEventos')
        TabOrder = 1
      end
    end
  end
  object zqConsultas: TZQuery
    Params = <>
    Left = 944
  end
  object ds_c: TDataSource
    DataSet = zqConsultas
    Left = 888
  end
  object AdvJSStyler: TAdvJSMemoStyler
    BlockStart = '{'
    BlockEnd = '}'
    LineComment = '//'
    MultiCommentLeft = '/*'
    MultiCommentRight = '*/'
    CommentStyle.TextColor = clSilver
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clNavy
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          '('
          ')'
          ';'
          '{'
          '}'
          'break'
          'do'
          'document'
          'else'
          'for'
          'function'
          'if'
          'location'
          'object'
          'return'
          'script'
          'style'
          'switch'
          'then'
          'this'
          'var'
          'while'
          'window'
          'window')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'Script Standard Default'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = #39
        BracketEnd = #39
        Info = 'Simple Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ' ,;:.()[]=-*/^%<>#'#13#10
        Info = 'Symbols Delimiters'
      end
      item
        KeyWords.Strings = (
          'alert'
          'confirm'
          'focus'
          'indexof'
          'prompt'
          'select'
          'write')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'JavaScript Functions'
      end>
    Description = 'JavaScript'
    Filter = 'Javascript Files (*.js)|*.js'
    DefaultExtension = '.js'
    StylerName = 'JavaScript'
    Extensions = 'js'
    Left = 760
    Top = 8
  end
  object keyPress: TTimer
    Enabled = False
    Interval = 10
    Left = 848
  end
end
