object FCambiaSemaforos: TFCambiaSemaforos
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FCambiaSemaforos'
  ClientHeight = 391
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 526
    Height = 391
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 401
      Top = 343
      Width = 112
      Height = 39
      Caption = 'Aceptar'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object GroupBox2: TGroupBox
      Left = 11
      Top = 20
      Width = 249
      Height = 165
      Caption = 'Control de la vivienda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object upm: TLabel
        Tag = 5000
        Left = 90
        Top = 35
        Width = 6
        Height = 23
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 38
        Top = 35
        Width = 44
        Height = 23
        Margins.Left = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Caption = 'UPM:'
      end
      object Label19: TLabel
        Tag = 20000
        Left = 19
        Top = 101
        Width = 63
        Height = 23
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 10
        Caption = 'Viv_sel:'
      end
      object Label2: TLabel
        Tag = 20000
        Left = 37
        Top = 68
        Width = 45
        Height = 23
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 10
        Caption = 'Prog:'
      end
      object prog: TLabel
        Tag = 5000
        Left = 90
        Top = 68
        Width = 6
        Height = 23
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object viv_sel: TLabel
        Tag = 5000
        Left = 90
        Top = 101
        Width = 6
        Height = 23
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Tag = 20000
        Left = 19
        Top = 132
        Width = 58
        Height = 23
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 10
        Caption = 'Hogar:'
      end
      object hogar: TLabel
        Tag = 5000
        Left = 90
        Top = 130
        Width = 6
        Height = 23
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object GroupBox1: TGroupBox
      Left = 276
      Top = 20
      Width = 237
      Height = 165
      Caption = 'Datos de identificaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object ageb: TLabel
        Tag = 5000
        Left = 99
        Top = 125
        Width = 6
        Height = 23
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cve_loc: TLabel
        Tag = 5000
        Left = 99
        Top = 97
        Width = 6
        Height = 23
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cve_mun: TLabel
        Tag = 5000
        Left = 99
        Top = 68
        Width = 6
        Height = 23
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ent: TLabel
        Tag = 5000
        Left = 99
        Top = 35
        Width = 6
        Height = 23
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 41
        Top = 125
        Width = 50
        Height = 23
        Margins.Left = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Caption = 'Ageb:'
      end
      object Label7: TLabel
        Left = 20
        Top = 35
        Width = 71
        Height = 23
        Margins.Left = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Caption = 'Entidad:'
      end
      object Label8: TLabel
        Left = 5
        Top = 65
        Width = 86
        Height = 23
        Margins.Left = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Caption = 'Municipio:'
      end
      object Label9: TLabel
        Left = 6
        Top = 97
        Width = 85
        Height = 23
        Margins.Left = 5
        Margins.Right = 5
        Margins.Bottom = 10
        Caption = 'Localidad:'
      end
    end
    object GroupBox3: TGroupBox
      Left = 11
      Top = 188
      Width = 502
      Height = 149
      Caption = 'Informaci'#243'n solicitada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object labelCuestionario: TLabel
        Left = 19
        Top = 36
        Width = 109
        Height = 23
        Caption = 'Cuestionario:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object labelVictima: TLabel
        Left = 61
        Top = 73
        Width = 67
        Height = 23
        Caption = 'Victima:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object labelDelitos: TLabel
        Left = 66
        Top = 110
        Width = 62
        Height = 23
        Caption = 'Delitos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object comboCuestionario: TComboBox
        Left = 134
        Top = 28
        Width = 355
        Height = 31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Incompleto'
        Items.Strings = (
          'Incompleto'
          'Completo')
      end
      object comboVictima: TComboBox
        Left = 134
        Top = 65
        Width = 355
        Height = 31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'Si'
        Items.Strings = (
          'Si'
          'No')
      end
      object comboDelitos: TComboBox
        Left = 134
        Top = 102
        Width = 355
        Height = 31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 2
        Text = '1'
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
      end
    end
  end
end
