object dlgCargarCuest: TdlgCargarCuest
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Cargar Cuestionario'
  ClientHeight = 416
  ClientWidth = 759
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnlfiles: TPanel
    Left = 0
    Top = 0
    Width = 759
    Height = 416
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    BevelKind = bkSoft
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 164
      Top = 114
      Width = 6
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = ':'
    end
    object Label2: TLabel
      Left = 164
      Top = 134
      Width = 6
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = ':'
    end
    object Label3: TLabel
      Left = 164
      Top = 154
      Width = 6
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = ':'
    end
    object Label4: TLabel
      Left = 164
      Top = 174
      Width = 6
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = ':'
    end
    object lblTitulo: TLabel
      Left = 164
      Top = 94
      Width = 6
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = ':'
      OnDblClick = lblTituloDblClick
    end
    object Label5: TLabel
      Left = 164
      Top = 194
      Width = 6
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = ':'
    end
    object Label6: TLabel
      Left = 161
      Top = 248
      Width = 6
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = ':'
    end
    object img1: TImage
      Left = 488
      Top = 80
      Width = 257
      Height = 225
      Transparent = True
    end
    object Label10: TLabel
      Left = 20
      Top = 154
      Width = 33
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Vista'
    end
    object Label11: TLabel
      Left = 20
      Top = 174
      Width = 48
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Acceso'
    end
    object Label12: TLabel
      Left = 20
      Top = 194
      Width = 36
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'HTML'
    end
    object Label13: TLabel
      Left = 20
      Top = 248
      Width = 131
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Archivo de recursos'
    end
    object Label7: TLabel
      Left = 20
      Top = 94
      Width = 107
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'T'#237'tulo              '
      OnDblClick = lblTituloDblClick
    end
    object Label8: TLabel
      Left = 20
      Top = 114
      Width = 109
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Configuraci'#243'n    '
    end
    object Label9: TLabel
      Left = 20
      Top = 134
      Width = 81
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Cuestionario'
    end
    object lblres: TLabel
      Left = 0
      Top = 396
      Width = 755
      Height = 16
      Align = alBottom
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      ExplicitWidth = 5
    end
    object cjaArchivoConfig: TEdit
      Left = 20
      Top = 15
      Width = 464
      Height = 24
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Enabled = False
      TabOrder = 0
    end
    object btnLoadCuestionario: TButton
      Left = 488
      Top = 11
      Width = 257
      Height = 32
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Seleccionar archivo de configuraci'#243'n'
      TabOrder = 1
      OnClick = btnLoadCuestionarioClick
    end
    object crearBase: TCheckBox
      Left = 20
      Top = 299
      Width = 309
      Height = 17
      Caption = 'Crear base de datos'
      TabOrder = 2
    end
    object vlXml: TCheckBox
      Left = 488
      Top = 57
      Width = 257
      Height = 17
      Caption = 'Validar XML '
      Enabled = False
      TabOrder = 3
    end
    object Panel1: TPanel
      Left = 0
      Top = 327
      Width = 755
      Height = 69
      Align = alBottom
      TabOrder = 4
      object btndlgCargarcuestAceptar: TButton
        Left = 1
        Top = 1
        Width = 179
        Height = 67
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'Aceptar'
        TabOrder = 0
        OnClick = btndlgCargarcuestAceptarClick
      end
      object btndlgCargarcuestCancelar: TButton
        Left = 585
        Top = 1
        Width = 169
        Height = 67
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alRight
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = btndlgCargarcuestCancelarClick
      end
    end
  end
end
