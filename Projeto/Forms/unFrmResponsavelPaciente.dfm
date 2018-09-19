inherited frmResponsavelPaciente: TfrmResponsavelPaciente
  Caption = '::. RESPONS'#193'VEL DE PACIENTE .::'
  ClientHeight = 334
  OnCreate = FormCreate
  ExplicitHeight = 363
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Height = 279
    inherited TbShConsulta: TTabSheet
      inherited PnDados: TPanel
        Height = 184
        inherited GrdDados: TDBGrid
          Height = 178
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Width = 285
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FONE'
              Title.Alignment = taCenter
              Title.Caption = 'Fone'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO_DOCUMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'N'#250'mero Documento'
              Width = 106
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
            'NOME')
        end
        inherited CbxOrdenarPor: TComboBox
          ItemIndex = 1
          Text = 'NOME'
          Items.Strings = (
            'ID'
            'NOME')
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      ExplicitWidth = 639
      ExplicitHeight = 287
      inherited PnCampos: TPanel
        Height = 251
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 110
          Top = 8
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object Label3: TLabel
          Left = 448
          Top = 8
          Width = 81
          Height = 13
          Caption = 'Data Nascimento'
        end
        object Label5: TLabel
          Left = 110
          Top = 56
          Width = 94
          Height = 13
          Caption = 'N'#250'mero Documento'
        end
        object Label6: TLabel
          Left = 16
          Top = 56
          Width = 77
          Height = 13
          Caption = 'Tipo Documento'
        end
        object Label7: TLabel
          Left = 16
          Top = 104
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object lblCidade: TLabel
          Left = 143
          Top = 121
          Width = 233
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 16
          Top = 192
          Width = 84
          Height = 13
          Caption = 'Local de Trabalho'
        end
        object Label10: TLabel
          Left = 16
          Top = 149
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label11: TLabel
          Left = 383
          Top = 192
          Width = 54
          Height = 13
          Caption = 'Parentesco'
        end
        object Label12: TLabel
          Left = 383
          Top = 149
          Width = 24
          Height = 13
          Caption = 'Fone'
        end
        object Label13: TLabel
          Left = 383
          Top = 104
          Width = 28
          Height = 13
          Caption = 'Bairro'
        end
        object edtID: TEdit
          Left = 16
          Top = 24
          Width = 77
          Height = 21
          Enabled = False
          TabOrder = 0
          Text = 'edtID'
        end
        object edtNome: TEdit
          Left = 110
          Top = 24
          Width = 315
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTNOME'
        end
        object edtNumeroDocumento: TEdit
          Left = 110
          Top = 72
          Width = 123
          Height = 21
          TabOrder = 4
          Text = 'edtNumeroDocumento'
        end
        object edtBairro: TEdit
          Left = 383
          Top = 120
          Width = 177
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 7
          Text = 'EDTBAIRRO'
        end
        object edtCidade: TEdit
          Left = 16
          Top = 120
          Width = 74
          Height = 21
          NumbersOnly = True
          TabOrder = 5
          Text = 'edtCidade'
          OnExit = edtCidadeExit
        end
        object edtEndereco: TEdit
          Left = 16
          Top = 165
          Width = 346
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 8
          Text = 'EDTENDERECO'
        end
        object edtLocalTrabalho: TEdit
          Left = 16
          Top = 208
          Width = 346
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 10
          Text = 'EDTLOCALTRABALHO'
        end
        object mskNascimento: TMaskEdit
          Left = 448
          Top = 24
          Width = 97
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 2
          Text = '  /  /    '
        end
        object mskFone: TMaskEdit
          Left = 383
          Top = 165
          Width = 119
          Height = 21
          EditMask = '(99) 99999-9999;1;_'
          MaxLength = 15
          TabOrder = 9
          Text = '(  )      -    '
        end
        object CbxParentesco: TComboBox
          Left = 383
          Top = 208
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 11
          Items.Strings = (
            ''
            'IRM'#195'O'
            'PAI'
            'M'#195'E'
            'CONJUG'#202
            'FILHO')
        end
        object CbxTipoDocumento: TComboBox
          Left = 16
          Top = 72
          Width = 77
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'CPF'
            'RG'
            'CNH'
            'TIT. ELEITOR'
            'PASSAPORTE')
        end
        object BtnBuscaCidade: TBitBtn
          Left = 96
          Top = 120
          Width = 41
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
          OnClick = BtnBuscaCidadeClick
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 279
  end
end
