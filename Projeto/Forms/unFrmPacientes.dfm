inherited frmPacientes: TfrmPacientes
  Caption = '::. PACIENTES .::'
  ClientHeight = 609
  OnCreate = FormCreate
  ExplicitHeight = 638
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Height = 554
    ActivePage = TbShCadastro
    ExplicitHeight = 554
    inherited TbShConsulta: TTabSheet
      ExplicitHeight = 526
      inherited PnDados: TPanel
        Height = 459
        ExplicitHeight = 459
        inherited GrdDados: TDBGrid
          Height = 453
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Title.Caption = 'Prontu'#225'rio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Width = 421
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NASCIMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Nascimento'
              Width = 94
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CPF'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        inherited CbxConsulta: TComboBox
          ItemIndex = 1
          Text = 'NOME'
          Items.Strings = (
            'ID'
            'NOME'
            'NASCIMENTO'
            'CPF')
        end
        inherited CbxOrdenarPor: TComboBox
          ItemIndex = 1
          Text = 'NOME'
          Items.Strings = (
            'ID'
            'NOME'
            'NASCIMENTO'
            'CPF')
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      ExplicitHeight = 526
      inherited PnCampos: TPanel
        Height = 526
        ExplicitHeight = 526
        object Label1: TLabel
          Left = 16
          Top = 14
          Width = 65
          Height = 13
          Caption = 'Prontu'#225'rio/ID'
        end
        object Label2: TLabel
          Left = 104
          Top = 14
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object Label3: TLabel
          Left = 415
          Top = 14
          Width = 81
          Height = 13
          Caption = 'Data Nascimento'
        end
        object Label5: TLabel
          Left = 16
          Top = 101
          Width = 55
          Height = 13
          Caption = 'Estado Civil'
        end
        object Label6: TLabel
          Left = 414
          Top = 101
          Width = 60
          Height = 13
          Caption = 'Escolaridade'
        end
        object Label7: TLabel
          Left = 16
          Top = 142
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label8: TLabel
          Left = 201
          Top = 99
          Width = 24
          Height = 13
          Caption = 'Sexo'
        end
        object Label9: TLabel
          Left = 289
          Top = 99
          Width = 17
          Height = 13
          Caption = 'Cor'
        end
        object Label10: TLabel
          Left = 16
          Top = 182
          Width = 37
          Height = 13
          Caption = 'Religi'#227'o'
        end
        object lblCidade: TLabel
          Left = 111
          Top = 161
          Width = 258
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblReligiao: TLabel
          Left = 117
          Top = 199
          Width = 258
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 16
          Top = 222
          Width = 50
          Height = 13
          Caption = 'Nome M'#227'e'
        end
        object Label12: TLabel
          Left = 337
          Top = 222
          Width = 44
          Height = 13
          Caption = 'Nome Pai'
        end
        object Label13: TLabel
          Left = 415
          Top = 142
          Width = 61
          Height = 13
          Caption = 'Naturalidade'
        end
        object lblNaturalidade: TLabel
          Left = 510
          Top = 160
          Width = 258
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 415
          Top = 184
          Width = 66
          Height = 13
          Caption = 'Nacionalidade'
        end
        object lblNacionalidade: TLabel
          Left = 510
          Top = 201
          Width = 258
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 16
          Top = 265
          Width = 40
          Height = 13
          Caption = 'Conjug'#234
        end
        object Label16: TLabel
          Left = 594
          Top = 101
          Width = 24
          Height = 13
          Caption = 'Etnia'
        end
        object Label17: TLabel
          Left = 112
          Top = 101
          Width = 73
          Height = 13
          Caption = 'Tipo Sangu'#237'neo'
        end
        object Label18: TLabel
          Left = 16
          Top = 306
          Width = 66
          Height = 13
          Caption = 'Fone Principal'
        end
        object Label19: TLabel
          Left = 111
          Top = 306
          Width = 78
          Height = 13
          Caption = 'Fone Adicional 1'
        end
        object Label20: TLabel
          Left = 336
          Top = 306
          Width = 78
          Height = 13
          Caption = 'Fone Adicional 2'
        end
        object Label21: TLabel
          Left = 506
          Top = 14
          Width = 20
          Height = 13
          Caption = 'CNS'
        end
        object Label22: TLabel
          Left = 16
          Top = 59
          Width = 19
          Height = 13
          Caption = 'CPF'
        end
        object Label23: TLabel
          Left = 111
          Top = 59
          Width = 14
          Height = 13
          Caption = 'RG'
        end
        object Label24: TLabel
          Left = 230
          Top = 59
          Width = 75
          Height = 13
          Caption = 'Data Expedi'#231#227'o'
        end
        object Label25: TLabel
          Left = 327
          Top = 59
          Width = 81
          Height = 13
          Caption = 'Org'#227'o Expedidor'
        end
        object Label26: TLabel
          Left = 416
          Top = 59
          Width = 82
          Height = 13
          Caption = 'UF Expedi'#231#227'o RG'
        end
        object Label27: TLabel
          Left = 16
          Top = 344
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label28: TLabel
          Left = 300
          Top = 344
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
        end
        object Label29: TLabel
          Left = 372
          Top = 344
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object Label30: TLabel
          Left = 452
          Top = 344
          Width = 28
          Height = 13
          Caption = 'Bairro'
        end
        object Label31: TLabel
          Left = 16
          Top = 385
          Width = 65
          Height = 13
          Caption = 'Complemento'
        end
        object Label32: TLabel
          Left = 16
          Top = 430
          Width = 84
          Height = 13
          Caption = 'Local de Trabalho'
        end
        object Label33: TLabel
          Left = 231
          Top = 430
          Width = 44
          Height = 13
          Caption = 'Profiss'#227'o'
        end
        object Label34: TLabel
          Left = 16
          Top = 472
          Width = 28
          Height = 13
          Caption = 'E-mail'
        end
        object CbxEstadoCivil: TComboBox
          Left = 16
          Top = 118
          Width = 89
          Height = 21
          Style = csDropDownList
          TabOrder = 9
          Items.Strings = (
            ''
            'SOLTEIRO(A)'
            'CASADO(A)'
            'DIVORCIADO(A)'
            'VIUVO(A)')
        end
        object edtID: TEdit
          Left = 16
          Top = 33
          Width = 82
          Height = 21
          Enabled = False
          NumbersOnly = True
          TabOrder = 0
          Text = 'edtID'
        end
        object edtNome: TEdit
          Left = 104
          Top = 33
          Width = 305
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTNOME'
        end
        object CbxEscolaridade: TComboBox
          Left = 414
          Top = 118
          Width = 173
          Height = 21
          Style = csDropDownList
          TabOrder = 13
          Items.Strings = (
            ''
            'ENSINO FUNDAMENTAL'
            'ENSINO M'#201'DIO COMPLETO'
            'ENSINO M'#201'DIO INCOMPLETO'
            'ENSINO SUPERIOR COMPLETO'
            'ENSINO SUPERIOR INCOMPLETO')
        end
        object mskNascimento: TMaskEdit
          Left = 415
          Top = 33
          Width = 85
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 2
          Text = '  /  /    '
        end
        object CbxSexo: TComboBox
          Left = 201
          Top = 118
          Width = 82
          Height = 21
          Style = csDropDownList
          TabOrder = 11
          Items.Strings = (
            ''
            'FEMININO'
            'MASCULINO')
        end
        object CbxCor: TComboBox
          Left = 289
          Top = 118
          Width = 112
          Height = 21
          Style = csDropDownList
          TabOrder = 12
          Items.Strings = (
            ''
            'BRANCO(A)'
            'PARDO(A)'
            'NEGRO(A)')
        end
        object edtIDCidade: TEdit
          Left = 16
          Top = 158
          Width = 55
          Height = 21
          CharCase = ecUpperCase
          NumbersOnly = True
          TabOrder = 15
          Text = 'EDTCIDADE'
          OnExit = edtIDCidadeExit
        end
        object edtReligiao: TEdit
          Left = 16
          Top = 198
          Width = 55
          Height = 21
          CharCase = ecUpperCase
          NumbersOnly = True
          TabOrder = 19
          Text = 'EDTRELIGIAO'
          OnExit = edtReligiaoExit
        end
        object BtnBuscaCidade: TBitBtn
          Left = 77
          Top = 158
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
          TabOrder = 16
          OnClick = BtnBuscaCidadeClick
        end
        object BtnBuscaReligiao: TBitBtn
          Left = 77
          Top = 198
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
          TabOrder = 20
          OnClick = BtnBuscaReligiaoClick
        end
        object edtMae: TEdit
          Left = 16
          Top = 238
          Width = 315
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 23
          Text = 'EDTMAE'
        end
        object edtPai: TEdit
          Left = 337
          Top = 238
          Width = 281
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 24
          Text = 'EDTPAI'
        end
        object edtNaturalidade: TEdit
          Left = 415
          Top = 157
          Width = 55
          Height = 21
          NumbersOnly = True
          TabOrder = 17
          Text = 'edtNaturalidade'
          OnExit = edtNaturalidadeExit
        end
        object edtNacionalidade: TEdit
          Left = 415
          Top = 198
          Width = 55
          Height = 21
          NumbersOnly = True
          TabOrder = 21
          Text = 'edtNacionalidade'
          OnExit = edtNacionalidadeExit
        end
        object BtnBuscaNaturalidade: TBitBtn
          Left = 476
          Top = 157
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
          TabOrder = 18
          OnClick = BtnBuscaNaturalidadeClick
        end
        object BtnBuscaNacionalidade: TBitBtn
          Left = 476
          Top = 198
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
          TabOrder = 22
          OnClick = BtnBuscaNacionalidadeClick
        end
        object edtConjuge: TEdit
          Left = 16
          Top = 281
          Width = 314
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 25
          Text = 'EDTCONJUGE'
        end
        object CbxEtnia: TComboBox
          Left = 593
          Top = 118
          Width = 108
          Height = 21
          Style = csDropDownList
          TabOrder = 14
        end
        object CbxTipoSanguineo: TComboBox
          Left = 111
          Top = 118
          Width = 85
          Height = 21
          Style = csDropDownList
          TabOrder = 10
        end
        object mskFonePrincipal: TMaskEdit
          Left = 16
          Top = 321
          Width = 89
          Height = 21
          EditMask = '(99) 99999-9999;1;_'
          MaxLength = 15
          TabOrder = 26
          Text = '(  )      -    '
        end
        object mskFoneAdicional1: TMaskEdit
          Left = 111
          Top = 321
          Width = 91
          Height = 21
          EditMask = '(99) 99999-9999;1;_'
          MaxLength = 15
          TabOrder = 27
          Text = '(  )      -    '
        end
        object mskFoneAdicional2: TMaskEdit
          Left = 336
          Top = 321
          Width = 89
          Height = 21
          EditMask = '(99) 99999-9999;1;_'
          MaxLength = 15
          TabOrder = 29
          Text = '(  )      -    '
        end
        object edtDescricaoFoneAdicional1: TEdit
          Left = 209
          Top = 321
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 28
        end
        object edtDescricaoFoneAdicional2: TEdit
          Left = 434
          Top = 321
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 30
        end
        object edtCNS: TEdit
          Left = 505
          Top = 33
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          NumbersOnly = True
          TabOrder = 3
          Text = 'EDTCNS'
        end
        object mskCPF: TMaskEdit
          Left = 16
          Top = 76
          Width = 89
          Height = 21
          EditMask = '999.999.999-99;1;_'
          MaxLength = 14
          TabOrder = 4
          Text = '   .   .   -  '
        end
        object edtRG: TEdit
          Left = 111
          Top = 76
          Width = 113
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
          Text = 'EDTRG'
        end
        object mskDataExpedicao: TMaskEdit
          Left = 230
          Top = 76
          Width = 90
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 6
          Text = '  /  /    '
        end
        object CbxOrgaoExpedidor: TComboBox
          Left = 326
          Top = 76
          Width = 82
          Height = 21
          Style = csDropDownList
          TabOrder = 7
        end
        object CbxUFExpedicaoRG: TComboBox
          Left = 415
          Top = 76
          Width = 84
          Height = 21
          Style = csDropDownList
          TabOrder = 8
        end
        object edtEndereco: TEdit
          Left = 16
          Top = 360
          Width = 278
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 31
          Text = 'EDTENDERECO'
        end
        object edtNumero: TEdit
          Left = 300
          Top = 360
          Width = 66
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 32
          Text = 'EDTNUMERO'
        end
        object mskCEP: TMaskEdit
          Left = 372
          Top = 360
          Width = 74
          Height = 21
          EditMask = '99.999-999;1;_'
          MaxLength = 10
          TabOrder = 33
          Text = '  .   -   '
        end
        object edtBairro: TEdit
          Left = 452
          Top = 360
          Width = 131
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 34
          Text = 'EDTBAIRRO'
        end
        object edtComplemento: TEdit
          Left = 16
          Top = 401
          Width = 204
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 35
          Text = 'EDTCOMPLEMENTO'
        end
        object edtLocalTrabalho: TEdit
          Left = 16
          Top = 446
          Width = 204
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 36
          Text = 'EDTLOCALTRABALHO'
        end
        object edtEmail: TEdit
          Left = 16
          Top = 488
          Width = 186
          Height = 21
          CharCase = ecLowerCase
          TabOrder = 38
          Text = 'edtemail'
        end
        object edtProfissao: TEdit
          Left = 230
          Top = 446
          Width = 158
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 37
          Text = 'EDTPROFISSAO'
        end
      end
    end
    object TbShResponsavelPaciente: TTabSheet
      Caption = 'Respons'#225'vel do Paciente'
      ImageIndex = 2
      object PnResponsavelPaciente: TPanel
        Left = 0
        Top = 0
        Width = 814
        Height = 526
        Align = alClient
        Color = 16704450
        ParentBackground = False
        TabOrder = 0
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 554
    ExplicitTop = 554
  end
end
