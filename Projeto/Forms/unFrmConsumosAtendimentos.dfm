object frmConsumosAtendimentos: TfrmConsumosAtendimentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '::. CONSUMOS DO ATENDIMENTO .::'
  ClientHeight = 590
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnConsulta: TPanel
    Left = 0
    Top = 0
    Width = 818
    Height = 83
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Atendimento'
    end
    object lblNomePaciente: TLabel
      Left = 96
      Top = 28
      Width = 313
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 415
      Top = 9
      Width = 2
      Height = 50
    end
    object Label2: TLabel
      Left = 8
      Top = 54
      Width = 30
      Height = 14
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTipoAtendimento: TLabel
      Left = 88
      Top = 54
      Width = 124
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 427
      Top = 29
      Width = 64
      Height = 16
      Caption = 'Conv'#234'nio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblConvenio: TLabel
      Left = 499
      Top = 29
      Width = 304
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtAtendimento: TEdit
      Left = 8
      Top = 27
      Width = 73
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnExit = edtAtendimentoExit
    end
  end
  object PnTituloMatMed: TPanel
    Left = 0
    Top = 83
    Width = 818
    Height = 24
    Align = alTop
    TabOrder = 1
    ExplicitTop = 65
    object Label3: TLabel
      Left = 8
      Top = 6
      Width = 169
      Height = 16
      Caption = 'Materiais e Medicamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object PnTituloServicos: TPanel
    Left = 0
    Top = 285
    Width = 818
    Height = 24
    Align = alTop
    TabOrder = 2
    ExplicitTop = 267
    object Label4: TLabel
      Left = 8
      Top = 6
      Width = 108
      Height = 16
      Caption = 'Taxas e Servi'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object PnItem: TPanel
    Left = 0
    Top = 107
    Width = 818
    Height = 45
    Align = alTop
    TabOrder = 3
    ExplicitTop = 89
    object Label5: TLabel
      Left = 8
      Top = 0
      Width = 38
      Height = 13
      Caption = 'MatMed'
    end
    object lblMatMed: TLabel
      Left = 122
      Top = 21
      Width = 295
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 415
      Top = 2
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label10: TLabel
      Left = 641
      Top = 2
      Width = 70
      Height = 13
      Caption = 'Data Consumo'
    end
    object Label12: TLabel
      Left = 487
      Top = 2
      Width = 50
      Height = 13
      Caption = 'Valor Unit.'
    end
    object Label14: TLabel
      Left = 567
      Top = 2
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object edtIDMatMed: TEdit
      Left = 8
      Top = 17
      Width = 73
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnExit = edtIDMatMedExit
    end
    object BtnBuscaMatMed: TBitBtn
      Left = 88
      Top = 17
      Width = 28
      Height = 21
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
        00000000000100000004000000090000000D0000000F0000000F0000000C0000
        00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
        0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
        1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
        02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
        50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
        3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
        C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
        7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
        88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
        C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
        87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
        F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
        A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
        FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
        A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
        F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
        92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
        D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
        6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
        A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
        84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
        4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
        F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
        020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
        A2FC62504B900404031000000002000000000000000000000000000000000000
        000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
        1F3E000000060000000100000000000000000000000000000000}
      TabOrder = 6
      OnClick = BtnBuscaMatMedClick
    end
    object edtQuantidade: TEdit
      Left = 415
      Top = 19
      Width = 66
      Height = 21
      NumbersOnly = True
      TabOrder = 1
      Text = '1'
    end
    object BtnIncluirMatMed: TBitBtn
      Left = 728
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 5
      OnClick = BtnIncluirMatMedClick
    end
    object mskDataConsumoMatMed: TMaskEdit
      Left = 641
      Top = 19
      Width = 81
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object edtValorUnitMatMed: TEdit
      Left = 487
      Top = 19
      Width = 74
      Height = 21
      TabOrder = 2
      Text = '0,00'
      OnExit = edtValorUnitMatMedExit
    end
    object edtValorTotalMatMed: TEdit
      Left = 567
      Top = 19
      Width = 68
      Height = 21
      TabOrder = 3
      Text = '0,00'
      OnExit = edtValorTotalMatMedExit
    end
  end
  object PnMatMeds: TPanel
    Left = 0
    Top = 152
    Width = 818
    Height = 133
    Align = alTop
    TabOrder = 4
    ExplicitTop = 134
    object GrdMatMeds: TDBGrid
      Left = 1
      Top = 1
      Width = 816
      Height = 131
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_MATMED'
          Title.Alignment = taCenter
          Title.Caption = 'ID MatMed'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MATMED'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 378
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Unit'#225'rio'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_CONSUMO'
          Title.Alignment = taCenter
          Title.Caption = 'Data Consumo'
          Width = 99
          Visible = True
        end>
    end
  end
  object PnServico: TPanel
    Left = 0
    Top = 309
    Width = 818
    Height = 45
    Align = alTop
    TabOrder = 5
    ExplicitLeft = -1
    ExplicitTop = 313
    object Label7: TLabel
      Left = 8
      Top = 3
      Width = 65
      Height = 13
      Caption = 'Procedimento'
    end
    object lblProcedimento: TLabel
      Left = 122
      Top = 23
      Width = 287
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 415
      Top = 3
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label11: TLabel
      Left = 487
      Top = 3
      Width = 70
      Height = 13
      Caption = 'Data Consumo'
    end
    object Label13: TLabel
      Left = 574
      Top = 3
      Width = 50
      Height = 13
      Caption = 'Valor Unit.'
    end
    object Label15: TLabel
      Left = 654
      Top = 3
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object BtnIncluirTaxaServico: TBitBtn
      Left = 728
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
    end
    object edtProcedimento: TEdit
      Left = 8
      Top = 18
      Width = 73
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object edtQuantidadeProcedimento: TEdit
      Left = 415
      Top = 19
      Width = 66
      Height = 21
      TabOrder = 2
      Text = '1'
    end
    object BtnBuscaProcedimento: TBitBtn
      Left = 88
      Top = 18
      Width = 28
      Height = 21
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
        00000000000100000004000000090000000D0000000F0000000F0000000C0000
        00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
        0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
        1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
        02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
        50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
        3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
        C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
        7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
        88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
        C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
        87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
        F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
        A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
        FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
        A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
        F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
        92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
        D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
        6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
        A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
        84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
        4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
        F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
        020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
        A2FC62504B900404031000000002000000000000000000000000000000000000
        000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
        1F3E000000060000000100000000000000000000000000000000}
      TabOrder = 3
    end
    object mskDataConsumoProcedimento: TMaskEdit
      Left = 487
      Top = 19
      Width = 80
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object edtValorUnitProcedimento: TEdit
      Left = 574
      Top = 18
      Width = 74
      Height = 21
      TabOrder = 5
      Text = '0,00'
    end
    object edtValorTotalProcedimento: TEdit
      Left = 654
      Top = 18
      Width = 68
      Height = 21
      TabOrder = 6
      Text = '0,00'
    end
  end
  object PnTaxasServicos: TPanel
    Left = 0
    Top = 354
    Width = 818
    Height = 169
    Align = alTop
    TabOrder = 6
    ExplicitTop = 336
    object GrdTaxasServicos: TDBGrid
      Left = 1
      Top = 1
      Width = 816
      Height = 167
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object PnBotoes: TPanel
    Left = 0
    Top = 539
    Width = 818
    Height = 51
    Align = alBottom
    TabOrder = 7
    ExplicitTop = 511
    object BtnConcluirFaturamento: TBitBtn
      Left = 160
      Top = 8
      Width = 153
      Height = 33
      Caption = 'CONCLUIR FATURAMENTO'
      TabOrder = 0
    end
    object BtnNaoCobrar: TBitBtn
      Left = 319
      Top = 8
      Width = 153
      Height = 33
      Caption = 'N'#195'O COBRAR'
      TabOrder = 1
    end
    object BtnSair: TBitBtn
      Left = 680
      Top = 8
      Width = 105
      Height = 33
      Caption = 'SAIR - ESC'
      TabOrder = 2
      OnClick = BtnSairClick
    end
  end
end
