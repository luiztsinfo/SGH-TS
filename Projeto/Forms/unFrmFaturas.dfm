inherited frmFaturas: TfrmFaturas
  Caption = '::. FATURAS .::'
  ClientWidth = 726
  OnCreate = FormCreate
  ExplicitWidth = 732
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 726
    ExplicitWidth = 726
    inherited TbShConsulta: TTabSheet
      ExplicitWidth = 718
      inherited PnDados: TPanel
        Width = 718
        ExplicitWidth = 718
        inherited GrdDados: TDBGrid
          Width = 712
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 228
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'STATUS'
              Title.Alignment = taCenter
              Title.Caption = 'Status'
              Width = 66
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID_CONVENIO'
              Title.Alignment = taCenter
              Title.Caption = 'ID Conv'#234'nio'
              Width = 76
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATA_ABERTURA'
              Title.Alignment = taCenter
              Title.Caption = 'Abertura'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATA_FECHAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Fechamento'
              Width = 87
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        Width = 718
        ExplicitWidth = 718
        inherited CbxConsulta: TComboBox
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO'
            'STATUS')
        end
        inherited CbxOrdenarPor: TComboBox
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO'
            'STATUS')
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 639
      ExplicitHeight = 287
      inherited PnCampos: TPanel
        Width = 718
        ExplicitWidth = 718
        object Label1: TLabel
          Left = 10
          Top = 17
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 94
          Top = 16
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label3: TLabel
          Left = 10
          Top = 72
          Width = 45
          Height = 13
          Caption = 'Conv'#234'nio'
        end
        object lblConvenio: TLabel
          Left = 122
          Top = 94
          Width = 271
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 399
          Top = 16
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object SpdBtnBuscaConvenio: TSpeedButton
          Left = 93
          Top = 90
          Width = 28
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
          OnClick = SpdBtnBuscaConvenioClick
        end
        object Label5: TLabel
          Left = 10
          Top = 120
          Width = 69
          Height = 13
          Caption = 'Data Abertura'
        end
        object Label7: TLabel
          Left = 94
          Top = 120
          Width = 85
          Height = 13
          Caption = 'Data Fechamento'
        end
        object edtDescricao: TEdit
          Left = 93
          Top = 33
          Width = 300
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTDESCRICAO'
        end
        object edtID: TEdit
          Left = 10
          Top = 33
          Width = 71
          Height = 21
          Enabled = False
          NumbersOnly = True
          TabOrder = 0
          Text = 'edtID'
        end
        object edtIDConvenio: TEdit
          Left = 10
          Top = 91
          Width = 71
          Height = 21
          NumbersOnly = True
          TabOrder = 3
          Text = 'edtIDConvenio'
          OnExit = edtIDConvenioExit
        end
        object CbxStatus: TComboBox
          Left = 399
          Top = 33
          Width = 82
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'ABERTA'
            'FECHADA')
        end
        object mskDataFechamento: TMaskEdit
          Left = 93
          Top = 136
          Width = 70
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 5
          Text = '  /  /    '
        end
        object mskDataAbertura: TMaskEdit
          Left = 10
          Top = 136
          Width = 71
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 4
          Text = '  /  /    '
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Width = 726
    ExplicitWidth = 726
    inherited BtnRelatorios: TBitBtn
      Left = 455
      ExplicitLeft = 455
    end
    inherited BtnSair: TBitBtn
      Left = 599
      ExplicitLeft = 599
    end
    object BtnAtendimentos: TBitBtn
      Left = 336
      Top = 5
      Width = 115
      Height = 38
      Caption = 'ATENDIMENTOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BtnAtendimentosClick
    end
  end
end
