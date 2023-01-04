object frmScreenPrincipal: TfrmScreenPrincipal
  Left = 0
  Top = 0
  Width = 1200
  Height = 488
  Color = clWindow
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  OnCanResize = FrameCanResize
  object pnlConsola: TPanel
    Left = 0
    Top = 49
    Width = 1200
    Height = 439
    Align = alClient
    TabOrder = 2
    Visible = False
    object pgcConsola: TPageControl
      Left = 1
      Top = 1
      Width = 1198
      Height = 437
      ActivePage = datos
      Align = alClient
      TabOrder = 0
      object datos: TTabSheet
        Caption = 'Datos'
        object pnlActualiza: TPanel
          Left = 0
          Top = 0
          Width = 1190
          Height = 25
          Align = alTop
          TabOrder = 0
          object BitBtn1: TBitBtn
            Left = 1
            Top = 1
            Width = 75
            Height = 23
            Align = alLeft
            Caption = 'Actualiza'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 0
            OnClick = BitBtn1Click
          end
          object BitBtn2: TBitBtn
            Left = 889
            Top = 1
            Width = 150
            Height = 23
            Align = alRight
            Caption = 'Ajustar Columnas'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 1
            OnClick = BitBtn2Click
          end
          object BitBtn3: TBitBtn
            Left = 1039
            Top = 1
            Width = 150
            Height = 23
            Align = alRight
            Caption = 'Regresar'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 2
            OnClick = lblDatosClick
          end
        end
        object pnlArbol: TPanel
          Left = 0
          Top = 49
          Width = 241
          Height = 360
          Align = alLeft
          Color = clSilver
          ParentBackground = False
          TabOrder = 1
          object dataModelo: TTreeView
            Left = 1
            Top = 1
            Width = 239
            Height = 358
            Cursor = crHandPoint
            Align = alClient
            Color = 15658734
            DragCursor = crHandPoint
            Indent = 19
            MultiSelect = True
            ReadOnly = True
            RowSelect = True
            TabOrder = 0
            OnChange = dataModeloChange
          end
        end
        object Panel2: TPanel
          Left = 241
          Top = 49
          Width = 8
          Height = 360
          Cursor = crHandPoint
          Align = alLeft
          Color = 15658734
          DragCursor = crHandPoint
          ParentBackground = False
          TabOrder = 2
          OnClick = Panel2Click
        end
        object pnlGrid: TPanel
          Left = 249
          Top = 49
          Width = 941
          Height = 360
          Align = alClient
          TabOrder = 3
          object pnlPregunta: TPanel
            Left = 1
            Top = 1
            Width = 939
            Height = 112
            Align = alTop
            Padding.Right = 5
            TabOrder = 0
            Visible = False
            object Panel3: TPanel
              Left = 1
              Top = 1
              Width = 932
              Height = 110
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel3'
              TabOrder = 0
              object mm: TMemo
                Left = 0
                Top = 50
                Width = 932
                Height = 60
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Lines.Strings = (
                  'NOMBRE    :'
                  'TEXTO     :'
                  'SUB-TEXTO :'
                  'TIP       :')
                ReadOnly = True
                TabOrder = 0
              end
              object gridDes: TStringGrid
                Left = 0
                Top = 0
                Width = 932
                Height = 50
                Align = alTop
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Color = clSilver
                DoubleBuffered = False
                FixedColor = clBtnShadow
                FixedCols = 0
                GradientEndColor = clSilver
                GradientStartColor = clSilver
                ParentDoubleBuffered = False
                ParentShowHint = False
                ScrollBars = ssNone
                ShowHint = True
                TabOrder = 1
                ColWidths = (
                  194
                  197
                  150
                  138
                  248)
              end
            end
          end
        end
        object pnlArbolDatos: TPanel
          Left = 0
          Top = 25
          Width = 1190
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          Color = 13421772
          ParentBackground = False
          TabOrder = 4
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 239
            Height = 18
            Align = alLeft
            AutoSize = False
            Caption = 'Entidades'
            Color = clBtnShadow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitLeft = 4
            ExplicitTop = 1
            ExplicitHeight = 21
          end
          object lblDatoss: TLabel
            Left = 245
            Top = 0
            Width = 63
            Height = 24
            Align = alLeft
            Caption = 'Datos  :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitHeight = 19
          end
        end
      end
    end
  end
  object pnlNone_: TPanel
    Left = 512
    Top = 320
    Width = 185
    Height = 41
    TabOrder = 1
  end
  object contenedorPrincipal_: TScrollBox
    Left = 0
    Top = 49
    Width = 1200
    Height = 439
    VertScrollBar.Style = ssFlat
    Align = alClient
    AutoScroll = False
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clWindow
    ParentColor = False
    TabOrder = 0
    object header__: TPanel
      Left = 0
      Top = 0
      Width = 1200
      Height = 0
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 0
    end
    object contenedorMenuPag_: TPanel
      Left = 0
      Top = 0
      Width = 1200
      Height = 439
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 1
      object pnlContenedorPaginas_: TPanel
        Left = 50
        Top = 0
        Width = 1150
        Height = 439
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        TabOrder = 1
        object pnlMenuMainHeader_: TPanel
          Left = 0
          Top = 0
          Width = 1150
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          ParentColor = True
          TabOrder = 0
          object pnlComboMenuHeader_: TPanel
            Left = 0
            Top = 0
            Width = 100
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            ParentBackground = False
            ParentColor = True
            TabOrder = 0
          end
          object pnlButonesSalirHeader_: TPanel
            Left = 300
            Top = 0
            Width = 850
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            ParentBackground = False
            ParentColor = True
            TabOrder = 1
          end
          object pnlNavegacionHeader_: TPanel
            Left = 100
            Top = 0
            Width = 200
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            ParentBackground = False
            ParentColor = True
            TabOrder = 2
          end
        end
        object pnlMenuMainFooter_: TPanel
          Left = 0
          Top = 389
          Width = 1150
          Height = 50
          Align = alBottom
          BevelOuter = bvNone
          ParentBackground = False
          ParentColor = True
          TabOrder = 1
          object pnlComboMenuFooter_: TPanel
            Left = 0
            Top = 0
            Width = 0
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            ParentBackground = False
            ParentColor = True
            TabOrder = 0
          end
          object pnlButonesSalirFooter_: TPanel
            Left = 25
            Top = 0
            Width = 1125
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            ParentBackground = False
            ParentColor = True
            TabOrder = 1
          end
          object pnlNavegacionFooter_: TPanel
            Left = 0
            Top = 0
            Width = 25
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            ParentBackground = False
            ParentColor = True
            TabOrder = 2
          end
        end
        object pnlPage_: TPanel
          Left = 0
          Top = 50
          Width = 1150
          Height = 339
          Align = alClient
          BevelOuter = bvNone
          Color = clWindow
          ParentBackground = False
          TabOrder = 2
        end
        object pnlWait_: TPanel
          Left = 331
          Top = 554
          Width = 489
          Height = 241
          BevelOuter = bvNone
          Caption = 'pnlWait_'
          TabOrder = 3
          Visible = False
          object lblLugar__: TLabel
            Left = 0
            Top = 228
            Width = 489
            Height = 13
            Align = alBottom
            Alignment = taRightJustify
            Caption = '0'
            Visible = False
            ExplicitLeft = 483
            ExplicitWidth = 6
          end
          object suma__: TLabel
            Left = 0
            Top = 215
            Width = 489
            Height = 13
            Align = alBottom
            Alignment = taCenter
            Caption = '0'
            Visible = False
            ExplicitWidth = 6
          end
          object Label2: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 300
            Width = 483
            Height = 24
            Margins.Top = 300
            Align = alTop
            Alignment = taCenter
            Caption = 'Cargando '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 91
          end
        end
      end
      object sideMenuLeft_: TPanel
        Left = 0
        Top = 0
        Width = 50
        Height = 439
        Align = alLeft
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        TabOrder = 0
        object pnlSpaceTop_: TPanel
          Left = 0
          Top = 0
          Width = 50
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          Color = clMoneyGreen
          TabOrder = 0
        end
        object pnlSpaceBottom_: TPanel
          Left = 0
          Top = 414
          Width = 50
          Height = 25
          Align = alBottom
          BevelOuter = bvNone
          ParentBackground = False
          ParentColor = True
          TabOrder = 1
        end
      end
    end
    object title__: TPanel
      Left = 0
      Top = 0
      Width = 1200
      Height = 0
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 2
    end
  end
  object pnlCabezera__: TPanel
    Left = 0
    Top = 0
    Width = 1200
    Height = 49
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 3
    object pnlVersion_: TPanel
      Left = 0
      Top = 0
      Width = 1200
      Height = 9
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object lblDatos: TLabel
        Left = 991
        Top = 0
        Width = 41
        Height = 9
        Cursor = crHandPoint
        Align = alRight
        Caption = '   Datos      '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Visible = False
        OnClick = lblDatosClick
        ExplicitHeight = 10
      end
      object timePagina: TLabel
        Left = 0
        Top = 0
        Width = 55
        Height = 9
        Align = alLeft
        Caption = 'ms      :    1752'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ExplicitHeight = 10
      end
      object lblVersion_: TLabel
        Left = 1032
        Top = 0
        Width = 168
        Height = 9
        Align = alRight
        Alignment = taCenter
        BiDiMode = bdRightToLeft
        Caption = 'Version del cuestionario y Interprete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnMouseMove = lblVersion_MouseMove
        ExplicitHeight = 10
      end
    end
    object pnlUtilerias_: TPanel
      Left = 0
      Top = 9
      Width = 1200
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 1
      Visible = False
      object iconoPila: TImage
        Left = 1136
        Top = 0
        Width = 64
        Height = 40
        Hint = 'Bateria'
        Align = alRight
        Center = True
        ParentShowHint = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
          003208060000001E3F88B1000000097048597300000EC200000EC20115284A80
          000002454944415478DAED983F6813511CC7EF1208940A059780830E9DBA742B
          C48086248A05978E8243695510DC245B839A043AB9884AA68A144170114114B4
          045AA912101CA2084E71B04E0E2241A26DD2CFB32F608EDCDD0B1DEE25FC7EF0
          E3F7DEDDF77BEF7DDEFD212FAE3326E1463D01011110CB43406C0B01B12D04C4
          B61808D2E974662805D58C7A82870599775DF765D4933B3448B7DB3D4379ADDB
          7F287B8E7D8F61978CB3E00953902B94BAA520A701B9670A928EC562EFA29EF5
          A0E015C803B2E10B8240916E6A901CED2DAAFA0024F44A0C0A75AD36DA2FE45F
          AE31419DC4E7A77738EF72BAC542FDD6E34E7268C2C0F30B4F1BFD79BACFFF1D
          A793F4DE104E66A84F3448867E83FA9EEE89109026798A41BE73DD6BB4AF07E8
          7B9EDBE8AB1AA44CB968E029E079EA05697A4148B59AC91E08E523D9E0D8B1A0
          5B8DF61B654E8394D0DF704202CF2DF4250DB28667D9C07309CF833E90A0DBE8
          01F980E97888F62BE5A40629A2AF184C6A05FDAA06A9E2B96AE059C4B32E2002
          222002222002222002326A20AAAF7E2A8F1C089DB447B74BA610DCF90FE413A9
          F619474306F8419965901DAE5B415F34985419FD4DDD7E485934F05CC6B3D607
          3248A8E0106CEB6E967C8B79893AE504EF477E928F18A4857E81BCE01CECF7FD
          224E3E46FF4C8FABC63867E0B98FE74D288867AB9BC7540B5BA5286258901420
          F5A827ED039205A4660A7297F2D939B8A536857AFC667B1F07BF77E42C825751
          CF7498F003C9515E38C17F0258157E8FD611727AE441463104C4B61010DB4240
          6C0B01B12DC606641F8D6EC897D78888E40000000049454E44AE426082}
        ShowHint = True
        Visible = False
        OnClick = iconoPilaClick
        ExplicitLeft = 1168
        ExplicitTop = 6
      end
      object imgCalc: TImage
        AlignWithMargins = True
        Left = 1083
        Top = 3
        Width = 50
        Height = 34
        Align = alRight
        AutoSize = True
        Center = True
        ParentShowHint = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
          003208060000001E3F88B100000006624B4744000000000000F943BB7F000000
          097048597300000B1300000B1301009A9C180000000774494D4507E3041A141E
          206220C60C0000045B4944415478DAED9A5D6C145514C7EFB6BBA55B21C1D84A
          0A12533E0C5663A0E1497C01FA6422D8940F51536B890F1AB51220F08226F264
          205248404D8DE52301C237353C908062E283368249934A537DA83446235A6929
          EEB26D577F27734AD761BA74676EB1BBD993FC73F6DE39E7DCF9CF9D73BF6643
          FF2026072494CB44FAA9DA170A85AEF23B1920F630780A6CD0F22ED00E0A03C4
          2C0095E00D302D1D919FC04248DCB2F194085D8D3AA3C5E7897BC146DC818181
          684949C915E22DF02222373FC316898924A2B11F40FD6AB467EE1041ED292828
          68B4D5D04413D1F84DA8C6FF1041B6801D34662DF927B84742A8CDE0838C8960
          5A8C5A02A6836FB0FD255B89CC42B58199A00EDB43D94A44085C02F3C13A6C8F
          E689DC4F229A130FC94FAD9A014E8039C699948E81297A6D08DFDF3325828D4C
          904F1A6702F592BF4137BE49975F464496A30E1A678E1191461F0145C619C3FB
          8D33DB8AF4E0BBDC07910751BD691E7E0758826F5F1022B5DA0377B52FBEAEBA
          EBF83E3C01442E8365F8F60721228D3C6146BBBD14EC05B3C17BE09CF68E481C
          DFEF7D10990A4E833E26E429C3C3C3FDE862B92D7484F2E5C2C2C29DEE1547D0
          642F437D0D1E036BB03D9EE6494E9E64F770CECE516B0C225F8179E0456C8F64
          2B11198A771BE7D5DA8AED175949C44763792279225249433B6D35A48D2D457D
          AEC5E788FFA5E5F89B503BDC449A8DB376B22532892E06EF6BF95DF09D0976F8
          E09635E03537910418B4F9C4F4A68BF577DC8CBD30F42B11A32B8B9C249233AF
          56CE247BCE0CBF7922B68860FF28EA4DD00D9AB14F5825924C2665C9DE01DABD
          820E0E0E6E8F4422DB2C10F9D1382B6B91F5D87F668D08249652D78A59182D7B
          E72B23D7BABABA221515159F86C3E13A8AAD5C5BE99708B6B2FBBC06A25AB51B
          FB77AC10E1921C2CBC0A3E32CE98DD3B3434F42C4FFFDBB6B6B6705555D5876C
          43DF5273D9A7BC80FF6F7E7B846DED76B6B7F250647FBE16FB1FACF5883AD5A3
          5AB4F8732291A881C046F092D69D05F5F8DEF0DB23296FC05C2102A1EBE9EC7C
          273B66ABCDE88499D01E9260ADC6D92DDEF2F0494B84EB8BCCE8CC7FA7DADC7D
          422393A8E4E85F8189E8D392A7DE925225F9529DDA408644E440AFEC5EBDA4B2
          0AFF935688901F4DBC4EA9DF503A8DF32E7B8E66E32072D138474BF712F9A823
          87E617031381C42948D468518E849ED1DF72E2F8347EDD3E88C8815E781C44E4
          A6FFC43FEE9B484F4F4FB8BCBC7C7F4A629F072B800CB5233913030BF0BD9609
          110FE2E5A84F34DE2BA937EE613B7E22B1582C545454F43623489356C9A989BC
          4A7F68B07AE30CCD92B042A23235E97D103980AAD3E2C7D8BF6E858808092E37
          2723931C26D7BB131BF706E36C015E06475DF350A6440EA3D669B105FB066B44
          D4493E27F47975B54E9AA5EE4F0A3E89C85A4B8E616F825AF7BC1498885FF9BF
          56BF69D736938D88C6F7FC3C3D108FC7CBA2D168DC7FE8FB4764CC3F0CA874B2
          705BC86AF6F66426A29F046555F1F8489DD79F6A24D1F601597966ED9F6AB256
          7286C8BF5658D0986BCCC1F90000000049454E44AE426082}
        ShowHint = True
        Stretch = True
        Transparent = True
        Visible = False
        OnClick = imgCalcClick
        ExplicitHeight = 50
      end
      object redTituloCuest: TRichEdit
        Left = 0
        Top = 0
        Width = 1035
        Height = 40
        TabStop = False
        Align = alClient
        Alignment = taCenter
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object btnTeclado: TAdvGlowButton
        Left = 1035
        Top = 0
        Width = 45
        Height = 40
        Hint = 'Mostrar teclado virtual'
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alRight
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
          A2000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA8640000017349444154484BED9621
          4F03411046F72E4804025159142435153842A8C4518BA21E03A2C1E208418043
          9182474042020E0424C8FE00120CA2A2A2025D78DFEEEC655355D38334F792E9
          CC9BDEDEE476DBA6AEA262EEC8C6E3F125792D68690CB31F3029956230A99B65
          D9D077674B4F2FB92F81A1B70C6F105B0A5AEF442DF10FF242E2234574BDA735
          8937F087D499714D2F402352E7BC3FAD162DFCD96AD1C17B568B630B8FBDD70A
          E65DF7AA070B9ECE2B9EB86CD20FD70A659BED5832D7B6B488BA37E7EE08D54D
          6FCEBD58D635A26FD19170AF916DED41F43CCF2FE2BC3F7BE2EA8CF7C9CB12CE
          E794D4A6B76A7E45AD5FB80DF37B657A3BCAF046EF153F321FEA1EF85974CEB8
          8BFB799383D7B978D15C3CD16BD2AB994F056B06ACD1076D3B747CEF9BC1FAAD
          08F3541893672C26CF792A6C4D71DEE2DF9EF109B9D856B6EB90DE1E65FCEE4E
          4B9FB537AC3D371703B67A37CE4B076F125FA19C297ECBD3C1A5A23F028FE4D2
          FF0858AEA8981B9CFB05FB9F1416669C90090000000049454E44AE426082}
        Transparent = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Visible = False
        OnClick = btnTecladoClick
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = 5722449
        Appearance.BorderColorDown = 4736068
        Appearance.BorderColorChecked = clNone
        Appearance.BorderColorDisabled = clNone
        Appearance.Color = clNone
        Appearance.ColorTo = clNone
        Appearance.ColorChecked = clNone
        Appearance.ColorCheckedTo = clNone
        Appearance.ColorDisabled = clNone
        Appearance.ColorDisabledTo = clNone
        Appearance.ColorDown = 4736068
        Appearance.ColorDownTo = 4736068
        Appearance.ColorHot = 5722449
        Appearance.ColorHotTo = 5722449
        Appearance.ColorMirror = clNone
        Appearance.ColorMirrorTo = clNone
        Appearance.ColorMirrorHot = 5722449
        Appearance.ColorMirrorHotTo = 5722449
        Appearance.ColorMirrorDown = 4736068
        Appearance.ColorMirrorDownTo = 4736068
        Appearance.ColorMirrorChecked = clNone
        Appearance.ColorMirrorCheckedTo = clNone
        Appearance.ColorMirrorDisabled = clNone
        Appearance.ColorMirrorDisabledTo = clNone
      end
    end
  end
  object tcKeyboard: TAdvTouchKeyboard
    AlignWithMargins = True
    Left = 407
    Top = 134
    Width = 600
    Height = 200
    Align = alCustom
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
    object pnl1: TPanel
      Left = 0
      Top = 0
      Width = 600
      Height = 17
      Align = alTop
      Color = clGray
      ParentBackground = False
      TabOrder = 0
      OnMouseDown = pnlMouseDown
      OnMouseMove = pnlMouseMove
      object pnl2: TPanel
        Left = 552
        Top = 1
        Width = 47
        Height = 15
        Align = alRight
        Caption = 'X'
        ParentColor = True
        TabOrder = 0
        OnClick = pnl2Click
      end
    end
  end
  object tcKeyBoardNume: TAdvTouchKeyboard
    AlignWithMargins = True
    Left = 148
    Top = 220
    Width = 600
    Height = 200
    Align = alCustom
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
    object pnl3: TPanel
      Left = 0
      Top = 0
      Width = 600
      Height = 17
      Align = alTop
      Color = clGray
      ParentBackground = False
      TabOrder = 0
      OnMouseDown = pnlMouseDownN
      OnMouseMove = pnlMouseMoveN
      object pnl4: TPanel
        Left = 552
        Top = 1
        Width = 47
        Height = 15
        Align = alRight
        Caption = 'X'
        ParentColor = True
        TabOrder = 0
        OnClick = pnl4Click
      end
    end
  end
  object ds: TDataSource
    Left = 1144
    Top = 568
  end
  object PopupMenu1: TPopupMenu
    Left = 1072
    Top = 568
  end
  object cImgListPila: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 48
    Width = 48
    Left = 24
    Top = 119
    Bitmap = {
      494C010106000800900030003000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C00000006000000001002000000000000020
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000C0808082F0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000011111142F0F0F0F8EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF70000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF525252922B2B2B692D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2B2B2B6958585897FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF0B0B0B3700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010101041FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D3AFFFFFFFFFFFFFFFF1010104000000006292929673636
      3676353535753535357535353575353535753535357536363676292929670000
      000B00000000191919506D6D6DA8696969A5696969A5696969A5696969A56969
      69A5696969A5696969A56D6D6DA81818184F0000000000000000242424616D6D
      6DA8696969A5696969A5696969A5696969A5696969A5696969A56D6D6DA80E0E
      0E3D000000001515154BFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBBDBF6F6F6FBFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D0D0D3A0D0D0D3A0D0D0D3A0D0D
      0D3A0B0B0B362F2F2F6EFFFFFFFFFFFFFFFF0F0F0F3E01010113DBDBDBEDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9EC0202
      021A0000000042424283FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F810000000000000000646464A0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2626
      2663000000001515154BFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6262629F2D2D2D6CFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFCFCFEFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3E01010112C5C5C5E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00202
      0219000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6262629F0000000040404080FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3E01010112C5C5C5E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00202
      0219000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6262629F00000000000000005353
      5393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3E01010112C5C5C5E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00202
      0219000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7EBDFDFDFEFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6262629F00000000000000000000
      0004727272ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3E01010112C5C5C5E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00202
      0219000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3131317034343474D0D0
      D0E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6262629F00000000000000000000
      000000000008949494C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3E01010112C5C5C5E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00202
      0219000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FB121212440000
      000824242460B4B4B4D7FFFFFFFFFFFFFFFF6262629F00000000000000000000
      0000000000000000000CADADADD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3E01010112C5C5C5E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00202
      0219000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6F30606
      0628000000000000000019191950949494C36262629F00000000000000000000
      0000000000000000000002020218BBBBBBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3E01010112C5C5C5E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00202
      0219000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9
      C9E3020202180000000000000000000000000202021800000000000000000000
      000000000000000000000000000006060628D0D0D0E7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3E01010112C5C5C5E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00202
      0219000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA7A7A7CF0000000C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0C0C38E6E6E6F3FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3E01010112C5C5C5E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00202
      0219000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF7D7D7DB300000004000000000000000000000000000000000000
      0000313131701E1E1E5800000004000000000000000012121244F6F6F6FBFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3E01010112C5C5C5E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00202
      0219000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF58585897000000000000000000000000000000000000
      00006262629FFFFFFFFFD0D0D0E73838387801010114000000001B1B1B54FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3E01010112C5C5C5E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00202
      0219000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF343434740000000000000000000000000000
      00006262629FFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEF7585858970707072C3131
      3170FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3E01010112C5C5C5E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00202
      0219000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B1B1B5400000000000000000000
      0000828282B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8888
      88BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3E01010112C5C5C5E1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00202
      0219000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEF70E0E0E3C000000000000
      00008E8E8EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C4E0C4C4C4E0C4C4C4E0C4C4
      C4E0C2C2C2DFD2D2D2E8FFFFFFFFFFFFFFFF0F0F0F3E01010112CCCCCCE5FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBE40202
      0219000000003F3F3F81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F7F00000000000000005F5F5F9DFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2525
      2562000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0E7060606280000
      00008E8E8EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000202021702020217020202170202
      0217010101161C1C1C55FFFFFFFFFFFFFFFF0F0F0F3E01010111BEBEBEDDF8F8
      F8FCF6F6F6FBF6F6F6FBF6F6F6FBF6F6F6FBF6F6F6FBF8F8F8FCBDBDBDDC0202
      0219000000002C2C2C6BBEBEBEDDBDBDBDDCBDBDBDDCBDBDBDDCBDBDBDDCBDBD
      BDDCBDBDBDDCBDBDBDDCBEBEBEDD2B2B2B69000000000000000041414182BEBE
      BEDDBDBDBDDCBDBDBDDCBDBDBDDCBDBDBDDCBDBDBDDCBDBDBDDCBEBEBEDD1919
      1951000000001515154BFFFFFFFFFFFFFFFF0404042004040420040404200404
      0420040404204F4F4F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4D70101
      0114ADADADD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F3EFFFFFFFFFFFFFFFF10101041000000030707072C0909
      09320909093109090931090909310909093109090931090909320707072B0000
      0005000000000000000901010114010101130101011301010113010101130101
      01130101011301010113010101140000000900000000000000000000000B0101
      0114010101130101011301010113010101130101011301010113010101140000
      0007000000001515154BFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9494
      94C3D0D0D0E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF0C0C0C3900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000011111143FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF272727640707072D0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0707072D2C2C2C6BFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFFF2F2F2F9ECECECF6EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7ECECECF6F2F2F2F9FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000060606295F5F5F9D5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B0000000000000000000000000000
      00000000000031313170C2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2
      C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2
      C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2
      C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2
      C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2
      C2DFC2C2C2DFC2C2C2DFC2C2C2DFC2C2C2DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000C0808082F0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0000000000000000000000000000
      0000000000000000000C0808082F0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0000000000000000000000000000
      0000000000000000000C0808082F0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0000000000000000000000000000
      00000000000027272765B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5
      B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5
      B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5
      B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5
      B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5
      B5D7B5B5B5D7B5B5B5D7B5B5B5D7A3A3A3CC0000000000000000000000000000
      00000000000011111142F0F0F0F8EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF70000000000000000000000000000
      00000000000011111142F0F0F0F8EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF70000000000000000000000000000
      00000000000011111142F0F0F0F8EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF70000000000000000000000000000
      00000000000038383878FFFFFFFFFFFFFFFF717171AA5D5D5D9A5D5D5D9A5D5D
      5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D
      5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D5D9A5C5C5C995C5C
      5C995C5C5C995C5C5C995D5D5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D
      5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D5D9A5D5D
      5D9A5D5D5D9AA4A4A4CDFFFFFFFFE5E5E5F20000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF525252922B2B2B692D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2B2B2B6958585897FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF525252922B2B2B692D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2B2B2B6958585897FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF525252922B2B2B692D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D2D6C2D2D
      2D6C2B2B2B6958585897FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000038383878FFFFFFFFFFFFFFFF0000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002C2C2C6BFFFFFFFFE5E5E5F20000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF0B0B0B3700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010101041FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF0B0B0B3700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010101041FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF0B0B0B3700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010101041FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000038383878FFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303031D656565A26464
      64A1656565A2646464A102020217000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F20000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000002D2D2D6CFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0B0B36FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0707072C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F20000000000000000000000000000
      0000000000000D0D0D3AFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000D0D0D3AFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000242424616D6D
      6DA8696969A5696969A5696969A5696969A5696969A5696969A56D6D6DA80E0E
      0E3D000000001515154BFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000D0D0D3AFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000191919506D6D6DA8696969A5696969A5696969A5696969A56969
      69A5696969A5696969A56D6D6DA81818184F0000000000000000242424616D6D
      6DA8696969A5696969A5696969A5696969A5696969A5696969A56D6D6DA80E0E
      0E3D000000001515154BFFFFFFFFFFFFFFFF020202180303031C0202021A0202
      021A0101011546464686FFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A0A0A34FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0606062A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F20D0D0D3A0D0D0D3A0D0D0D3A0D0D
      0D3A0B0B0B362F2F2F6EFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFF0D0D0D3A0D0D0D3A0D0D0D3A0D0D
      0D3A0B0B0B362F2F2F6EFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000646464A0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2626
      2663000000001515154BFFFFFFFFFFFFFFFF0D0D0D3A0D0D0D3A0D0D0D3A0D0D
      0D3A0B0B0B362F2F2F6EFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042424283FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F810000000000000000646464A0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2626
      2663000000001515154BFFFFFFFFFFFFFFFFE0E0E0EFFBFBFBFDF7F7F7FBF7F7
      F7FBEFEFEFF7FBFBFBFDFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000040404217E7E7EB47D7D
      7DB37D7D7DB3828282B70303031D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFCFCFEFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFCFCFEFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFCFCFEFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000707072CCACACAE3CACA
      CAE3CDCDCDE55C5C5C9900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009090931FFFFFFFFFFFF
      FFFFFFFFFFFFD6D6D6EA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000AF3F3F3F9FFFF
      FFFFFFFFFFFFFFFFFFFF3D3D3D7D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031313170FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF797979B00000000D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004444
      4484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1E711111142000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B1B1B54CACACAE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D2D2D6C0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000006747474ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A1A
      1A53000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000B0000000D0000000000000000000000000000
      00000000000000000000000000006262629EFFFFFFFFFFFFFFFFFFFFFFFFB0B0
      B0D4000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0219898989BBA3A3A3CCE0E0E0EFCDCDCDE50000000000000000000000000000
      000000000000000000000000000001010111FFFFFFFFFFFFFFFFFFFFFFFFE9E9
      E9F4000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5353539200000000000000000000
      000000000000000000000000000044444484FFFFFFFFFFFFFFFFFFFFFFFFB7B7
      B7D8000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFF3F3F3F9FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000027272764FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6060609E111111430000
      000E0000000C0C0C0C384C4C4C8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020
      205B000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A7A000000000000000058585897FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2222
      225E000000001515154BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000049494989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5
      E5F2E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3E7E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F2C4C4C4E0C4C4C4E0C4C4C4E0C4C4
      C4E0C2C2C2DFD2D2D2E8FFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFFC4C4C4E0C4C4C4E0C4C4C4E0C4C4
      C4E0C2C2C2DFD2D2D2E8FFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005F5F5F9DFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2525
      2562000000001515154BFFFFFFFFFFFFFFFFC4C4C4E0C4C4C4E0C4C4C4E0C4C4
      C4E0C2C2C2DFD2D2D2E8FFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003F3F3F81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F7F00000000000000005F5F5F9DFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2525
      2562000000001515154BFFFFFFFFFFFFFFFF090909300A0A0A330A0A0A330A0A
      0A330A0A0A3354545493FFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001818184FABABABD1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999C614141448000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F20202021702020217020202170202
      0217010101161C1C1C55FFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFF0202021702020217020202170202
      0217010101161C1C1C55FFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000041414182BEBE
      BEDDBDBDBDDCBDBDBDDCBDBDBDDCBDBDBDDCBDBDBDDCBDBDBDDCBEBEBEDD1919
      1951000000001515154BFFFFFFFFFFFFFFFF0202021702020217020202170202
      0217010101161C1C1C55FFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002C2C2C6BBEBEBEDDBDBDBDDCBDBDBDDCBDBDBDDCBDBDBDDCBDBD
      BDDCBDBDBDDCBDBDBDDCBEBEBEDD2B2B2B69000000000000000041414182BEBE
      BEDDBDBDBDDCBDBDBDDCBDBDBDDCBDBDBDDCBDBDBDDCBDBDBDDCBEBEBEDD1919
      1951000000001515154BFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000028282866FFFFFFFFFFFFFFFF0606062800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000011111142272727654D4D4D8C6464
      64A16262629F45454585242424610F0F0F3E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFE5E5E5F20000000000000000000000000000
      0000000000000F0F0F3EFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001515154BFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000F0F0F3EFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B0101
      0114010101130101011301010113010101130101011301010113010101140000
      0007000000001515154BFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000F0F0F3EFFFFFFFFFFFFFFFF1111114200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000901010114010101130101011301010113010101130101
      01130101011301010113010101140000000900000000000000000000000B0101
      0114010101130101011301010113010101130101011301010113010101140000
      0007000000001515154BFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000038383878FFFFFFFFFFFFFFFF0202021900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000037373777FFFFFFFFE5E5E5F20000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF0C0C0C3900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000011111143FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF0C0C0C3900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000011111143FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF0C0C0C3900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000011111143FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000038383878FFFFFFFFFFFFFFFF090909310000000B0000000B0000
      000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
      000B0000000B0000000B0000000B0000000B0000000B0000000B0000000A0000
      0009000000090000000A0000000B0000000B0000000B0000000B0000000B0000
      000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
      000B0000000B45454585FFFFFFFFE5E5E5F20000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF272727640707072D0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0707072D2C2C2C6BFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF272727640707072D0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0707072D2C2C2C6BFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFF272727640707072D0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0808082E0808082E0808082E0808082E0808082E0808082E0808082E0808
      082E0707072D2C2C2C6BFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000038383878FFFFFFFFFFFFFFFFE1E1E1F0DCDCDCEDDCDCDCEDDCDC
      DCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDC
      DCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDC
      DCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDC
      DCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDCDCEDDCDC
      DCEDDCDCDCEDEDEDEDF6FFFFFFFFE5E5E5F20000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFFF2F2F2F9ECECECF6EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7ECECECF6F2F2F2F9FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFFF2F2F2F9ECECECF6EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7ECECECF6F2F2F2F9FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000012121244FFFFFFFFFFFFFFFFF2F2F2F9ECECECF6EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEEEEF7EEEE
      EEF7ECECECF6F2F2F2F9FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000027272765B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5
      B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5
      B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5
      B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5
      B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5B5D7B5B5
      B5D7B5B5B5D7B5B5B5D7B5B5B5D7A3A3A3CC0000000000000000000000000000
      000000000000060606295F5F5F9D5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B0000000000000000000000000000
      000000000000060606295F5F5F9D5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B0000000000000000000000000000
      000000000000060606295F5F5F9D5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D
      5D9B5D5D5D9B5D5D5D9B5D5D5D9B5D5D5D9B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000600000000100010000000000000900000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      F80000000000FFFFFFFFFFFF000000000000000000000000F80000000000F800
      00000000000000000000000000000000F80000000000F8000000000000000000
      0000000000000000F87FFFFFFFF8F80000000000000000000000000000000000
      F87FFFFFFFF8F80000000000000000000000000000000000F8000800C008F800
      0000000000000000000000000000000000000800C008F8000000000000000000
      000000000000000000000800C008000000400000000000000000000000000000
      00000800C00800000060000000000000000000000000000000000800C0080000
      0060000000000000000000000000000000000800C00800000070000000000000
      000000000000000000000800C008000000780000000000000000000000000000
      00000800C00800000C7C000000000000000000000000000000000800C0080000
      077E000000000000000000000000000000000800C008000003FF000000000000
      000000000000000000000800C008000001F18000000000000000000000000000
      00000800C008000001F0400000000000000000000000000000000800C0080000
      00F0000000000000000000000000000000000800C00800000070000000000000
      000000000000000000000800C008000000300000000000000000000000000000
      00000800C00800000010000000000000000000000000000000000800C0080000
      00000000000000000000000000000000F8000800C008F8000000000000000000
      0000000000000000F87FFFFFFFF8F80000000000000000000000000000000000
      F80000000000F80000000000000000000000000000000000F80000000000F800
      00000000000000000000000000000000F80000000000F8000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF80000000000F80000000000F80000000000F80000000000F800
      00000000F80000000000F80000000000F80000000000F80000000000F8000000
      0000F80000000000F87FFFFFFFF8F87FFFFFFFF8F87FFFFFFFF8F87FFFFFFFF8
      F87FFF81FFF8F87FFFFFFFF8F87FFFFFFFF8F87FFFFFFFF8F87FFF81FFF8F87F
      FFFFFFF8F87FFFFFC008F87FF800C008007FFF81FFF8007FFFFFFFF8007FFFFF
      C008007FF800C008007FFF81FFF8007FFFFFFFF8007FFFFFC008007FF800C008
      007FFFFFFFF8007FFFFFFFF8007FFFFFC008007FF800C008007FFF83FFF8007F
      FFFFFFF8007FFFFFC008007FF800C008007FFF83FFF8007FFFFFFFF8007FFFFF
      C008007FF800C008007FFF81FFF8007FFFFFFFF8007FFFFFC008007FF800C008
      007FFFC07FF8007FFFFFFFF8007FFFFFC008007FF800C008007FFFE03FF8007F
      FFFFFFF8007FFFFFC008007FF800C008007FFFF01FF8007FFFFFFFF8007FFFFF
      C008007FF800C008007FFFF80FF8007FFFFFFFF8007FFFFFC008007FF800C008
      007FFCFE0FF8007FFFFFFFF8007FFFFFC008007FF800C008007FE0FE0FF8007F
      FFFFFFF8007FFFFFC008007FF800C008007FE07E0FF8007FFFFFFFF8007FFFFF
      C008007FF800C008007FF0000FF8007FFFFFFFF8007FFFFFC008007FF800C008
      007FF8001FF8007FFFFFFFF8007FFFFFC008007FF800C008007FFC003FF8007F
      FFFFFFF8007FFFFFC008007FF800C008F87FFF00FFF8F87FFFFFFFF8F87FFFFF
      C008F87FF800C008F87FFFFFFFF8F87FFFFFFFF8F87FFFFFFFF8F87FFFFFFFF8
      F80000000000F80000000000F80000000000F80000000000F80000000000F800
      00000000F80000000000F80000000000F80000000000F80000000000F8000000
      0000F80000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object tmrBateria: TTimer
    OnTimer = tmrBateriaTimer
    Left = 584
    Top = 328
  end
end
