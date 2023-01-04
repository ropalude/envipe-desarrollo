object FLevantamientoHogar: TFLevantamientoHogar
  Left = 0
  Top = 0
  Hint = '|Levantamiento'
  BorderIcons = []
  ClientHeight = 720
  ClientWidth = 1280
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 19
  object contendorPrincipal: TPanel
    Tag = 40000
    Left = 0
    Top = 0
    Width = 1280
    Height = 720
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object detalle: TPanel
      Tag = 40000
      AlignWithMargins = True
      Left = 15
      Top = 203
      Width = 1250
      Height = 502
      Margins.Left = 15
      Margins.Top = 15
      Margins.Right = 15
      Margins.Bottom = 15
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object tabla: TDBAdvGrid
        Tag = 99
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1244
        Height = 496
        Cursor = crDefault
        Align = alClient
        ColCount = 7
        DefaultRowHeight = 30
        DrawingStyle = gdsClassic
        FixedCols = 0
        RowCount = 2
        FixedRows = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentColor = True
        ParentFont = False
        ParentShowHint = False
        ScrollBars = ssBoth
        ShowHint = True
        TabOrder = 0
        Visible = False
        OnDblClick = tablaDblClick
        OnDrawCell = tablaDrawCell
        OnRowChanging = tablaRowChanging
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FixedRowHeight = 40
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -16
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold, fsItalic]
        FloatFormat = '%.2f'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        ScrollWidth = 46
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        Version = '2.3.0.7'
        AutoCreateColumns = True
        AutoRemoveColumns = True
        Columns = <
          item
            Alignment = taCenter
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'hogar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Hogar'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -19
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -19
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Acci'#243'n'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -19
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            HeaderAlignment = taCenter
            Name = 'cons'
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -16
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 65
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'informante'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Nombre del integrante seleccionado'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -19
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            HeaderAlignment = taCenter
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -16
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 950
          end
          item
            Alignment = taCenter
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'cod_res_hog'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'C'#243'digo'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -19
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            HeaderAlignment = taCenter
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -19
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 70
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'C_VIS_HOG'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'VIS'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -19
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            HeaderAlignment = taCenter
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -19
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 46
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'C_SDG'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'SDG'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -19
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            HeaderAlignment = taCenter
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -19
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 46
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'C_SEL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'SEL'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -19
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            HeaderAlignment = taCenter
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -19
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 46
          end>
        PageMode = False
        InvalidPicture.Data = {
          055449636F6E0000010001002020200000000000A81000001600000028000000
          2000000040000000010020000000000000100000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
          6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
          FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
          6A6A6B4000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000006A6A6B22
          7C7C7C98888889F0BDBDBDFCE9E9EBFED9D9E9FEB5B5DDFE8B8BCDFE595AB7FF
          3739A8FF2B2CA4FF4A49B1FF7171C1FFA1A2D7FFD3D3E8FFEAEAEBFEBEBEBFFC
          888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000006A6A6B43838383D8
          B7B7B8FAECECEFFEC0C0DFFF7977C4FF2221A0FF12129BFF1010A4FF0C0CA8FF
          0A0AACFF0A0AB4FF0A0AB9FF0D0DBEFF0F0FB1FF1111A6FF5656B8FFAEADDCFF
          ECECEFFEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
          00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
          CACAE8FF4443B0FF171799FF11119CFF0C0C98FF0B0B9BFF0B0BA0FF0A0AA6FF
          0909ACFF0909B2FF0808BAFF0707BFFF0B09C8FF0D0DCEFF1111CCFF1010AFFF
          4A49B2FFCFCFEBFFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
          000000000000000000000000000000006A6A6B43878788EAE1E1E1FFA8A8DAFF
          2323A0FF15159CFF0D0D92FF0C0C95FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA6FF
          0909ACFF0909B2FF0808B8FF0808BCFF0808C3FF0C0CC9FF0C0CD0FF0D0DD6FF
          1313CFFF2222A9FFAFAFDEFFE1E1E1FF878788EA6A6A6B430000000000000000
          0000000000000000000000006A6A6B22838383D8D3D3D3FEA8A8D9FF2020A4FF
          13139BFF0C0C92FF0C0C95FF0C0C97FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA4FF
          0A0AA9FF0909B0FF0808B4FF0808BBFF0707C0FF0A0AC6FF0909CCFF0C0CD3FF
          0D0DD8FF1313D3FF1A1AA8FFAEADDEFFD4D4D4FE838383D86A6A6B2200000000
          0000000000000000000000007C7C7C98B7B7B8FACACAE8FF2524A3FF13139FFF
          0C0C97FF0C0C95FF0C0C95FF0C0C91FF0C0C95FF0B0B9EFF0B0BA0FF0A0AA4FF
          0A0AA8FF0909ADFF0909B2FF0808B8FF0808BCFF0707C0FF0808BCFF0707C5FF
          0C0CD3FF0D0DD7FF1212D1FF2020A7FFCDCDEBFFB8B8B9FA7C7C7C9800000000
          00000000000000006A6A6B40888889F0ECECEFFE4545B1FF1616A4FF0B0B9BFF
          0C0C99FF0C0C96FF3333A2FFB9B9D0FF393A9BFF0C0C95FF0B0BA1FF0A0AA4FF
          0A0AA7FF0A0AABFF0909B0FF0808B4FF0808B7FF2F2FC2FFAEAEE2FF4B4BBFFF
          0707BEFF0B0BD1FF0C0CD3FF1413CCFF4848B1FFECECEFFE888889F06A6A6B40
          00000000000000007575769EBFBFBFFD9B9BD5FF1C1CA6FF0C0CA1FF0B0B9FFF
          0B0B9AFF3535A7FFB5B5BEFFE6E6DFFFEDEDEFFF3C3C9CFF0C0C97FF0A0AA4FF
          0A0AA6FF0A0AA9FF0909ADFF0909B0FF2626B5FFCECEDEFFFFFFFBFFEEEEF1FF
          4848BAFF0808BCFF0A0ACDFF0B0BCEFF1111ABFFBEC0E0FFBFC0BFFD7575769E
          000000006A6A6B25787879F1E3E3E5FE4646B2FF1414A8FF0A0AA4FF0B0BA0FF
          2121A9FFBDBDCAFFD0D0C8FFC5C5C5FFE3E3E1FFEDEDEFFF3E3E9EFF0C0C98FF
          0A0AA6FF0A0AA8FF0A0AA9FF2B2BB0FFC0C0CDFFEAEAE2FFEBEBEBFFFEFEF8FF
          EDEDEEFF2828BDFF0707C4FF0809C7FF0F0FC4FF8788CBFFEBEBECFE79797AF1
          6A6A6B256A6A6B609D9E9DF6D6D7E4FF3A3AB3FF1212ADFF0A0AA8FF0A0AA4FF
          1313AAFFABABCFFFD6D6CBFFCACACAFFC6C6C6FFE4E4E0FFEEEEEFFF3F3FA0FF
          0C0C99FF0A0AA6FF2828ABFFB2B2BFFFD8D8CEFFD6D6D8FFE0E0E0FFF6F5EDFF
          D1D1EDFF1E1CC0FF0707BEFF0707BFFF0707C0FF2120AAFFD3D5E9FE9FA0A0F6
          6A6A6B606A6A6B94BDBDBDFBBABBDCFF3A39B7FF2F2FB8FF0909ADFF0A0AA9FF
          0A0AA6FF1515ACFFADADCFFFD6D6CBFFCBCBCAFFC6C6C6FFE4E4E1FFEEEEEFFF
          3838A1FF2222A2FFACABB8FFC8C8C0FFC7C7C8FFCDCDCDFFE1E1D9FFC8CAE1FF
          2424BCFF0808B4FF0808B9FF0808BAFF0808BBFF0F0EABFFA1A2D5FEC0C0C0FC
          6A6A6B946A6A6BC0D9D8D7FE9999D1FF3838BBFF3636BCFF2C2CB7FF0909ADFF
          0A0AA9FF0A0AA4FF1C1CAFFFB1B1CFFFD6D6CBFFCCCCCBFFC7C7C7FFE4E4E1FF
          ECECEEFFACACB7FFC2C2BCFFBEBEBFFFC0C0C0FFCFCFC6FFC1C1D5FF2727B8FF
          0909ACFF0909B2FF0909B2FF0909B4FF0808B4FF0E0EB5FF6E6EBFFFD9D9D9FE
          6A6A6BC06A6A6BE1EBEAEBFF7D7CC7FF3838BFFF3434BEFF3536BEFF2A2AB8FF
          0909B0FF0909ACFF0A0AA8FF1C1CB1FFB2B2D0FFD7D7CCFFCBCBCBFFC7C7C8FF
          C8C8C3FFC6C6C3FFBFBFC1FFBDBDBDFFC5C5BCFFB8B8CEFF2929B5FF0A0AA8FF
          0909ACFF0909ADFF0909AFFF0909AFFF0909AFFF0C0CB0FF4747AFFFECECEDFF
          6A6A6BE16A6A6BF8F9F9F9FF6666C1FF3838C4FF3535C2FF3434C0FF3535BEFF
          3030BCFF1313B4FF0909ADFF0A0AA8FF1E1EB3FFAAAAD0FFD3D3CDFFCCCCCCFF
          C8C8C8FFC3C3C3FFC2C2C1FFC4C4BFFFB2B2CBFF2B2BB4FF0A0AA4FF0A0AA8FF
          0A0AA8FF0A0AA9FF0A0AA9FF0A0AA9FF0A0AA9FF0B0BA9FF3131A6FFFAFAFAFF
          6A6A6BF86A6A6BF8FBFBFBFF5959BEFF3B3BCAFF3A3AC8FF3737C4FF3535C2FF
          3636C0FF3636BEFF2323B8FF0909B1FF0A0AA7FF4949BEFFD6D6D4FFD3D3D1FF
          CDCDCDFFC8C8C8FFC4C4C3FFEDEDEDFF5F5FB3FF0C0C98FF0A0AA7FF0A0AA6FF
          0A0AA6FF0A0AA6FF0A0AA4FF0A0AA6FF0A0AA4FF0B0BA4FF2D2DA6FFFBFBFBFF
          6A6A6BF86A6A6BE1EDEDEEFF7F80CBFF4041CCFF3C3CCAFF3A3AC8FF383AC8FF
          3838C4FF3636C2FF3939C0FF2123B7FF4A4AC2FFCBCBDEFFE0E0DCFFD6D6D6FF
          D2D2D3FFCDCDCEFFC9C9C9FFE2E2E1FFF1F1F2FF4242A3FF0C0C99FF0A0AA4FF
          0A0AA4FF0A0AA4FF0B0BA3FF0B0BA3FF0B0BA1FF0E0EA1FF4443B0FFEDEDEEFF
          6A6A6BE16A6A6BC0DADADAFF9C9BD5FE4949CDFF3E3DD0FF3C3DCEFF3C3CCAFF
          3A3AC8FF3B39C7FF2828BDFF5C5CCCFFE5E5EDFFF4F4EDFFE5E5E6FFDEDEDEFF
          DCDCD9FFD9D9D3FFCDCDCDFFC8C8C8FFE5E5E1FFF1F1F3FF3F3FA0FF0C0C99FF
          0A0AA4FF0B0BA1FF0B0BA0FF0B0BA0FF0B0B9FFF1313A2FF6B6BC0FFDADADAFF
          6A6A6BC06A6A6B94C0C0C0FDBDBAE1FE5655CFFF4141D4FF3F3FD2FF3F3FCEFF
          3D3DCCFF2C2AC3FF5E5ED3FFEBEBF6FFFFFFFAFFF1F1F1FFEDEDEEFFF0F0E9FF
          D2D2E6FFBDBDD6FFDADAD3FFCFCFCFFFC9C9CAFFE5E5E2FFF1F1F3FF3A3AA0FF
          0C0C98FF0B0BA3FF0B0B9FFF0B0B9EFF0B0B9EFF1C1CA4FF9C9CD3FFC1C1C1FD
          6A6A6B946A6A6B609F9F9FF6DAD9EAFF6B6BCFFF4444D7FF4143D6FF4242D3FF
          3434CDFF6464DBFFEFEFFFFFFFFFFFFFFCFCFCFFF6F6F6FFFCFCF4FFE2E1F0FF
          5050CCFF4040C1FFC3C3DBFFE1E1D8FFD4D4D5FFCFCFCFFFE8E8E5FFF2F2F4FF
          4040A2FF0C0C99FF0F0FA2FF0F0FA0FF0F0F9DFF302FA9FFD1D1E8FEA0A0A0F6
          6A6A6B606A6A6B25787879F1E9E9EBFEA7A7DAFF6060DBFF4547DBFF3C3CD6FF
          5857DEFFF2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8F8FF5B5BD4FF
          2828BDFF2A2BBDFF4949C5FFC3C3DBFFE4E4DAFFD5D5D5FFCECED0FFE8E8E5FF
          F4F4F4FF4949AFFF2121A6FF2A2AA6FF2C2BA9FF5557B8FFEAEAECFE787879F1
          6A6A6B25000000007575769EBEBEBEFDC9CAE6FF7A79DBFF4C4CDFFF4141DBFF
          5757E0FFEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E7FFFF5B5BD7FF2E2EC6FF
          3E3EC9FF3A3AC5FF2C2EC1FF4A49C8FFC2C2DDFFE3E3DAFFD5D5D4FFDADAD3FF
          CACBD9FF4747BBFF2525ADFF2C2BACFF3332AEFFA5A4D8FFBFBFBFFD7575769E
          00000000000000006A6A6B40888889F0ECECEFFE9696D6FF7B7BE3FF4D4BE0FF
          4141DBFF5F5FE6FFE7E7FFFFFFFFFFFFE9E9FFFF5A5ADCFF3333CAFF4242CFFF
          4040CBFF3D3DC9FF3D3EC8FF3030C2FF4848C9FFC0C0DDFFECEEDEFFD0D0E0FF
          5554C7FF2828B3FF3232B4FF3434B1FF5453B7FFECECEFFE888889F06A6A6B40
          0000000000000000000000007C7C7C98B7B7B8FAD0D0ECFF8F8FDBFF6868E3FF
          4E4EE2FF3E40DBFF6565E9FFB2B2F7FF6565E4FF393BD2FF4646D7FF4343D4FF
          4343D1FF4242CFFF4040CBFF3F3FCAFF3333C4FF4E4ECBFF9E9EE2FF5C5BCFFF
          292ABAFF3636BCFF3938B8FF3F3EB1FFCBCBE9FFB7B7B8FA7C7C7C9800000000
          0000000000000000000000006A6A6B22838383D8D3D3D3FEB5B5E2FF9E9EE4FF
          6766E2FF4E50E6FF4646E0FF3D3DDAFF4444DCFF4B4BDCFF4848DBFF4847D9FF
          4646D5FF4443D3FF4343D1FF4242CFFF4143CDFF3A3AC8FF312FC5FF3535C3FF
          3C3CC3FF3D3DBEFF403FB5FFACACDCFFD3D3D3FE838383D86A6A6B2200000000
          000000000000000000000000000000006A6A6B43878788EAE1E1E1FFB5B5E2FF
          A7A6E4FF7877E5FF5151E5FF4F4FE4FF4E4EE2FF4D4DE0FF4C4CDEFF4B4BDCFF
          4949DBFF4848D7FF4747D5FF4545D3FF4545D1FF4343CFFF4242CCFF3F3FCBFF
          4343C2FF4645B6FFADADDCFFE1E1E1FF878788EA6A6A6B430000000000000000
          00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
          D0D0ECFFAAA9DFFFA2A2ECFF6565E3FF5151E6FF4F4FE4FF4F4DE4FF4D4DE0FF
          4D4DDFFF4D4DDCFF4C49DBFF4A4AD8FF4749D6FF4747D4FF4949CBFF4B4BC3FF
          8E8ED0FFCDCCE8FFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
          0000000000000000000000000000000000000000000000006A6A6B43838383D8
          B7B7B8FAECECEFFEC3C2E5FFADAEE1FF9E9DE8FF6F6FE0FF5C5CE1FF5452E2FF
          5051E1FF4F4FDFFF4F4FDBFF5150D6FF5151CFFF5F5FC8FFA1A1D3FEC7C8E0FE
          E4E4E7FEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000006A6A6B22
          7C7C7C98888889F0BFBFBFFDEBEBECFED8D9EBFEBDBDE4FEA8A7DCFF9695D7FF
          8886D4FF7F7DCEFF8C8BD2FFA1A2D9FFC0BEE1FED9D9EAFEEAEAECFEBFBFBFFD
          888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
          FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
          6A6A6B4000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
          6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
          C000000380000001800000010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000080000001
          80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
          FFC003FF}
        ShowDBIndicator = False
        ShowUnicode = False
        ColWidths = (
          64
          65
          950
          70
          46
          46
          46)
        RowHeights = (
          40
          30)
        object Botones: TPanel
          Tag = 40000
          Left = 448
          Top = 99
          Width = 45
          Height = 45
          AutoSize = True
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object btnDetalle: TAdvGlowButton
            Tag = 3
            Left = 0
            Top = 0
            Width = 45
            Height = 45
            Hint = 'Detalle'
            ImageIndex = 24
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            Position = bpMiddle
            ShortCutHintPos = shpBottom
            TabOrder = 0
            OnClick = btnDetalleClick
            Appearance.BorderColorHot = clGradientActiveCaption
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
        object C_VIS_HOG: TPanel
          Left = 460
          Top = 237
          Width = 48
          Height = 47
          AutoSize = True
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 3
          Visible = False
          object AC_VIS_HOG: TAdvGlowButton
            Tag = 1
            Left = 1
            Top = 1
            Width = 46
            Height = 45
            Hint = 'Visitas'
            Align = alLeft
            ImageIndex = 0
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            Position = bpMiddle
            ShortCutHintPos = shpBottom
            TabOrder = 0
            OnClick = AC_VIS_HOGClick
            Appearance.BorderColorHot = clGradientActiveCaption
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
        object C_SDG: TPanel
          Left = 528
          Top = 243
          Width = 48
          Height = 47
          AutoSize = True
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 4
          Visible = False
          object AC_SDG: TAdvGlowButton
            Tag = 1
            Left = 1
            Top = 1
            Width = 46
            Height = 45
            Hint = 'Cuestionario sociodemografico'
            Align = alLeft
            ImageIndex = 0
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            Position = bpMiddle
            ShortCutHintPos = shpBottom
            TabOrder = 0
            OnClick = AC_SDGClick
            Appearance.BorderColorHot = clGradientActiveCaption
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
        object C_SEL: TPanel
          Left = 607
          Top = 245
          Width = 48
          Height = 47
          AutoSize = True
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 2
          Visible = False
          object AC_SEL: TAdvGlowButton
            Tag = 1
            Left = 1
            Top = 1
            Width = 46
            Height = 45
            Hint = 'M'#243'dulode los integrantes'
            Align = alLeft
            ImageIndex = 0
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            Position = bpMiddle
            ShortCutHintPos = shpBottom
            TabOrder = 0
            OnClick = AC_SELClick
            Appearance.BorderColorHot = clGradientActiveCaption
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
    end
    object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
      Tag = 85000
      AlignWithMargins = True
      Left = 15
      Top = 15
      Width = 1250
      Height = 173
      Cursor = crDefault
      Margins.Left = 15
      Margins.Top = 15
      Margins.Right = 15
      Margins.Bottom = 0
      Caption.Text = '   Filtrar informaci'#243'n'
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -23
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.ColorStart = 5987327
      Caption.ColorEnd = 5987327
      Caption.LineColor = 5987327
      Caption.Line = False
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clWhite
      Fill.ColorMirrorTo = clWhite
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = clSilver
      Fill.Rounding = 15
      Fill.ShadowColor = clNone
      Fill.ShadowOffset = 10
      Fill.Glow = gmNone
      Version = '1.0.2.9'
      Align = alTop
      OnClick = AdvSmoothExpanderPanel1Click
      TabOrder = 1
      Padding.Left = 10
      Padding.Top = 30
      Padding.Right = 10
      Padding.Bottom = 10
      ExpanderBorderColor = clWhite
      ExpanderSize = 23
      ExpanderColor = 5987327
      ExpanderDownColor = 5987327
      ExpanderHoverColor = 11196927
      ExpanderShape = esRounded
      MinimumPanelHeight = 30
      OnExpandPanel = AdvSmoothExpanderPanel1ExpandPanel
      OldHeight = 173.000000000000000000
      object contenedorFiltro: TPanel
        Tag = 40000
        AlignWithMargins = True
        Left = 25
        Top = 40
        Width = 1200
        Height = 123
        Margins.Left = 15
        Margins.Top = 10
        Margins.Right = 15
        Margins.Bottom = 0
        ParentCustomHint = False
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object GroupBox3: TGroupBox
          Tag = 30000
          Left = 0
          Top = 0
          Width = 1200
          Height = 123
          Align = alClient
          Caption = ' B'#250'squeda '
          TabOrder = 0
          Visible = False
          object panelCentro: TPanel
            Left = 2
            Top = 33
            Width = 1196
            Height = 45
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 1196
              Height = 45
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Label8: TLabel
                AlignWithMargins = True
                Left = 646
                Top = 0
                Width = 105
                Height = 45
                Margins.Left = 10
                Margins.Top = 0
                Margins.Right = 10
                Margins.Bottom = 0
                Align = alLeft
                Caption = 'Complemento:'
                ExplicitHeight = 19
              end
              object Label5: TLabel
                AlignWithMargins = True
                Left = 10
                Top = 0
                Width = 56
                Height = 45
                Margins.Left = 10
                Margins.Top = 0
                Margins.Right = 10
                Margins.Bottom = 0
                Align = alLeft
                Caption = 'C'#243'digo:'
                ExplicitHeight = 19
              end
              object complemento: TComboBox
                AlignWithMargins = True
                Left = 761
                Top = 0
                Width = 300
                Height = 27
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 10
                Margins.Bottom = 0
                Align = alLeft
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 0
                Text = 'Todos'
                OnChange = complementoChange
                Items.Strings = (
                  'Todos'
                  '01'
                  '02'
                  '03'
                  '04'
                  '05'
                  '06'
                  '07'
                  '08'
                  '09'
                  '10')
              end
              object estatus: TComboBox
                AlignWithMargins = True
                Left = 76
                Top = 0
                Width = 550
                Height = 27
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 10
                Margins.Bottom = 0
                Align = alLeft
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 1
                Text = 'Todos'
                OnChange = estatusChange
                Items.Strings = (
                  'Todos'
                  '01'
                  '02'
                  '03'
                  '04'
                  '05'
                  '06'
                  '07'
                  '08'
                  '09'
                  '10')
              end
            end
          end
          object panelInferior: TPanel
            Left = 2
            Top = 78
            Width = 1196
            Height = 43
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object Label1: TLabel
              Tag = 20000
              AlignWithMargins = True
              Left = 10
              Top = 10
              Width = 38
              Height = 19
              Margins.Left = 10
              Margins.Top = 10
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = 'UPM:'
            end
            object Label4: TLabel
              Tag = 20000
              AlignWithMargins = True
              Left = 203
              Top = 10
              Width = 159
              Height = 19
              Margins.Left = 15
              Margins.Top = 10
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = 'Vivienda seleccionada:'
            end
            object Label2: TLabel
              Tag = 20000
              AlignWithMargins = True
              Left = 755
              Top = 10
              Width = 55
              Height = 19
              Margins.Left = 15
              Margins.Top = 10
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = 'Hogar:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Tag = 20000
              AlignWithMargins = True
              Left = 457
              Top = 10
              Width = 183
              Height = 19
              Margins.Left = 15
              Margins.Top = 10
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = 'Progresivo de la vivienda:'
            end
            object upm: TCurvyEdit
              Tag = 5000
              AlignWithMargins = True
              Left = 58
              Top = 5
              Width = 130
              Height = 24
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Version = '1.0.0.2'
              Controls = <>
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = -1
              TextHint = 'Ej. 0101010'
            end
            object vivSel: TCurvyEdit
              Tag = 5000
              AlignWithMargins = True
              Left = 372
              Top = 5
              Width = 55
              Height = 24
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 15
              Margins.Bottom = 0
              Align = alLeft
              Version = '1.0.0.2'
              Controls = <>
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 1
              ParentFont = False
              TabOrder = -1
              TextHint = 'Ej. 1'
            end
            object Panel1: TPanel
              Tag = 40000
              AlignWithMargins = True
              Left = 888
              Top = 0
              Width = 41
              Height = 41
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 2
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object btnBusca: TAdvGlowButton
                Tag = 12500
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 41
                Height = 41
                Cursor = crHandPoint
                Hint = 'Buscar'
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                AutoSize = True
                ImageIndex = 3
                ImageListType = ipOwnLists
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                Picture.Data = {
                  89504E470D0A1A0A0000000D494844520000002D0000002D08060000003A1AE2
                  9A000000206348524D00007A25000080830000F9FF000080E800005208000115
                  5800003A970000176FD75A1F90000000097048597300000B1200000B1201D2DD
                  7EFC000002E1494441546843ED57CF6BD3501C1FE241D0A122883BA973287812
                  4F8AF80F28ECA4B05E1C82E0C5935E8A203DB983DE860E068EE16E9B88038521
                  1EDAB53D98755D1983AEAB656DE85C5CD3366992E677B37D2366BC968EBEB48F
                  062185076DF2F97CBF9FF7C927EFBD0E0CF81FDF01DF01DF01DF01DF01DF0182
                  0E4C4C7C3C670F8225C9970A8542C744590EA886B1AA99E63E3AE09A605FA7E9
                  D25DF29DBBAC4851E9DB8A616CB58A6DF7BBAEAAF30CC39CECB215195A7A6B7B
                  1CC4A938821D0CB85E9E9AFA7C9E8C02975532B9C29D16B122CB4BC1D9D9F019
                  B4D4FA7AF1565DD5969A22639AAB2EDB9181A391503423DAA96A36B7F718152E
                  EBFACB4E1CA2F72B9CF00415904C6E5FC4695064F8B7484C7663B1D8591C1E11
                  8CA2EBB4D3BC5416DEE11685E89CD00C8371B8B9FCCE182EB727DC87C5F82034
                  659DC6F93C77C94D4155D7830E1726FFD50DB76B2CAF28234834187B8D76532C
                  12C9DD43571237DCAEB1AA655D4545BB2D3439397F197D1FDCF2BBC227128521
                  A469656EEEBBABCD822EFE79DAF778D87180A6BF0F1FB1655D73337BB1AE441D
                  6E4D523EB9E1F6841564F5D5A168D35CC22DB6B191BD023BA2E87079C51AC1E5
                  F68C9B9EFE711ACD25C372AF3B158DC737076143A21C1E6C2E6B9D38C4EF9739
                  E93D2ABC54AE868E6A127A337B010447507C34BA769DB8289C82B051645BCE1F
                  D90A2F2E420446EDC109F507AA6926E1BB85E2AAA2F84C94B580A4A8F144223D
                  84D38B186661217C0A44ADE09EF240BCC672DC0BC03F72260231C9C0F1B6FF7F
                  1878410AEA8D46D3E1BF7522B0FB7D838D695833B58720B8D672784A5114D57F
                  E1E170F8784D52EFEF95C52F7F23F16FD0BBD5F1546AE786F378D1E512150E99
                  CFF43D2AB89963D9FA28BC0B42BB487916151CF1155E1E3BEA3D00E1DE440547
                  7889970320BCADE3FF6D54F274E539CEE43DC1B48B8ADE30F7A33F0BDE6C3EB8
                  2E3447C51097977FDDC4E57A8AB3571538016ECECCAC0C7B2AC46FEE3BE03BE0
                  3BE03B40D481033BF1D7B7B133CA7E0000000049454E44AE426082}
                ShortCutHintPos = shpAboveTop
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                TabStop = True
                OnClick = btnBuscaClick
                Appearance.BorderColor = 16768443
                Appearance.Color = 16377051
                Appearance.ColorTo = 16178633
                Appearance.ColorChecked = 16111818
                Appearance.ColorCheckedTo = 16367008
                Appearance.ColorDisabled = 15921906
                Appearance.ColorDisabledTo = 15921906
                Appearance.ColorDown = 16111818
                Appearance.ColorDownTo = 16367008
                Appearance.ColorHot = 16372402
                Appearance.ColorHotTo = 16372402
                Appearance.ColorMirror = 16102550
                Appearance.ColorMirrorTo = 16178633
                Appearance.ColorMirrorHot = 16107693
                Appearance.ColorMirrorHotTo = 15921906
                Appearance.ColorMirrorDown = 16102556
                Appearance.ColorMirrorDownTo = 16768988
                Appearance.ColorMirrorChecked = 16102556
                Appearance.ColorMirrorCheckedTo = 16768988
                Appearance.ColorMirrorDisabled = 11974326
                Appearance.ColorMirrorDisabledTo = 15921906
                Layout = blGlyphTop
              end
            end
            object hogar: TCurvyEdit
              Tag = 5000
              AlignWithMargins = True
              Left = 820
              Top = 5
              Width = 53
              Height = 24
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 15
              Margins.Bottom = 0
              Align = alLeft
              Version = '1.0.0.2'
              Controls = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 1
              ParentFont = False
              TabOrder = -1
              TextHint = 'Ej. 1'
              OnKeyPress = hogarKeyPress
            end
            object prog: TCurvyEdit
              Tag = 5000
              AlignWithMargins = True
              Left = 650
              Top = 5
              Width = 75
              Height = 24
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 15
              Margins.Bottom = 0
              Align = alLeft
              Version = '1.0.0.2'
              Controls = <>
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = -1
              TextHint = 'Ej. 100'
            end
          end
          object panelSuperior: TPanel
            Left = 2
            Top = 21
            Width = 1196
            Height = 12
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
          end
        end
      end
    end
  end
  object ds: TDataSource
    Left = 1154
    Top = 23
  end
end
