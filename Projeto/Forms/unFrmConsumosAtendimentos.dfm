object frmConsumosAtendimentos: TfrmConsumosAtendimentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '::. CONSUMOS DO ATENDIMENTO .::'
  ClientHeight = 628
  ClientWidth = 891
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
  object Label16: TLabel
    Left = 8
    Top = 528
    Width = 95
    Height = 14
    Caption = 'Valor MatMeds:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 8
    Top = 552
    Width = 171
    Height = 14
    Caption = 'Valor Procedimentos/Taxas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalMatMeds: TLabel
    Left = 196
    Top = 529
    Width = 117
    Height = 14
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalProcedimentos: TLabel
    Left = 196
    Top = 553
    Width = 117
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 352
    Top = 528
    Width = 124
    Height = 14
    Caption = 'Honor'#225'rios M'#233'dicos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblHonorariosMedicos: TLabel
    Left = 499
    Top = 529
    Width = 117
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label19: TLabel
    Left = 352
    Top = 552
    Width = 69
    Height = 14
    Caption = 'Total Geral:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalGeral: TLabel
    Left = 499
    Top = 553
    Width = 117
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PnConsulta: TPanel
    Left = 0
    Top = 0
    Width = 891
    Height = 83
    Align = alTop
    TabOrder = 0
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
    Width = 891
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
    Top = 285
    Width = 891
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
    Top = 107
    Width = 891
    Height = 45
    Align = alTop
    TabOrder = 3
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
    object BtnBuscaMatMed: TSpeedButton
      Left = 88
      Top = 16
      Width = 23
      Height = 22
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
      OnClick = BtnBuscaMatMedClick
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
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
        25D0522C17931209053000000009000000010000000000000000000000000000
        00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
        6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
        0110744226B9BC7C4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B7
        82FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
        2095BE8053FFE0B37CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC88
        59FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
        47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB72
        45FFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
        6FFFE2B780FFE5BD89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA71
        44FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
        83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD75
        47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
        8FFFE4BB84FFA56B3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7
        F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
        A0FFE5BE89FFA56B3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADF
        D9FFE6DAD4FFE9DED9FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
        ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B
        3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
        9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B
        3FFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
        6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B
        3FFFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
        3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A
        5FFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
        0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
        CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
        00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
        B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
        000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
        60CD6C543F8B16110D2200000003000000010000000000000000}
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
    object BtnExcluirItem: TBitBtn
      Left = 809
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Excluir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000030000
        000B000000120000001300000013000000140000001400000014000000140000
        0014000000140000001500000015000000140000000D000000030000000B1C11
        6CC3261796FF271696FF261695FF261594FF251594FF251594FF241394FF2412
        93FF241292FF231292FF231192FF231191FF190C68C50000000C0000000F2B1C
        9BFF384AD3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444
        D3FF3C4ED6FF2A3ACEFF202FC9FF1E2CC9FF251595FF000000120000000F3121
        A0FF4356D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353A
        BEFF2827ABFF3B45C9FF2F41D0FF2332CCFF291A99FF000000120000000E3529
        A5FF4E62DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89
        CEFFEDEDF8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF000000110000000D392F
        ABFF596FDFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
        EDFFF3E9E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F0000000C4036
        B1FF657AE2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
        E2FFEADAD1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E0000000B453D
        B6FF6E83E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
        E5FF897DB8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D0000000A4A44
        BCFF788FE8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
        E8FF9087C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000009504C
        C2FF92A7EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
        EAFFFAF5F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B000000086B6A
        D0FFADC1F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
        D8FFF4ECE7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A000000077577
        D6FFB1C6F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68
        A8FFCBB5BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000006797B
        DAFFB5CAF6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555
        BCFF2E219BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF00000008000000057D80
        DEFFB9CDF6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CC
        F6FFB7CBF6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF00000006000000036062
        A6C08184E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81
        DEFF7D81DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C100000004000000000000
        0002000000030000000400000004000000040000000400000004000000040000
        0004000000040000000400000005000000050000000300000001}
      TabOrder = 6
      OnClick = BtnExcluirItemClick
    end
  end
  object PnMatMeds: TPanel
    Left = 0
    Top = 152
    Width = 891
    Height = 133
    Align = alTop
    TabOrder = 4
    object GrdMatMeds: TDBGrid
      Left = 1
      Top = 1
      Width = 889
      Height = 131
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
    Width = 891
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
      Left = 641
      Top = 2
      Width = 70
      Height = 13
      Caption = 'Data Consumo'
    end
    object Label13: TLabel
      Left = 487
      Top = 3
      Width = 50
      Height = 13
      Caption = 'Valor Unit.'
    end
    object Label15: TLabel
      Left = 567
      Top = 3
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object SpdBtnBuscaProcedimento: TSpeedButton
      Left = 88
      Top = 18
      Width = 25
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
      OnClick = SpdBtnBuscaProcedimentoClick
    end
    object BtnIncluirTaxaServico: TBitBtn
      Left = 728
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Incluir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
        25D0522C17931209053000000009000000010000000000000000000000000000
        00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
        6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
        0110744226B9BC7C4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B7
        82FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
        2095BE8053FFE0B37CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC88
        59FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
        47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB72
        45FFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
        6FFFE2B780FFE5BD89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA71
        44FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
        83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD75
        47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
        8FFFE4BB84FFA56B3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7
        F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
        A0FFE5BE89FFA56B3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADF
        D9FFE6DAD4FFE9DED9FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
        ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B
        3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
        9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B
        3FFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
        6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B
        3FFFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
        3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A
        5FFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
        0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
        CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
        00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
        B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
        000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
        60CD6C543F8B16110D2200000003000000010000000000000000}
      TabOrder = 5
      OnClick = BtnIncluirTaxaServicoClick
    end
    object edtProcedimento: TEdit
      Left = 8
      Top = 18
      Width = 73
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnExit = edtProcedimentoExit
    end
    object edtQuantidadeProcedimento: TEdit
      Left = 415
      Top = 19
      Width = 66
      Height = 21
      TabOrder = 1
      Text = '1'
      OnExit = edtQuantidadeProcedimentoExit
    end
    object mskDataConsumoProcedimento: TMaskEdit
      Left = 641
      Top = 18
      Width = 80
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object edtValorUnitProcedimento: TEdit
      Left = 487
      Top = 18
      Width = 74
      Height = 21
      TabOrder = 2
      Text = '0,00'
      OnExit = edtValorUnitProcedimentoExit
    end
    object edtValorTotalProcedimento: TEdit
      Left = 567
      Top = 18
      Width = 68
      Height = 21
      TabOrder = 3
      Text = '0,00'
      OnEnter = edtValorTotalProcedimentoEnter
      OnExit = edtValorTotalProcedimentoExit
    end
    object BtnExcluirProcedimento: TBitBtn
      Left = 809
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Excluir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
        76E4120852AD06031B4D0000000E000000030000000000000000000000000000
        000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
        C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
        03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
        D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
        5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
        BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
        A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
        CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
        BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
        EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
        CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
        E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
        D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
        E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
        D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
        E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
        DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
        EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
        DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
        D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
        D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
        A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
        79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
        BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
        050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
        EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
        000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
        EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
        000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
        B5D040437D951212223000000004000000010000000000000000}
      TabOrder = 6
      OnClick = BtnExcluirProcedimentoClick
    end
  end
  object PnTaxasServicos: TPanel
    Left = 0
    Top = 354
    Width = 891
    Height = 169
    Align = alTop
    TabOrder = 6
    object GrdTaxasServicos: TDBGrid
      Left = 1
      Top = 1
      Width = 889
      Height = 167
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
          FieldName = 'ID_PROCEDIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'ID Procedimento'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROCEDIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Procedimento'
          Width = 352
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
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_CONSUMO'
          Title.Alignment = taCenter
          Title.Caption = 'Data Consumo'
          Width = 103
          Visible = True
        end>
    end
  end
  object PnBotoes: TPanel
    Left = 0
    Top = 577
    Width = 891
    Height = 51
    Align = alBottom
    TabOrder = 7
    object BtnConcluirFaturamento: TBitBtn
      Left = 280
      Top = 9
      Width = 162
      Height = 33
      Caption = 'CONCLUIR FATURAMENTO'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000375E2BC1497C
        39FF497C39FF497B39FF487A39FF487A38FF487A38FF487A37FF487A37FF4879
        37FF477837FF477837FF477837FF467737FF467737FF365B29C34B7F3AFF83C0
        6EFF82BF6CFF81BF6CFF7FBE6AFF7FBE69FF7EBC68FF7CBC67FF7BBB65FF7BBB
        65FF79BA63FF79B963FF77B861FF77B861FF75B75FFF487A37FF4D823CFF88C4
        73FF6BB254FF6AB153FF69B152FF69B052FF68B051FF67AF50FF67AF50FF66AE
        4FFF65AE4EFF65AD4EFF64AD4DFF63AC4CFF7ABA64FF4A7C39FF4F853EFF8EC7
        78FF6FB557FF6EB456FF6DB456FF6CB355FF6CB255FF6BB254FF6AB153FF69B1
        52FF69B052FF68B051FF67AF50FF66AF4FFF7FBE69FF4C7F3BFF518740FF93CA
        7EFF73B85BFF72B75AFF71B75AFF70B659FF6FB558FF6FB557FF6EB456FF6DB3
        56FF6CB355FF6CB254FF6BB253FF6AB153FF84C16FFF4D823CFF4C6F40FF8FB5
        82FF6D9A5DFF6C985CFF6A975BFF69975AFF689659FF669457FF669356FF6592
        55FF649055FF629054FF628F53FF618E52FF7DA470FF46673AFF8CA981FFD1E7
        C7FFBDDDB0FFBCDCAFFFBCDCAEFFBBDCADFFBADBADFFB9DBACFFB9DAABFFB8DA
        ABFFB7DAAAFFB7D9A9FFB6D9A8FFB6D8A8FFC7E2BBFF87A37BFF90AC84FFD3E8
        CAFFBFDEB2FFBFDEB2FFBEDEB2FFBEDEB1FFBDDDB0FFBCDDAFFFBCDCAFFFBBDC
        AEFFBBDBADFFBADBACFFB9DBACFFB9DAABFFCAE4BFFF8AA67EFF92AF86FFD5E9
        CCFFC1DFB5FFC1DFB4FFC0DFB4FFC0DFB3FFBFDEB3FFBFDEB2FFBFDEB2FFBEDE
        B1FFBEDEB1FFBDDDB0FFBCDCAFFFBCDCAFFFCDE6C4FF8DAA81FF95B389FFD7EB
        CFFFC3E0B7FFC3E0B6FFC2E0B6FFC2E0B5FFC1DFB5FFC1DFB5FFC1DFB4FFC0DF
        B3FFC0DFB3FFBFDEB3FFBFDEB2FFBEDEB2FFD1E8C7FF90AC84FF817D64FFCAC6
        B4FFADA98FFFACA88EFFAAA78CFFAAA68CFFA9A68BFFA9A48AFFA8A389FFA8A2
        88FFA6A187FFA6A186FFA5A085FFA49F84FFBEBAA5FF78745CFFC39281FFFEFE
        FEFFFCF8F6FFFBF8F6FFFBF8F6FFFCF8F6FFFBF8F5FFFBF7F5FFFBF7F5FFFBF7
        F4FFFBF7F3FFFBF6F3FFFBF6F3FFFAF7F3FFFEFDFDFFBF8D7BFFC49483FFFFFE
        FEFFFCF9F7FFFDF9F7FFFCF9F7FFFCF9F7FFFCF8F7FFFCF8F6FFFCF8F6FFFCF7
        F6FFFBF8F5FFFBF7F5FFFBF7F5FFFBF7F5FFFEFEFDFFC08F7EFFC59584FFFFFE
        FEFFFDF9F9FFFCF9F8FFFDF9F8FFFCF9F7FFFCF9F8FFFCF9F7FFFCF9F7FFFDF9
        F7FFFCF9F7FFFCF8F6FFFCF8F6FFFCF8F6FFFEFEFEFFC2907FFFC69786FFFFFF
        FEFFFFFFFEFFFFFEFEFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
        FEFFFEFEFEFFFEFEFEFFFFFEFEFFFFFEFEFFFEFEFEFFC39281FF9A7A6EC1CFA4
        94FFCFA393FFCEA393FFCEA393FFCEA292FFCEA292FFCDA292FFCDA292FFCDA1
        91FFCDA090FFCCA090FFCC9F8FFFCB9E8EFFCB9E8EFF967469C3}
      TabOrder = 0
      OnClick = BtnConcluirFaturamentoClick
    end
    object BtnNaoCobrar: TBitBtn
      Left = 448
      Top = 9
      Width = 153
      Height = 33
      Caption = 'N'#195'O COBRAR'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000002F2E84C13E3D
        AEFF3E3DAEFF3E3DADFF3E3CACFF3D3CACFF3D3CACFF3D3CABFF3D3CABFF3C3B
        ABFF3C3AAAFF3C3AA9FF3C3AA9FF3C3AA8FF3C3AA8FF2E2C80C3413FB2FF7B79
        F9FF7A78F9FF7977F9FF7876F8FF7875F8FF7674F8FF7674F8FF7573F8FF7472
        F8FF7371F8FF7370F8FF7170F7FF716FF7FF706EF7FF3D3CABFF4241B4FF7F7D
        F9FF615FF7FF615FF7FF605EF7FF605EF7FF5F5DF7FF5F5DF7FF5E5CF7FF5E5C
        F6FF5D5BF6FF5D5BF6FF5D5BF6FF5D5BF6FF7472F8FF3E3DAEFF4442B8FF8381
        F9FF6462F7FF6361F7FF6361F7FF6260F7FF6260F7FF615FF7FF615FF7FF605E
        F7FF605EF7FF5F5DF7FF5F5DF7FF5E5CF7FF7876F8FF413FB2FF4544BBFF8785
        F9FF6664F7FF6663F7FF6563F7FF6462F7FF6462F7FF6361F7FF6361F7FF6260
        F7FF6260F7FF625FF7FF615FF7FF605FF7FF7B7AF9FF4241B4FF444395FF8886
        D7FF6462C7FF6462C7FF6261C6FF6160C6FF605FC6FF605EC4FF605EC4FF5F5D
        C4FF5E5CC2FF5D5CC2FF5C5BC2FF5C5AC1FF7878CEFF3E3D8BFF8582C5FFCAC8
        FBFFB5B2FAFFB4B2FAFFB4B1FAFFB4B1FAFFB3B0FAFFB3B0FAFFB2AFFAFFB2AF
        FAFFB1AEFAFFB1AEFAFFB0ADFAFFB0ADFAFFC3C0FBFF807DBDFF8985C9FFCDCA
        FBFFB6B3FAFFB6B3FAFFB6B3FAFFB5B2FAFFB5B2FAFFB5B2FAFFB4B1FAFFB4B1
        FAFFB3B0FAFFB3B0FAFFB2B0FAFFB2AFFAFFC4C3FBFF8280C2FF8B88CCFFCFCC
        FBFFB8B5FAFFB7B5FAFFB7B4FAFFB7B4FAFFB7B4FAFFB6B3FAFFB6B3FAFFB6B3
        FAFFB5B2FAFFB5B2FAFFB5B2FAFFB4B1FAFFC8C6FBFF8583C6FF8E8CD0FFD0CE
        FBFFB9B6FAFFB9B6FAFFB9B6FAFFB8B5FAFFB8B5FAFFB8B5FAFFB7B4FAFFB7B4
        FAFFB7B4FAFFB7B4FAFFB6B3FAFFB6B3FAFFCBC9FBFF8985C9FF9290B1FFC6C4
        E6FFA9A5D7FFA8A5D7FFA7A4D6FFA6A4D6FFA6A3D6FFA6A2D4FFA6A2D4FFA5A0
        D4FFA4A0D3FFA4A0D3FFA39FD3FFA29ED1FFBDBADFFF8885A8FFC39281FFFDFC
        FBFFFBFAF8FFFBFAF9FFFBFAF8FFFBFAF8FFFBF9F8FFFCF9F8FFFBF9F7FFFBF8
        F8FFFCF8F7FFFBF9F8FFFBF8F6FFFBF9F7FFFCFAF9FFBF8D7BFFC49483FFFDFC
        FBFFFCFAF9FFFCFAF9FFFBFAF9FFFCFAF8FFFBFAF8FFFBFAF9FFFBFAF9FFFBFA
        F8FFFBFAF8FFFCF9F7FFFBF8F8FFFBF8F8FFFCFAFAFFC08F7EFFC59584FFFDFD
        FCFFFCFAFAFFFCFBFAFFFCFAF9FFFCFAFAFFFCFAF9FFFBFAF9FFFCFAF9FFFBFA
        F9FFFCFAF8FFFCFAF8FFFCFAF8FFFBFAF9FFFDFCFAFFC2907FFFC69786FFFDFD
        FCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFBFFFDFDFCFFFDFC
        FBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFAFFFDFCFAFFC39281FF9A7A6EC1CFA4
        94FFCFA393FFCEA393FFCEA393FFCEA292FFCEA292FFCDA292FFCDA292FFCDA1
        91FFCDA090FFCCA090FFCC9F8FFFCB9E8EFFCB9E8EFF967469C3}
      TabOrder = 1
      OnClick = BtnNaoCobrarClick
    end
    object BtnSair: TBitBtn
      Left = 779
      Top = 8
      Width = 105
      Height = 33
      Caption = 'SAIR - ESC'
      TabOrder = 2
      OnClick = BtnSairClick
    end
  end
end
