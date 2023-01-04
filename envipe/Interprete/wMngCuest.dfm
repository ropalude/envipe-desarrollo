object frmMngrCuest_: TfrmMngrCuest_
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Interprete Generador Local'
  ClientHeight = 527
  ClientWidth = 913
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 4
    Width = 119
    Height = 13
    Caption = 'Listado de cuestionarios:'
  end
  object Label8: TLabel
    Left = 17
    Top = 455
    Width = 110
    Height = 13
    AutoSize = False
    Caption = 'Cadena de ejecuci'#243'n : '
  end
  object GroupBox1: TGroupBox
    Left = 343
    Top = 104
    Width = 567
    Height = 182
    Caption = ' <Informaci'#243'n cuestionario> '
    TabOrder = 0
    object lbl_sss: TLabel
      Left = 0
      Top = 31
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cuestionario : '
    end
    object Label2: TLabel
      Left = 0
      Top = 50
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XML Configuraci'#243'n : '
    end
    object Label3: TLabel
      Left = 0
      Top = 69
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XML Cuestionario : '
    end
    object Label4: TLabel
      Left = 0
      Top = 126
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Help HTML : '
    end
    object Label5: TLabel
      Left = 0
      Top = 88
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XML Vista : '
    end
    object Label6: TLabel
      Left = 0
      Top = 107
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XML Acceso : '
    end
    object Label7: TLabel
      Left = 0
      Top = 145
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Archivo de recursos : '
    end
    object lblTitulo: TLabel
      Left = 116
      Top = 33
      Width = 450
      Height = 13
      AutoSize = False
      Caption = '<Sin Informaci'#243'n>'
    end
    object lblC: TLabel
      Left = 116
      Top = 52
      Width = 450
      Height = 13
      AutoSize = False
      Caption = '<Sin Informaci'#243'n>'
    end
    object lblQ: TLabel
      Left = 116
      Top = 71
      Width = 450
      Height = 13
      AutoSize = False
      Caption = '<Sin Informaci'#243'n>'
    end
    object lblV: TLabel
      Left = 116
      Top = 90
      Width = 450
      Height = 13
      AutoSize = False
      Caption = '<Sin Informaci'#243'n>'
    end
    object lblA: TLabel
      Left = 116
      Top = 107
      Width = 450
      Height = 13
      AutoSize = False
      Caption = '<Sin Informaci'#243'n>'
    end
    object lblH: TLabel
      Left = 114
      Top = 126
      Width = 450
      Height = 13
      AutoSize = False
      Caption = '<Sin Informaci'#243'n>'
    end
    object lblZ: TLabel
      Left = 116
      Top = 145
      Width = 450
      Height = 13
      AutoSize = False
      Caption = '<Sin Informaci'#243'n>'
    end
  end
  object lstCuestLoaded: TListBox
    Left = 8
    Top = 21
    Width = 329
    Height = 356
    ItemHeight = 13
    TabOrder = 1
    OnClick = lstCuestLoadedClick
  end
  object btnAddCuest_: TButton
    Left = 8
    Top = 383
    Width = 150
    Height = 61
    Caption = 'Agregar Cuestionario'
    TabOrder = 2
    OnClick = btnAddCuest_Click
  end
  object gpbConfig: TGroupBox
    Left = 342
    Top = 288
    Width = 567
    Height = 185
    Caption = ' <Configuraci'#243'n de cuestionario> '
    Enabled = False
    TabOrder = 3
    object Label10: TLabel
      Left = 262
      Top = 70
      Width = 108
      Height = 13
      AutoSize = False
      Caption = 'Alto de contenedor :'
    end
    object Label9: TLabel
      Left = 17
      Top = 70
      Width = 117
      Height = 13
      AutoSize = False
      Caption = 'Ancho de contenedor :'
    end
    object Label11: TLabel
      Left = 24
      Top = 99
      Width = 117
      Height = 13
      AutoSize = False
      Caption = 'Lista de parametros :'
    end
    object edtHeight_: TEdit
      Left = 366
      Top = 67
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object edtWidth_: TEdit
      Left = 134
      Top = 67
      Width = 120
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object chkAcceso: TCheckBox
      Left = 259
      Top = 28
      Width = 77
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Ver Acceso'
      Enabled = False
      TabOrder = 2
      OnClick = chkAccesoClick
    end
    object chkFiltro: TCheckBox
      Left = 353
      Top = 28
      Width = 77
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Ver Filtro'
      Enabled = False
      TabOrder = 3
      OnClick = chkFiltroClick
    end
    object chkAccesoDefault: TCheckBox
      Left = 14
      Top = 28
      Width = 120
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Ver acceso default'
      Enabled = False
      TabOrder = 4
      OnClick = chkAccesoDefaultClick
    end
    object chkFiltroDefault: TCheckBox
      Left = 143
      Top = 28
      Width = 110
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Ver filtro default'
      Enabled = False
      TabOrder = 5
      OnClick = chkFiltroDefaultClick
    end
    object chkCuestionario: TCheckBox
      Left = 451
      Top = 28
      Width = 110
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Ver Cuestionarios'
      Enabled = False
      TabOrder = 6
    end
    object mmoParametros: TMemo
      Left = 134
      Top = 96
      Width = 355
      Height = 83
      ScrollBars = ssVertical
      TabOrder = 7
    end
    object chkCrearTablas: TCheckBox
      Left = 24
      Top = 132
      Width = 81
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Crear tablas'
      Enabled = False
      TabOrder = 8
      Visible = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 508
    Width = 913
    Height = 19
    Panels = <>
  end
  object btnUpdatecuest_: TButton
    Left = 184
    Top = 383
    Width = 153
    Height = 61
    Caption = 'Guardar'
    TabOrder = 5
    OnClick = btnUpdatecuest_Click
  end
  object GroupBox3: TGroupBox
    Left = 343
    Top = -1
    Width = 567
    Height = 104
    Caption = ' < Archivo de configuraci'#243'n> '
    TabOrder = 6
    object edtConfigSys: TEdit
      Left = 14
      Top = 23
      Width = 543
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = ' <Seleccionar archivo de configuraci'#243'n> '
    end
    object btnSaveConfigSys: TButton
      Left = 473
      Top = 56
      Width = 83
      Height = 37
      Caption = 'Ver configuraci'#243'n'
      Enabled = False
      TabOrder = 1
      WordWrap = True
      OnClick = btnSaveConfigSysClick
    end
  end
  object edtParamExec: TEdit
    Left = 8
    Top = 479
    Width = 901
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 7
  end
end
