object frmConsumosAtendimentos: TfrmConsumosAtendimentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '::. CONSUMOS DO ATENDIMENTO .::'
  ClientHeight = 562
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PnConsulta: TPanel
    Left = 0
    Top = 0
    Width = 818
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 605
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
      Left = 424
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object lblTipoAtendimento: TLabel
      Left = 440
      Top = 28
      Width = 124
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
    end
  end
  object PnTituloMatMed: TPanel
    Left = 0
    Top = 65
    Width = 818
    Height = 24
    Align = alTop
    TabOrder = 1
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
    Top = 267
    Width = 818
    Height = 24
    Align = alTop
    TabOrder = 2
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
    Top = 89
    Width = 818
    Height = 45
    Align = alTop
    TabOrder = 3
    ExplicitTop = 90
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
      Width = 431
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
      Left = 639
      Top = 0
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object edtIDMatMed: TEdit
      Left = 8
      Top = 17
      Width = 73
      Height = 21
      NumbersOnly = True
      TabOrder = 0
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
      TabOrder = 1
    end
    object edtQuantidade: TEdit
      Left = 639
      Top = 16
      Width = 66
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      Text = '1'
    end
    object BtnIncluirMatMed: TBitBtn
      Left = 728
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 3
    end
  end
  object PnMatMeds: TPanel
    Left = 0
    Top = 134
    Width = 818
    Height = 133
    Align = alTop
    TabOrder = 4
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
    end
  end
  object PnServico: TPanel
    Left = 0
    Top = 291
    Width = 818
    Height = 45
    Align = alTop
    TabOrder = 5
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
      Width = 424
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
      Left = 639
      Top = 0
      Width = 56
      Height = 13
      Caption = 'Quantidade'
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
      Left = 639
      Top = 16
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
  end
  object PnTaxasServicos: TPanel
    Left = 0
    Top = 336
    Width = 818
    Height = 169
    Align = alTop
    TabOrder = 6
    ExplicitTop = 341
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
    Top = 511
    Width = 818
    Height = 51
    Align = alBottom
    TabOrder = 7
    ExplicitTop = 632
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
  object ApplicationEvents1: TApplicationEvents
    Left = 744
    Top = 192
  end
end
