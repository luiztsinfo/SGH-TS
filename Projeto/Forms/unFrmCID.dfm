inherited frmCID: TfrmCID
  Caption = 'CID'
  ClientHeight = 300
  ClientWidth = 602
  ExplicitWidth = 608
  ExplicitHeight = 329
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 602
    Height = 245
    ActivePage = TbShCadastro
    ExplicitWidth = 602
    ExplicitHeight = 245
    inherited TbShConsulta: TTabSheet
      ExplicitWidth = 594
      ExplicitHeight = 217
      inherited PnDados: TPanel
        Width = 594
        Height = 150
        ExplicitWidth = 594
        ExplicitHeight = 150
        inherited GrdDados: TDBGrid
          Width = 588
          Height = 144
        end
      end
      inherited PnFiltro: TPanel
        Width = 594
        ExplicitWidth = 594
        inherited Label4: TLabel
          Left = 109
          ExplicitLeft = 109
        end
        inherited CbxConsulta: TComboBox
          Width = 97
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO'
            'ID_GRUPO_CID')
          ExplicitWidth = 97
        end
        inherited BtnConsultar: TBitBtn
          Left = 484
          Top = 13
          Width = 98
          ExplicitLeft = 484
          ExplicitTop = 13
          ExplicitWidth = 98
        end
        inherited CbxOrdenarPor: TComboBox
          Left = 109
          Width = 98
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO'
            'ID_GRUPO_CID')
          ExplicitLeft = 109
          ExplicitWidth = 98
        end
        inherited GrpBxDadoConsulta: TGroupBox
          Left = 212
          Top = 8
          Width = 267
          ExplicitLeft = 212
          ExplicitTop = 8
          ExplicitWidth = 267
          inherited edtConsulta: TEdit
            Width = 249
            ExplicitWidth = 249
          end
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      OnShow = TbShCadastroShow
      ExplicitWidth = 594
      ExplicitHeight = 217
      inherited PnCampos: TPanel
        Width = 594
        Height = 217
        ExplicitWidth = 594
        ExplicitHeight = 217
        object Label1: TLabel
          Left = 16
          Top = 20
          Width = 18
          Height = 13
          Caption = 'CID'
        end
        object Label2: TLabel
          Left = 16
          Top = 66
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label3: TLabel
          Left = 112
          Top = 155
          Width = 24
          Height = 13
          Caption = 'Sexo'
        end
        object Label5: TLabel
          Left = 16
          Top = 155
          Width = 59
          Height = 13
          Caption = 'Causa '#211'bito'
        end
        object Label6: TLabel
          Left = 16
          Top = 107
          Width = 50
          Height = 13
          Caption = 'Grupo CID'
        end
        object lblGrupoCID: TLabel
          Left = 112
          Top = 129
          Width = 288
          Height = 16
          AutoSize = False
          Caption = 'lblGrupoCID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtCID: TEdit
          Left = 16
          Top = 39
          Width = 59
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'EDTCID'
        end
        object edtDescricao: TEdit
          Left = 16
          Top = 80
          Width = 275
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTDESCRICAO'
        end
        object CbxSexo: TComboBox
          Left = 112
          Top = 174
          Width = 89
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Text = 'AMBOS'
          Items.Strings = (
            'AMBOS'
            'FEMININO'
            'MASCULINO')
        end
        object ComboBox2: TComboBox
          Left = 16
          Top = 174
          Width = 59
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Text = 'N'#195'O'
          Items.Strings = (
            'N'#195'O'
            'SIM')
        end
        object edtIDGrupoCID: TEdit
          Left = 16
          Top = 126
          Width = 59
          Height = 21
          NumbersOnly = True
          TabOrder = 4
          Text = 'edtIDGrupoCID'
          OnExit = edtIDGrupoCIDExit
        end
        object BtnBuscaGrupoCID: TBitBtn
          Left = 81
          Top = 126
          Width = 25
          Height = 23
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
          TabOrder = 5
          OnClick = BtnBuscaGrupoCIDClick
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 245
    Width = 602
    ExplicitTop = 245
    ExplicitWidth = 602
    inherited BtnRelatorios: TBitBtn
      Left = 373
      ExplicitLeft = 373
    end
    inherited BtnSair: TBitBtn
      Left = 478
      ExplicitLeft = 478
    end
    inherited BtnSalvar: TBitBtn
      Left = 195
      Top = 3
      ExplicitLeft = 195
      ExplicitTop = 3
    end
    inherited BtnCancelar: TBitBtn
      Left = 299
      Top = 4
      ExplicitLeft = 299
      ExplicitTop = 4
    end
  end
end
