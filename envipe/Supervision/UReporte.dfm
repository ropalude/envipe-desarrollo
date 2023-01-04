object FReporte: TFReporte
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FReporte'
  ClientHeight = 920
  ClientWidth = 1288
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 19
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 0
    Top = 10
    Width = 1288
    Height = 900
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 10
    ActivePage = d2
    Align = alClient
    TabOrder = 0
    object A1: TTabSheet
      Caption = 'A'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1280
        Height = 890
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel12: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 250
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label16: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 306
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Se ubic'#243' correctamente en campo?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label17: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '03'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object a32: TIACheckControl
            Tag = 2
            Left = 982
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a33: TIACheckControl
            Tag = 3
            Left = 1036
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a31: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel13: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 79
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 10
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label18: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1083
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = 
              'A. Ubicaci'#243'n en el '#225'rea de trabajo                              ' +
              '                                                                ' +
              '      SI       NO     N/A'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
        object Panel15: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 122
          Width = 1280
          Height = 55
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Label19: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 491
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'El/la Entrevistador, tiene su carga de trabajo organizada?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label20: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '01'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object a12: TIACheckControl
            Tag = 2
            Left = 985
            Top = 16
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a13: TIACheckControl
            Tag = 1
            Left = 1039
            Top = 16
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a11: TIACheckControl
            Tag = 3
            Left = 926
            Top = 16
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel16: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 197
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          object Label21: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 635
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'Cuenta con listados de viviendas y croquis a papel de su carga ' +
              'de trabajo?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label22: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '02'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object a22: TIACheckControl
            Tag = 2
            Left = 984
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a23: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a21: TIACheckControl
            Tag = 1
            Left = 931
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel17: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 356
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 4
          object Label23: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 676
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'La descripci'#243'n y referencias de la vivienda coincide con lo loc' +
              'alizado en campo?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label24: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '05'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object a52: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a53: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a51: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel18: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 303
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 5
          object Label25: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 429
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Identific'#243' correctamente la vivienda seleccionada?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label26: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '04'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object a42: TIACheckControl
            Tag = 2
            Left = 984
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a43: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a41: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel6: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1274
          Height = 73
          Align = alTop
          BevelOuter = bvNone
          DoubleBuffered = False
          ParentDoubleBuffered = False
          TabOrder = 6
          object Label5: TLabel
            AlignWithMargins = True
            Left = 10
            Top = 10
            Width = 1230
            Height = 46
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Align = alClient
            Caption = 
              'Indicaciones: La siguiente lista corresponde a las actividades q' +
              'ue debe desarrollar el/la Entrevistador, marca con una "X" segun' +
              ' corresponda, o en su defecto selecciona del combo lo que corres' +
              'ponda.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            WordWrap = True
          end
        end
      end
    end
    object A2: TTabSheet
      Caption = 'A'
      ImageIndex = 6
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel55: TPanel
        Left = 0
        Top = 43
        Width = 1280
        Height = 847
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel31: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 149
          Width = 1280
          Height = 57
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label63: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 541
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'Se le facilit'#243' la b'#250'squeda de la UPM y la vivienda en el sistem' +
              'a?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label65: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '07'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object a72: TIACheckControl
            Tag = 2
            Left = 984
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a73: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a71: TIACheckControl
            Tag = 1
            Left = 928
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel43: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 226
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label74: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 505
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'El croquis de vivienda coincide con lo localizado en campo?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label75: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '08'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object a82: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a83: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a81: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Label14: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 445
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Los croquis de vivienda se encuentran actualizados?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label15: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '06'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object a62: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            OnChangeState = a62ChangeState
            AutoSize = True
          end
          object a63: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object a61: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel28: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 53
          Width = 1280
          Height = 76
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          object Label54: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 321
            Height = 70
            Margins.Right = 0
            Align = alLeft
            Caption = '  Solo si la respuesta es NO, registre la fecha.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 19
          end
          object a7Fecha: TDateTimePicker
            Left = 400
            Top = 30
            Width = 186
            Height = 31
            Date = 43507.417293495370000000
            Time = 43507.417293495370000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel36: TPanel
          Left = -4
          Top = 36
          Width = 741
          Height = 41
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 
            '                                                                ' +
            '             DD                MM                   AAAA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
      object Panel71: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 1280
        Height = 33
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 10
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label8: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1089
          Height = 23
          Margins.Right = 10
          Align = alLeft
          Caption = 
            'A. Ubicaci'#243'n en el '#225'rea de trabajo                              ' +
            '                                                                ' +
            '       SI       NO     N/A'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
      end
    end
    object B: TTabSheet
      Caption = 'B'
      ImageIndex = 2
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1280
        Height = 890
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel14: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 149
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label34: TLabel
            AlignWithMargins = True
            Left = 176
            Top = 3
            Width = 645
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              ' entrevista, '#191'registr'#243' el resultado y la situaci'#243'n de la viviend' +
              'a correctamente?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label35: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '11'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object Label11: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 98
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 'En caso de '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label12: TLabel
            AlignWithMargins = True
            Left = 141
            Top = 3
            Width = 32
            Height = 25
            Margins.Right = 0
            Align = alLeft
            Caption = 'NO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b72: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b73: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b71: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel19: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 10
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label29: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1087
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = 
              'B. Entrevista (Contacto inicial)                                ' +
              '                                                                ' +
              '         SI       NO     N/A'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
        object Panel20: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 43
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Label30: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 355
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Porta su credencial y uniforme completo?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label31: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '09'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b52: TIACheckControl
            Tag = 2
            Left = 985
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b53: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b51: TIACheckControl
            Tag = 1
            Left = 931
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel21: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 96
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          object Label32: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 538
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'Seleccion'#243' la vivienda en el sistema antes de tocar a la puerta' +
              '?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label33: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '10'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b62: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b63: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b61: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel23: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 202
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 4
          object Label36: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 671
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'Se identific'#243' como representante del INEGI y mencion'#243' el motivo' +
              ' de la visita?  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label37: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '12'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b82: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b83: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b81: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
      end
    end
    object C: TTabSheet
      Caption = 'C'
      ImageIndex = 5
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel44: TPanel
        Left = 0
        Top = 0
        Width = 1280
        Height = 762
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel46: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 135
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label76: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 822
            Height = 27
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'Cu'#225'ntas personas viven en la vivienda? (sistema combo de N/A 1 ' +
              'al 30 / papel anote la cantidad)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
          object Label77: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 27
            Margins.Right = 10
            Align = alLeft
            Caption = '14'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
          object b12: TComboBox
            AlignWithMargins = True
            Left = 991
            Top = 3
            Width = 137
            Height = 27
            Margins.Left = 615
            Style = csDropDownList
            TabOrder = 0
            TextHint = 'Seleccione'
            Items.Strings = (
              'NA'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10'
              '11'
              '12'
              '13'
              '14'
              '15'
              '16'
              '17'
              '18'
              '19'
              '20'
              '21'
              '22'
              '23'
              '24'
              '25'
              '26'
              '27'
              '28'
              '29'
              '30')
          end
        end
        object Panel51: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 10
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label89: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1090
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = 
              'C. Datos de la Vivienda                                         ' +
              '                                                                ' +
              '             SI       NO     N/A'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
        object Panel58: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 294
          Width = 1280
          Height = 47
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Label101: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 481
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Identific'#243' correctamente al/a  informante seleccionado? '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label102: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '17'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b142: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b143: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b141: TIACheckControl
            Tag = 1
            Left = 928
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            OnChangeState = b141ChangeState
            AutoSize = True
          end
        end
        object Panel60: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 241
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          object Label105: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 534
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Registr'#243' a los integrantes de cada hogar en el orden correcto?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label106: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '16'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b112: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b113: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b111: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel61: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 188
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 4
          object Label107: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 757
            Height = 23
            Margins.Right = 0
            Caption = 
              #191'Cu'#225'ntos hogares existen en la vivienda? (combo de N/A 1 al 6  /' +
              ' papel anote la cantidad)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label108: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 27
            Margins.Right = 10
            Align = alLeft
            Caption = '15'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
          object b10: TComboBox
            AlignWithMargins = True
            Left = 991
            Top = 3
            Width = 137
            Height = 27
            Margins.Left = 608
            Style = csDropDownList
            TabOrder = 0
            TextHint = 'Seleccione'
            Items.Strings = (
              'NA'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6')
          end
        end
        object Panel7: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 364
          Width = 1274
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 5
          object Label39: TLabel
            Left = 33
            Top = 14
            Width = 540
            Height = 19
            Caption = 
              'Solo si la respuesta es S'#237', Registra el nombre del informante se' +
              'leccionado(a)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object d24informante: TEdit
            Left = 579
            Top = 8
            Width = 670
            Height = 27
            MaxLength = 100
            TabOrder = 0
            OnKeyPress = d24informanteKeyPress
          end
        end
        object Panel9: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 99
          Width = 1274
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 6
          object Label10: TLabel
            AlignWithMargins = True
            Left = 37
            Top = 0
            Width = 540
            Height = 19
            Caption = 
              'Solo si la respuesta es S'#237', Registra el nombre del/de la Informa' +
              'nte adecuado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object b15informante: TEdit
            Left = 592
            Top = 0
            Width = 657
            Height = 27
            MaxLength = 100
            TabOrder = 0
            OnKeyPress = b15informanteKeyPress
          end
        end
        object Panel22: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 43
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 7
          object Label9: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 718
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'Identific'#243' correctamente al/a la informante adecuado? (resident' +
              'e mayor de 18 a'#241'os)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label38: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '13'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b92: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b93: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b91: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            OnChangeState = b91ChangeState
            AutoSize = True
          end
        end
      end
    end
    object D1: TTabSheet
      Caption = 'D'
      ImageIndex = 3
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel24: TPanel
        Left = 0
        Top = 0
        Width = 1280
        Height = 890
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel27: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 10
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label46: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1133
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = 
              'D. Entrevista (Conducci'#243'n y cierre)                             ' +
              '                                                                ' +
              '             SI       NO     N/A'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
        object Panel45: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 135
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label55: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 517
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Dio el tiempo necesario para que el informante respondiera?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label78: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '19'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b162: TIACheckControl
            Tag = 2
            Left = 1032
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            OnChangeState = b162ChangeState
            AutoSize = True
          end
          object b163: TIACheckControl
            Tag = 3
            Left = 1086
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b161: TIACheckControl
            Tag = 1
            Left = 978
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel32: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 227
          Width = 1280
          Height = 86
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Label27: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 1111
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'Cuando una pregunta no se comprende, el/la Entrevistador lee nu' +
              'evamente o bien usa otras palabras para su mejor comprensi'#243'n?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label28: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '20'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b171: TIACheckControl
            Tag = 1
            Left = 978
            Top = 58
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b172: TIACheckControl
            Tag = 2
            Left = 1032
            Top = 58
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            OnChangeState = b172ChangeState
            AutoSize = True
          end
          object b173: TIACheckControl
            Tag = 3
            Left = 1086
            Top = 58
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel33: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 43
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          object Label56: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 401
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Ley'#243' textualmente cada una de las preguntas?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label57: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '18'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b152: TIACheckControl
            Tag = 2
            Left = 1032
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            OnChangeState = b152ChangeState
            AutoSize = True
          end
          object b153: TIACheckControl
            Tag = 3
            Left = 1086
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b151: TIACheckControl
            Tag = 1
            Left = 978
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 372
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 4
          object Label1: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 216
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Se utilizaron las tarjetas?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label2: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b181: TIACheckControl
            Tag = 1
            Left = 978
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b182: TIACheckControl
            Tag = 2
            Left = 1032
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            OnChangeState = b182ChangeState
            AutoSize = True
          end
          object b183: TIACheckControl
            Tag = 3
            Left = 1086
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 517
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 5
          object Label3: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 638
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'El/la Entrevistador dio el tiempo necesario para que se leyeran' +
              ' las tarjetas?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '23'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b202: TIACheckControl
            Tag = 2
            Left = 1032
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b203: TIACheckControl
            Tag = 3
            Left = 1086
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b201: TIACheckControl
            Tag = 1
            Left = 978
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel30: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 464
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 6
          object Label51: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 411
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'El/la Entrevistador explic'#243' el uso de las tarjetas?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label52: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '22'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b192: TIACheckControl
            Tag = 2
            Left = 1032
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b193: TIACheckControl
            Tag = 3
            Left = 1086
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b191: TIACheckControl
            Tag = 1
            Left = 978
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel50: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 428
          Width = 1274
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 7
          object Label58: TLabel
            AlignWithMargins = True
            Left = 33
            Top = 0
            Width = 349
            Height = 19
            Caption = 'Solo si la respuesta es NO. Especifique '#191'Por qu'#233'?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object b15especifique: TEdit
            Left = 477
            Top = 0
            Width = 772
            Height = 27
            MaxLength = 500
            TabOrder = 0
            OnKeyPress = b15especifiqueKeyPress
          end
        end
        object Panel56: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 336
          Width = 1274
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 8
          object Label59: TLabel
            AlignWithMargins = True
            Left = 33
            Top = 0
            Width = 340
            Height = 19
            Caption = 'Solo si la respuesta es NO. Especifique '#191'Cu'#225'les?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object b14especifique: TEdit
            Left = 477
            Top = 6
            Width = 772
            Height = 27
            MaxLength = 500
            TabOrder = 0
            OnKeyPress = b14especifiqueKeyPress
          end
        end
        object Panel57: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 191
          Width = 1274
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 9
          object Label60: TLabel
            AlignWithMargins = True
            Left = 33
            Top = 0
            Width = 349
            Height = 19
            Caption = 'Solo si la respuesta es NO. Especifique '#191'Por qu'#233'?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object b13especifique: TEdit
            Left = 477
            Top = 0
            Width = 772
            Height = 27
            MaxLength = 500
            TabOrder = 0
            OnKeyPress = b13especifiqueKeyPress
          end
        end
        object Panel59: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 99
          Width = 1274
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 10
          object Label61: TLabel
            AlignWithMargins = True
            Left = 33
            Top = 0
            Width = 340
            Height = 19
            Caption = 'Solo si la respuesta es NO. Especifique '#191'Cu'#225'les?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object b12especifique: TEdit
            Left = 477
            Top = 0
            Width = 772
            Height = 27
            MaxLength = 500
            TabOrder = 0
            OnKeyPress = b12especifiqueKeyPress
          end
        end
      end
    end
    object d2: TTabSheet
      Caption = 'D'
      ImageIndex = 7
      TabVisible = False
      object Panel68: TPanel
        Left = 0
        Top = 0
        Width = 1280
        Height = 890
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel64: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 43
          Width = 1280
          Height = 36
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label90: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 509
            Height = 30
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Fue complicado para el/la informante el uso de las tarjetas?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
          object Label97: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 30
            Margins.Right = 10
            Align = alLeft
            Caption = '24'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
          object b212: TIACheckControl
            Tag = 2
            Left = 1032
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b213: TIACheckControl
            Tag = 3
            Left = 1086
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b211: TIACheckControl
            Tag = 1
            Left = 978
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            OnChangeState = b211ChangeState
            AutoSize = True
          end
        end
        object Panel35: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 102
          Width = 1274
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label41: TLabel
            AlignWithMargins = True
            Left = 33
            Top = 0
            Width = 341
            Height = 19
            Caption = 'Solo si la respuesta es S'#205'. Especifique '#191'Por qu'#233'?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object b17especifique: TEdit
            Left = 477
            Top = 0
            Width = 772
            Height = 27
            MaxLength = 500
            TabOrder = 0
            OnKeyPress = b17especifiqueKeyPress
          end
        end
        object Panel63: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 138
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Label87: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 266
            Height = 27
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Los cintillos se leen completos?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
          object Label88: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 27
            Margins.Right = 10
            Align = alLeft
            Caption = '25'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
          object b222: TIACheckControl
            Tag = 2
            Left = 1032
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            OnChangeState = b222ChangeState
            AutoSize = True
          end
          object b223: TIACheckControl
            Tag = 3
            Left = 1086
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b221: TIACheckControl
            Tag = 1
            Left = 978
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel34: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 194
          Width = 1274
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Label40: TLabel
            AlignWithMargins = True
            Left = 34
            Top = 0
            Width = 340
            Height = 19
            Caption = 'Solo si la respuesta es NO. Especifique '#191'Cu'#225'les?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object b18especifique: TEdit
            Left = 477
            Top = 0
            Width = 772
            Height = 27
            MaxLength = 500
            TabOrder = 0
            OnKeyPress = b18especifiqueKeyPress
          end
        end
        object Panel29: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 230
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 4
          object Label49: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 311
            Height = 27
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Se levant'#243' M'#243'dulo de Victimizaci'#243'n?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
          object Label50: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 27
            Margins.Right = 10
            Align = alLeft
            Caption = '26'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
          object b232: TIACheckControl
            Tag = 2
            Left = 1032
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b233: TIACheckControl
            Tag = 3
            Left = 1086
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b231: TIACheckControl
            Tag = 1
            Left = 978
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            OnChangeState = b231ChangeState
            AutoSize = True
          end
        end
        object Panel62: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 283
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 5
          object Label79: TLabel
            AlignWithMargins = True
            Left = 58
            Top = 3
            Width = 674
            Height = 19
            Margins.Right = 0
            Caption = 
              'Solo si la respuesta es S'#237'. Especifique '#191'Cu'#225'ntos? (combo del 1 a' +
              'l 115 / papel anote la cantidad)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label13: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 42
            Height = 23
            Margins.Right = 10
            Caption = '26.1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b13: TComboBox
            AlignWithMargins = True
            Left = 978
            Top = 3
            Width = 143
            Height = 27
            Margins.Left = 608
            Style = csDropDownList
            TabOrder = 0
            TextHint = 'Seleccione'
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10'
              '11'
              '12'
              '13'
              '14'
              '15'
              '16'
              '17'
              '18'
              '19'
              '20'
              '21'
              '22'
              '23'
              '24'
              '25'
              '26'
              '27'
              '28'
              '29'
              '30'
              '31'
              '32'
              '33'
              '34'
              '35'
              '36'
              '37'
              '38'
              '39'
              '40'
              '41'
              '42'
              '43'
              '44'
              '45'
              '46'
              '47'
              '48'
              '49'
              '50'
              '51'
              '52'
              '53'
              '54'
              '55'
              '56'
              '57'
              '58'
              '59'
              '60'
              '61'
              '62'
              '63'
              '64'
              '65'
              '66'
              '67'
              '68'
              '69'
              '70'
              '71'
              '72'
              '73'
              '74'
              '75'
              '76'
              '77'
              '78'
              '79'
              '80'
              '81'
              '82'
              '83'
              '84'
              '85'
              '86'
              '87'
              '88'
              '89'
              '90'
              '91'
              '92'
              '93'
              '94'
              '95'
              '96'
              '97'
              '98'
              '99'
              '100'
              '101'
              '102'
              '103'
              '104'
              '105'
              '106'
              '107'
              '108'
              '109'
              '110'
              '111'
              '112'
              '113'
              '114'
              '115')
          end
        end
        object Panel65: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 336
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 6
          object Label80: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 706
            Height = 27
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'Durante toda la entrevista el/la Entrevistador se mostr'#243' cordia' +
              'l, paciente y amable?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
          object Label99: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 27
            Margins.Right = 10
            Align = alLeft
            Caption = '27'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
          object b242: TIACheckControl
            Tag = 2
            Left = 1032
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b243: TIACheckControl
            Tag = 3
            Left = 1086
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b241: TIACheckControl
            Tag = 1
            Left = 978
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel25: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 389
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 7
          object Label42: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 795
            Height = 27
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'El/la entrevistador mencion'#243' la posibilidad de realizar una vis' +
              'ita de verificaci'#243'n en la vivienda?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
          object Label43: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 27
            Margins.Right = 10
            Align = alLeft
            Caption = '28'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
          object b252: TIACheckControl
            Tag = 2
            Left = 1032
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b253: TIACheckControl
            Tag = 3
            Left = 1086
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b251: TIACheckControl
            Tag = 1
            Left = 978
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel72: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 10
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 8
          object Label98: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1139
            Height = 27
            Margins.Right = 10
            Align = alLeft
            Caption = 
              'D. Entrevista (Conducci'#243'n y cierre)                             ' +
              '                                                                ' +
              '              SI       NO     N/A'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 23
          end
        end
      end
    end
    object E: TTabSheet
      Caption = 'E'
      ImageIndex = 4
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel37: TPanel
        Left = 0
        Top = 0
        Width = 1280
        Height = 890
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel40: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 280
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label68: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 458
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Son claros y f'#225'ciles de leer los textos de las pantallas?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label69: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '32'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object c192: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c193: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c191: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel54: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 386
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label95: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 431
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Fue complicado el manejo del sistema iktan m'#243'vil?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label96: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '34'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object c212: TIACheckControl
            Tag = 2
            Left = 985
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c213: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c211: TIACheckControl
            Tag = 1
            Left = 931
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 10
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1087
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = 
              'E. Dispositvo M'#243'vil (MEEBOX)                                    ' +
              '                                                                ' +
              '      SI       NO     N/A'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
        object Panel39: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 439
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          object Label66: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 536
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'El sistema asign'#243' correcto el c'#243'digo de resultado a la vivienda' +
              '?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label67: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '35'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object c222: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c223: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c221: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel41: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 135
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 4
          object Label70: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 832
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'El sistema fall'#243' al grado de tener que continuar la entrevista ' +
              'a papel o bien reiniciar el dispositivo?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label71: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '30'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object c172: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c173: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c171: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            OnChangeState = c171ChangeState
            AutoSize = True
          end
        end
        object Panel52: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 333
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 5
          object Label91: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 604
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'El tiempo de respuesta al pasar de una pantalla a otra, es adec' +
              'uado?  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label92: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '33'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object c202: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c203: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c201: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel42: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 43
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 6
          object Label72: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 443
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'La entrevista se levant'#243' en cuestionario electr'#243'nico?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label73: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '29'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object b262: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            OnChangeState = b262ChangeState
            AutoSize = True
          end
          object b263: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object b261: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel66: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 191
          Width = 1274
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 7
          object Label100: TLabel
            AlignWithMargins = True
            Left = 37
            Top = 33
            Width = 319
            Height = 19
            Caption = 'Solo si la respuesta es S'#237'. Especifique la falla.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label64: TLabel
            AlignWithMargins = True
            Left = 41
            Top = 0
            Width = 319
            Height = 19
            Caption = 'Solo si la respuesta es S'#237'. Especifique la falla.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object e43especifique: TEdit
            Left = 477
            Top = 0
            Width = 772
            Height = 27
            MaxLength = 500
            TabOrder = 0
            OnKeyPress = e43especifiqueKeyPress
          end
        end
        object Panel67: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 99
          Width = 1274
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 8
          object Label103: TLabel
            AlignWithMargins = True
            Left = 41
            Top = 33
            Width = 336
            Height = 19
            Caption = 'Solo si la respuesta es No, Especifique la raz'#243'n.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel
            AlignWithMargins = True
            Left = 41
            Top = 0
            Width = 336
            Height = 19
            Caption = 'Solo si la respuesta es No, Especifique la raz'#243'n.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object b23especifique: TEdit
            Left = 477
            Top = 0
            Width = 772
            Height = 27
            MaxLength = 500
            TabOrder = 0
            OnKeyPress = b23especifiqueKeyPress
          end
        end
        object Panel53: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 227
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 9
          object Label93: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 367
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Utiliz'#243' el apartado de notas y comentarios?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label94: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '31'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object c182: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c183: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c181: TIACheckControl
            Tag = 1
            Left = 931
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'E'
      ImageIndex = 8
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel69: TPanel
        Left = 0
        Top = 0
        Width = 1280
        Height = 890
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel70: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 10
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1087
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = 
              'E. Dispositvo M'#243'vil (MEEBOX)                                    ' +
              '                                                                ' +
              '      SI       NO     N/A'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
        object Panel11: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 43
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label45: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 238
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Utiliz'#243' la cartograf'#237'a digital?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label47: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '36'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object c232: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c233: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c231: TIACheckControl
            Tag = 1
            Left = 928
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel47: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 96
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Label81: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 822
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'La visualizaci'#243'n de im'#225'genes de los croquis y ruta de acceso es' +
              ' adecuada en el dispositivo m'#243'vil?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label82: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '37'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object c242: TIACheckControl
            Tag = 2
            Left = 985
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c243: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c241: TIACheckControl
            Tag = 1
            Left = 931
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel49: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 149
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          object Label85: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 493
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'La duraci'#243'n de la pila es suficiente para la jornada diaria?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label86: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '38'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object c262: TIACheckControl
            Tag = 2
            Left = 985
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c263: TIACheckControl
            Tag = 3
            Left = 1038
            Top = 1
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c261: TIACheckControl
            Tag = 1
            Left = 931
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel48: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 202
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 4
          object Label83: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 512
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = #191'Trae consigo los cables de corriente, para conectarse?'#9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label84: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '39'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object c272: TIACheckControl
            Tag = 2
            Left = 985
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c273: TIACheckControl
            Tag = 3
            Left = 1039
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c271: TIACheckControl
            Tag = 1
            Left = 931
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
        object Panel26: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 255
          Width = 1280
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 5
          object Label48: TLabel
            AlignWithMargins = True
            Left = 40
            Top = 3
            Width = 623
            Height = 23
            Margins.Right = 0
            Align = alLeft
            Caption = 
              #191'Realiz'#243' un respaldo de la informaci'#243'n en la USB al terminar la ' +
              'entrevista?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label53: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 23
            Margins.Right = 10
            Align = alLeft
            Caption = '40'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object c282: TIACheckControl
            Tag = 2
            Left = 985
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 0
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c283: TIACheckControl
            Tag = 3
            Left = 1039
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 1
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
          object c281: TIACheckControl
            Tag = 1
            Left = 931
            Top = 3
            Width = 48
            Height = 32
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = '  '
            Enabled = True
            Visible = True
            TabOrder = 2
            TabStop = True
            ControlType = iacctSelect
            TextLines.Strings = (
              '  ')
            GroupIndex = 1
            Checked = False
            Style = iaccsBitmap
            ImageList = ImageList1
            TextFieldVerticalAlign = iacctvaCenter
            ShowFocus = False
            AutoSize = True
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Observaciones'
      ImageIndex = 8
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel38: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 1280
        Height = 33
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 10
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object oObservaciones: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 139
          Height = 23
          Margins.Right = 10
          Align = alLeft
          Caption = 'Observaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
      end
      object observaciones: TMemo
        AlignWithMargins = True
        Left = 20
        Top = 43
        Width = 1240
        Height = 278
        Margins.Left = 20
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alTop
        CharCase = ecUpperCase
        Lines.Strings = (
          'MEMO2')
        MaxLength = 500
        TabOrder = 1
        OnKeyPress = observacionesKeyPress
      end
      object Panel73: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 321
        Width = 1280
        Height = 50
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 10
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object oPuestoSupervisor: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 175
          Height = 44
          Margins.Right = 0
          Align = alLeft
          Caption = 'Puesto de Supervisor(a):'
          Layout = tlCenter
          ExplicitHeight = 19
        end
        object puestos: TComboBox
          AlignWithMargins = True
          Left = 201
          Top = 15
          Width = 608
          Height = 27
          Margins.Left = 550
          TabOrder = 0
          Text = 'Seleccione'
          Items.Strings = (
            '(SR)    Supervisor Regional'
            '(SC)    Supervisor Central'
            '(JD)    Jefe de Departamento'
            '(ROE) Responsable de Operativos de Proyectos Especiales'
            '(SP)    Subl'#237'der de Proyecto'
            '(AI)    Analista de Informaci'#243'n')
        end
      end
      object Panel74: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 381
        Width = 1280
        Height = 50
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 10
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 3
        object oNombreSupervisor: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 189
          Height = 19
          Margins.Right = 0
          Align = alLeft
          Caption = 'Nombre del Supervisor(a):'
          Layout = tlCenter
        end
        object nombre_sup: TEdit
          AlignWithMargins = True
          Left = 201
          Top = 14
          Width = 608
          Height = 27
          Margins.Left = 500
          Margins.Top = 0
          Margins.Bottom = 0
          MaxLength = 100
          TabOrder = 0
          OnKeyPress = nombre_supKeyPress
        end
      end
      object pnl31: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 501
        Width = 1280
        Height = 50
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 10
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 4
        object codRes: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 148
          Height = 44
          Margins.Right = 0
          Align = alLeft
          Caption = 'C'#243'digo de resultado:'
          Layout = tlCenter
          ExplicitHeight = 19
        end
        object codResCaptura: TComboBox
          AlignWithMargins = True
          Left = 201
          Top = 12
          Width = 608
          Height = 27
          Margins.Left = 550
          TabOrder = 0
          Text = 'Seleccione'
          Items.Strings = (
            '00 Sin iniciar '
            '01 Entrevista completa con victimizaci'#243'n'
            '02 Entrevista completa sin victimizaci'#243'n'
            '03 Entrevista pendiente del seleccionado(a) '
            '04 Entrevista incompleta '
            '05 Entrevista concertada '
            '06 Informante inadecuado '
            '07 Ausencia de ocupantes '
            '08 Negativa  '
            '09 Vivienda deshabitada'
            '10 Vivienda de uso temporal  '
            
              '11 Vivienda con uso diferente al habitacional demolida o en ruin' +
              'as  '
            '12 '#193'rea insegura'
            '13 Otra situaci'#243'n')
        end
      end
      object Panel75: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 441
        Width = 1280
        Height = 50
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 10
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 5
        object oAmbito: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 58
          Height = 44
          Margins.Right = 0
          Align = alLeft
          Caption = 'Ambito:'
          Layout = tlCenter
          ExplicitHeight = 19
        end
        object ambito: TComboBox
          AlignWithMargins = True
          Left = 201
          Top = 11
          Width = 608
          Height = 27
          Margins.Left = 550
          ParentColor = True
          TabOrder = 0
          Text = 'Seleccione'
          Items.Strings = (
            '1 Central'
            '2 Regional'
            '3 Estatal')
        end
      end
    end
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 1248
    Top = 832
    Bitmap = {
      494C010104004400580220002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00E8E8E800929292009B9B9B009C9C9C009B9B9B009D9D9D008E8E8E00FBFB
      FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EEEEEE00C3C3C300C2C2C200E6E6E600FBFBFB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
      FB00EFEFEF00969696009D9D9D009A9A9A0099999900999999008C8C8C00FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00EBEBEB00959595009C9C9C009B9B9B00999999009C9C9C008D8D8D00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F8009D9D9D009B9B
      9B009D9D9D009D9D9D00B6B6B600C9C9C900BFBFBF00A6A6A600959595009C9C
      9C008E8E8E00BDBDBD00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008B86
      87009A989800989A9A00989C9700969A9B00959D9600999B950096999E009D9D
      9D0095959500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009B9B9B009797
      97009B9B9B009D9D9D00B7B7B700CFCFCF00C4C4C400A9A9A900959595009B9B
      9B0093939300B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA009D9D9D009B9B
      9B009A9A9A009D9D9D00B6B6B600CACACA00C0C0C000A6A6A600969696009A9A
      9A0090909000BCBCBC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00A0A0A000A2A2A200DFDF
      DF00DADADA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8D8
      D800A5A5A50097979700A1A1A100FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AAAAAA00A2A2A2009A9F
      9E00DAD5D600E2D1D400BEA29B00B68A7900B6937900C6AE9C00EFDFD300C0C7
      C40093919100979797009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00A4A4A400A2A2A200ECEC
      EC00A8A8A800DADADA00E7E7E700EAEAEA00F0F0F000F5F5F500C3C3C300E3E3
      E300A3A3A300969696009B9B9B00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A2A2A200A3A3A300E9E9
      E900AFAFAF007A7A7A007F7F7F008E8E8E0095959500A3A3A30098989800E2E2
      E200A5A5A50099999900A0A0A000FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CACACA00A9A9A900D8D8D800E0E0E000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00FFFFFF00D9D9D900979797009A9A9A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F9F9F900A2A2A200A6AAA400E8E3E500C1A3
      90008E3B0E00A3470000B4521200BB5D1C00C3692900C9713500CC7C3D00CC84
      5500D0B2A100C0C5C6009F9A9C0096969600FBFBFB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C3C3C300ADADAD00D4D4D4009F9F9F00D0D0
      D000DADADA00DEDEDE00E3E3E300E7E7E700ECECEC00EFEFEF00F3F3F300FBFB
      FB00F5F5F500E3E3E300979797009D9D9D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C8C8C800A9A9A900D9D9D900A6A6A6006464
      640068686800737373007E7E7E0088888800939393009D9D9D00A5A5A500AFAF
      AF00B9B9B900F0F0F000989898009B9B9B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00B3B3B300DDDDDD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D5D5D500959595009B9B9B00F8F8F800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00ADADAD00ACACAC00CCCED60088300C00923F
      00009D3C0200A73E0D00AC4F1200B2591C00BE652C00C36D3700D0764700CE80
      5500D3925B00D98D6900E5E7DB009E9E9E009B9B9B00F9F9F900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FAFAFA00B1B1B100E6E6E600B3B3B300CFCFCF00D2D2
      D200D4D4D400DADADA00DFDFDF00E3E3E300E8E8E800EBEBEB00F0F0F000F4F4
      F400F6F6F600F8F8F800B5B5B5009D9D9D009B9B9B00F9F9F900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F2F2F200B3B3B300E5E5E500767676005D5D5D006161
      6100656565006B6B6B0079797900828282008E8E8E0097979700A1A1A100AAAA
      AA00B4B4B400BABABA00B9B9B900949494009C9C9C00FAFAFA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCFCFC00B3B3B300DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D7D7D700949494009B9B9B00FAFAFA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A7A7A700A9AEAF00C3BEB500873702008C3902008E3A
      0000953E00009A400000A44A1100AE541B00B6612900BD6C3300C7744100CE7F
      4C00D4885700D88F5D00D88F5D00E6EDDE009D9D9D0097979700FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B2B2B200E3E3E300B0B0B000C7C7C700C9C9C900CDCD
      CD00CFCFCF00D5D5D500DADADA00DEDEDE00E4E4E400E8E8E800EBEBEB00EFEF
      EF00F3F3F300F6F6F600F7F7F700BABABA009292920096969600F9F9F900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B4B4B400E5E5E5006969690052525200575757005B5B
      5B005F5F5F0064646400717171007B7B7B00878787009191910099999900A3A3
      A300ADADAD00B1B1B100B2B2B200BFBFBF00979797009A9A9A00FAFAFA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B8B8B800C2C2C200FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9D9D90093939300E1E1E100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BCBCBC00D9D6D80071310F0080330200853500008937
      00008F3B0100953E00009B440B00A54E1500B05B2300B7662D00C16E3B00C677
      4400CD804F00D1845300D2855400D97D5400E3EEE60098989800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C1C1C100C0C0C00093939300BDBDBD00C2C2C200C5C5C500C8C8
      C800CCCCCC00CECECE00D3D3D300D9D9D900DFDFDF00E2E2E200E6E6E600EBEB
      EB00EEEEEE00F0F0F000F3F3F300F5F5F500EFEFEF0095959500D8D8D800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B8B8B800C4C4C400A2A2A200484848004B4B4B00505050005555
      5500595959005E5E5E0067676700727272007E7E7E0087878700919191009A9A
      9A00A2A2A200A6A6A600AAAAAA00A9A9A900EFEFEF0095959500E3E3E300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C000D4D4D400FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009E9E9E0091919100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFFFF00BDBBBB00DBD8DA0084634F007E3300007B3002007F3300008535
      0000893700008E3A0000944006009E4A1000A9541C00B05F2600B9663300BD6F
      3A00C5764300C97A4700CB7C4900CD7D3C00A25F4400959798009E9F9D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C000D0D0D000B7B7B700B9B9B900BDBDBD00C1C1C100C4C4
      C400C8C8C800CACACA00CFCFCF00D5D5D500DBDBDB00DEDEDE00E2E2E200E7E7
      E700EAEAEA00ECECEC00EFEFEF00F1F1F100F2F2F2009E9E9E0096969600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C1C1C100D1D1D1004141410045454500474747004C4C4C005050
      500054545400595959005F5F5F006A6A6A007777770080808000878787009090
      9000999999009D9D9D00A0A0A000A1A1A100939393009D9D9D0095959500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ABABAB00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9D9D90099999900F8F8
      F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0B9BC00B0AFAB006B29000073310E00742E0000783100007F33
      020082340000883600008F390300953F09009D4B1400A7551E00AE5E2700B464
      2D00BE6C3500C2703900C4723B00CA6E3900C96F3600F5E5DF00A09D9900FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00A7A7A700C8C8C80099999900B7B7B700B5B5B500B8B8B800BCBCBC00C0C0
      C000C2C2C200C6C6C600CACACA00CECECE00D3D3D300D8D8D800DDDDDD00E1E1
      E100E6E6E600E8E8E800EAEAEA00EDEDED00EFEFEF00E9E9E9009E9E9E00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00AAAAAA00C6C6C60098989800444444003E3E3E0041414100454545004949
      49004E4E4E0053535300565656005F5F5F006B6B6B00747474007D7D7D008686
      86008D8D8D0091919100949494009797970098989800E8E8E80098989800F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CACACA00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0E0E00094949400ABAB
      AB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AAADAB00C1C3CB00A68F7F007E441A00743E1F006F2B0000742E0000772F
      00007D31000082340000873401008B38050094420B009C4A1300A2521B00AA5A
      2300B4612A00B8652E00BA673000BC663000BD682A00B18764009F9197009595
      9500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D0D0D000E8E8E800ADADAD00B7B7B700B3B3B300B3B3B300B6B6B600BBBB
      BB00BDBDBD00C1C1C100C5C5C500C8C8C800CDCDCD00D2D2D200D6D6D600DCDC
      DC00E0E0E000E2E2E200E5E5E500E8E8E800EBEBEB00AAAAAA0095959500A7A7
      A700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
      FB00C9C9C900E7E7E7002E2E2E0053535300434343003B3B3B003F3F3F004343
      4300474747004D4D4D0051515100555555006060600069696900717171007A7A
      7A0081818100858585008A8A8A008C8C8C008E8E8E009898980094949400ABAB
      AB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
      FB00CBCBCB00D6D6D600FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009D9D9D009E9E
      9E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CDCDCD00E0E7E400481F08007C4929007F492600672900006C2B0000712D
      0000752F00007B3200007F330200853500008B39020093410A009B491200A250
      1900A9561E00AD5A2200AF5C2400B65D2400B85E1E00AC541800A1A9A9009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00C9C9C900D0D0D000A1A1A100B5B5B500B7B7B700AFAFAF00B2B2B200B6B6
      B600B8B8B800BDBDBD00BFBFBF00C3C3C300C8C8C800CBCBCB00D0D0D000D4D4
      D400D9D9D900DCDCDC00E0E0E000E3E3E300E5E5E500EAEAEA009C9C9C009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
      FB00C9C9C900D3D3D300272727004D4D4D005353530035353500393939003D3D
      3D0042424200474747004B4B4B004F4F4F00555555005C5C5C00666666006E6E
      6E0075757500797979007F7F7F008282820084848400797979009C9C9C009E9E
      9E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00CBCBCB00DBDBDB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00A9A9A9009797
      9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CDCDCD00E5E6E4004B1F0800754B2E00724524005D220000662800006C2A
      0100702C0100742E0000783001007F3300008235000086390100903E07009745
      0E009D4A1200A24F1700A4511900AB521900AE541400AB4B0900CBCFCA009898
      9800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CFCFCF00AFAFAF00A1A1A100B3B3B300B4B4B400AAAAAA00ADADAD00B2B2
      B200B4B4B400B7B7B700BCBCBC00BEBEBE00C2C2C200C6C6C600CACACA00CFCF
      CF00D3D3D300D7D7D700DADADA00DDDDDD00E0E0E000E3E3E300ABABAB009A9A
      9A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CBCBCB00B0B0B000212121004D4D4D004B4B4B002D2D2D00333333003838
      38003C3C3C004141410045454500494949004E4E4E0052525200595959006161
      6100696969006D6D6D0073737300767676007979790074747400A8A8A8009797
      9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CFCFCF00D7D7D700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B0B0B0009797
      9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00D2D3D100D8DADA004D200500734C3000744B2B007A452A005F2502006427
      0000692900006F2C0000722E0100772F00007B31010080340000853500008B38
      0100903D0500964109009C420B009E450C00A2480800A9470100E4E2E1009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D4D4D400A9A9A9009A9A9A00B1B1B100B3B3B300B3B3B300A8A8A800ABAB
      AB00AFAFAF00B3B3B300B6B6B600B9B9B900BEBEBE00C0C0C000C4C4C400C7C7
      C700CBCBCB00CFCFCF00D3D3D300D6D6D600D9D9D900DCDCDC00AFAFAF009A9A
      9A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CFCFCF00ACACAC00222222004B4B4B004C4C4C004E4E4E002D2D2D003131
      3100353535003A3A3A003E3E3E0042424200484848004B4B4B004F4F4F005454
      54005B5B5B005F5F5F0065656500696969006C6C6C006E6E6E00B0B0B0009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFC
      FC00D7D7D700D9D9D900FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A2A2A2009A9A
      9A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D5D5D500DDE2E500411C0600704B3500724A310074483000542101005E24
      010062270000672900006B2B0200712D0000752E02007A3000007E3201008334
      0300893600008D38000093390200953C0300993F00009E420100D2D6D7009A9A
      9A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFC
      FC00D5D5D500C0C0C00097979700B0B0B000B0B0B000B1B1B100A8A8A800A8A8
      A800AAAAAA00AEAEAE00B2B2B200B5B5B500B9B9B900BBBBBB00C0C0C000C3C3
      C300C6C6C600CACACA00CCCCCC00D1D1D100D4D4D400DBDBDB00A4A4A4009B9B
      9B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFC
      FC00D5D5D500C4C4C40015151500494949004B4B4B004B4B4B00292929002C2C
      2C003030300035353500383838003C3C3C004242420045454500494949004E4E
      4E0052525200575757005B5B5B006060600064646400646464009F9F9F009D9D
      9D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
      FB00DCDCDC00D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00959595009E9E
      9E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
      FB00D6D7D500E8E3EC002708000071513A006B4B3400704A320070482C005022
      00005F2A05006427000063280100682B0000702C0100742E0000783001007E32
      010080330200863601008B3800008F3B0100943D0000803F1200B3B0B2009696
      9600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00D8D8D800E3E3E3008F8F8F00B1B1B100AEAEAE00AEAEAE00B0B0B000A1A1
      A100A6A6A600A9A9A900ACACAC00B0B0B000B3B3B300B8B8B800BBBBBB00BFBF
      BF00C2C2C200C4C4C400C9C9C900CBCBCB00D0D0D000A2A2A20098989800A1A1
      A100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00DDDDDD00E4E4E40007070700494949004949490049494900494949002323
      23002C2C2C002E2E2E0032323200373737003C3C3C003F3F3F00444444004848
      48004C4C4C0051515100555555005A5A5A005D5D5D008E8E8E00969696009D9D
      9D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9
      F900A7A7A700E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D60099999900FCFC
      FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BCBEBE00E1DCDE009F94900070523F006A4C39006D4A36006F493100754A
      2F00522303005B2504005D26010063280000692801006F2B0000712C0100772F
      00007B3002008033020086360100893700008D390000AA8871009B9697009797
      9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
      FB00A2A2A200E7E7E7009C9C9C00AAAAAA00ACACAC00ACACAC00AEAEAE00B3B3
      B300AAAAAA00A5A5A500A8A8A800ABABAB00AEAEAE00B2B2B200B5B5B500B9B9
      B900BCBCBC00C0C0C000C3C3C300C7C7C700CACACA00D3D3D3009F9F9F00FCFC
      FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8
      F800A6A6A600E5E5E50087878700484848004848480048484800494949004848
      480023232300272727002B2B2B003131310035353500393939003E3E3E004242
      4200464646004A4A4A004F4F4F005353530053535300CBCBCB0097979700FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DCDCDC00D3D3D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7C7C70097979700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00F8FAFA00E4DFDE009A9FA200230900006B503C006D4D3A006E4B3700714B
      3300734A31004E1E0200582302005D26010064260200692801006D280100702B
      0000762D01007A2F0100803302008032030088360000EEE7E400A8A3A200FAFA
      FA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFD00D8D8D800A1A1A1008B8B8B00AAAAAA00AAAAAA00ACACAC00ACAC
      AC00B0B0B000B1B1B100A4A4A400A7A7A700AAAAAA00AEAEAE00B1B1B100B5B5
      B500B7B7B700BCBCBC00BFBFBF00C5C5C500C8C8C800CCCCCC009D9D9D00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D9D9D900A1A1A100060606004848480048484800494949004141
      41004B4B4B004A4A4A00292929002C2C2C003030300034343400393939003D3D
      3D0041414100454545004B4B4B00535353004D4D4D00CBCBCB0097979700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C9C9C900DFDFDF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBDBDB00A8A8A800D6D6D600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DCDCDC00EBEBEB008F7F79006A503F00694F3F006B4D3A006C4B
      38006C4A33006E492F0075492C005C2D0D005A24030060260200622602006729
      01006928010076320700813D0E00863A0500815C4800B5B5B500A1A1A100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CCCCCC00E7E7E70094949400A2A2A200A9A9A900A9A9A900ABAB
      AB00ADADAD00AEAEAE00B0B0B000B2B2B200AFAFAF00ABABAB00AEAEAE00B5B5
      B500B9B9B900BDBDBD00C0C0C000BFBFBF00BFBFBF00A8A8A800CFCFCF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CBCBCB00E3E3E3009F9F9F003838380048484800484848004848
      480048484800484848004C4C4C00464646003D3D3D002F2F2F00333333004040
      40004E4E4E00515151004F4F4F0049494900C0C0C000A8A8A800D8D8D800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFBFB00E0E0E000D7D7D700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B200AEAEAE00FAFAFA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DBDBDB00B0B2B300240F0700694F4300694F3F006B4C
      3D006B4B38006E4933006A4733006D482E0074472C0073442500754325007843
      2200783D1D007C3E1A007C3B1400682A0100E5EBEA00A5A5A500F9F9F900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00E2E2E200D5D5D50089898900A3A3A300A9A9A900AAAA
      AA00AAAAAA00ACACAC00ADADAD00AFAFAF00B0B0B000B2B2B200B4B4B400B6B6
      B600B8B8B800BABABA00B6B6B60099999900B3B3B300A5A5A500FCFCFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FAFAFA00E0E0E000D8D8D8000E0E0E0052525200474747004747
      4700474747004747470047474700484848004747470048484800494949004B4B
      4B004B4B4B004D4D4D004444440096969600B0B0B000AEAEAE00FAFAFA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E3E3E300DBDBDB00D5D5D500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D0D0D000B3B3B300FBFBFB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900E1E1E1009D9596001F0B0000664C3E00684F
      3B00684D3900664B3700694835006D4931006E462D0070462900704427007243
      230070451E00793E1600752C0E00D1C2BF00ADAEB2009C9C9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DFDFDF00D8D8D800BDBDBD00868686009E9E9E00A8A8
      A800A8A8A800A9A9A900ABABAB00ACACAC00AEAEAE00AFAFAF00B1B1B100B3B3
      B300B7B7B700B1B1B10098989800D7D7D700ABABAB00FCFCFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700DADADA00BBBBBB0017171700383838004646
      4600464646004646460046464600474747004747470047474700484848004949
      49004C4C4C003131310097979700D2D2D200B1B1B100FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A9A9A900E1E1E100D2D2D200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FAFAFA00FAFAFA00D0D0D000B3B3B300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C2C2C200E0E0E000A29FA10025130C00553E
      2E00674E3E00664D3D00694A3B00694834006C4731006E462D006D442B006E42
      2500793B1D00431F0700C2CCC600ADB0B400ADADAD00FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A6A6A600E0E0E000DBDBDB00979797008484
      8400A5A5A500ABABAB00A9A9A900AAAAAA00ACACAC00ADADAD00AEAEAE00ADAD
      AD00A7A7A70096969600CFCFCF00B3B3B300FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AEAEAE00E1E1E100D5D5D500A3A3A3000A0A
      0A00505050004646460045454500464646004646460046464600474747004242
      42002B2B2B009D9D9D00CECECE00B4B4B400FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4E4E400E8E8E800E6E6E600D9D9
      D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FFFF
      FF00D9D9D900BFBFBF00BBBBBB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B8B8B800DCDCDC00DFDFDF00A097
      940027120A00351404006A503F0068473700734B3800744C3900471A00003615
      0200AAA3A000E5E5E500B8B8B800A4A4A400FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9E9E900E6E6E600E9E9E900ABAB
      AB00A5A5A500898989008C8C8C008E8E8E0092929200979797009B9B9B009696
      9600EEEEEE00BFBFBF00B8B8B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEB00E7E7E700E8E8E800B3B3
      B3009696960000000000020202000C0C0C0010101000121212001E1E1E009696
      9600EEEEEE00BDBDBD00BBBBBB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00C1C1C100E3E3
      E300D6D6D600D8D8D800D8D8D800D7D7D700DCDCDC00D8D8D800D9D9D900C0C0
      C000B8B8B80092929200FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00DFDFDF00DBE3
      E300E2E7E800A6A4A3009F9C9700A19A9700A39B9B00A1999900AEB6B500E7E9
      EA00C4C4C400BEBEBE00CDCDCD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00C1C1C100E7E7
      E700DFDFDF00EBEBEB00D8D8D800C7C7C700CDCDCD00E5E5E500E2E2E200C2C2
      C200BEBEBE0091919100FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00C2C2C200E0E0
      E000D5D5D500EBEBEB00D9D9D900C9C9C900D2D2D200E7E7E700DEDEDE00C0C0
      C000B8B8B80092929200FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5
      F500D2D2D200D8D8D800D7D7D700D5D5D500D1D1D100CECECE00B4B4B400EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2C3
      C100DBDBDB00DAD8D800D3D3D300D8D5D700D4D4D400D1D1D100CCC7C800CACB
      C900C1C1C100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00C2C2C200DEDEDE00D5D5D500D4D4D400CDCDCD00CBCBCB00B7B7B700EEEE
      EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5
      F500CECECE00D9D9D900D7D7D700D6D6D600D1D1D100CDCDCD00B5B5B500EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FBFBFB00FAFAFA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFC
      FC00FFFFFF00FDFDFD00FFFFFF00F8F8F800F9F9F900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
      FB00FFFFFF00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FBFBFB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FFFFFF00FFFFFF00FDFDFD00FEFEFE00FDFDFD00FCFCFC00F9F9F900FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
