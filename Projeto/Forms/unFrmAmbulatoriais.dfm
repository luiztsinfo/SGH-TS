object frmAmbulatoriais: TfrmAmbulatoriais
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '::. ATENDIMENTOS AMBULATORIAIS .::'
  ClientHeight = 632
  ClientWidth = 802
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
  object PgCtrlAtendimentos: TPageControl
    Left = 0
    Top = 0
    Width = 802
    Height = 632
    ActivePage = TbShDadosAtendimento
    Align = alClient
    TabOrder = 0
    object TbShAtendimentos: TTabSheet
      Caption = 'Atendimentos'
      object PnConsulta: TPanel
        Left = 0
        Top = 0
        Width = 794
        Height = 89
        Align = alTop
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 65
          Height = 13
          Caption = 'Consulta por:'
        end
        object GrpBxAtendimento: TGroupBox
          Left = 319
          Top = 8
          Width = 347
          Height = 66
          Caption = 'Atendimento'
          TabOrder = 4
          object edtAtendimento: TEdit
            Left = 8
            Top = 32
            Width = 121
            Height = 21
            NumbersOnly = True
            TabOrder = 0
          end
        end
        object BtnConsulta: TBitBtn
          Left = 672
          Top = 33
          Width = 97
          Height = 41
          Caption = 'CONSULTA'
          TabOrder = 0
        end
        object CbxConsultaPor: TComboBox
          Left = 16
          Top = 27
          Width = 105
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Text = 'TODOS'
          OnExit = CbxConsultaPorExit
          Items.Strings = (
            'TODOS'
            'ATENDIMENTO'
            'PACIENTE')
        end
        object GrpBxDatas: TGroupBox
          Left = 136
          Top = 8
          Width = 177
          Height = 66
          Caption = 'Filtro por Datas'
          TabOrder = 2
          object Label2: TLabel
            Left = 16
            Top = 16
            Width = 27
            Height = 13
            Caption = 'Inicial'
          end
          object Label3: TLabel
            Left = 97
            Top = 16
            Width = 22
            Height = 13
            Caption = 'Final'
          end
          object mskInicial: TMaskEdit
            Left = 16
            Top = 35
            Width = 73
            Height = 21
            EditMask = '99/99/9999;1;_'
            MaxLength = 10
            TabOrder = 0
            Text = '  /  /    '
          end
          object mskFinal: TMaskEdit
            Left = 95
            Top = 35
            Width = 72
            Height = 21
            EditMask = '99/99/9999;1;_'
            MaxLength = 10
            TabOrder = 1
            Text = '  /  /    '
          end
        end
        object GrpBxPaciente: TGroupBox
          Left = 319
          Top = 8
          Width = 347
          Height = 66
          Caption = 'Paciente'
          TabOrder = 3
          object lblPaciente: TLabel
            Left = 104
            Top = 38
            Width = 240
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtIDPaciente: TEdit
            Left = 8
            Top = 32
            Width = 49
            Height = 21
            NumbersOnly = True
            TabOrder = 0
          end
          object BtnBuscaPaciente: TBitBtn
            Left = 64
            Top = 32
            Width = 34
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
        end
      end
      object PnAtendimentos: TPanel
        Left = 0
        Top = 89
        Width = 794
        Height = 451
        Align = alClient
        TabOrder = 1
        object GrdAmbulatoriais: TDBGrid
          Left = 1
          Top = 1
          Width = 792
          Height = 449
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
              FieldName = 'ID'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID_PACIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Prontu'#225'rio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PACIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Paciente'
              Width = 317
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATA'
              Title.Alignment = taCenter
              Title.Caption = 'Data Atendimento'
              Width = 102
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'HORA'
              Title.Alignment = taCenter
              Title.Caption = 'Hora Atendimento'
              Width = 105
              Visible = True
            end>
        end
      end
      object PnBotoes: TPanel
        Left = 0
        Top = 540
        Width = 794
        Height = 64
        Align = alBottom
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 2
        object Label4: TLabel
          Left = 494
          Top = 5
          Width = 98
          Height = 13
          Caption = 'EM ATENDIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 494
          Top = 20
          Width = 79
          Height = 13
          Caption = 'AGUARDANDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 624
          Top = 5
          Width = 57
          Height = 13
          Caption = 'ATENDIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 624
          Top = 20
          Width = 65
          Height = 13
          Caption = 'CANCELADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnNovo: TBitBtn
          Left = 16
          Top = 8
          Width = 145
          Height = 33
          Caption = 'Novo Atendimento'
          TabOrder = 0
          OnClick = BtnNovoClick
        end
        object BtnAlterar: TBitBtn
          Left = 167
          Top = 8
          Width = 144
          Height = 33
          Caption = 'Alterar Atendimento'
          TabOrder = 1
        end
        object BtnCancelar: TBitBtn
          Left = 316
          Top = 8
          Width = 144
          Height = 33
          Caption = 'Cancelar Atendimento'
          TabOrder = 2
        end
        object BtnSair: TBitBtn
          Left = 712
          Top = 8
          Width = 75
          Height = 33
          Caption = 'SAIR - ESC'
          TabOrder = 3
          OnClick = BtnSairClick
        end
      end
    end
    object TbShDadosAtendimento: TTabSheet
      Caption = 'Dados do Atendimento'
      ImageIndex = 1
      OnShow = TbShDadosAtendimentoShow
      object PnDadosAtendimento: TPanel
        Left = 0
        Top = 0
        Width = 794
        Height = 548
        Align = alClient
        TabOrder = 0
        object Label8: TLabel
          Left = 16
          Top = 8
          Width = 61
          Height = 13
          Caption = 'Atendimento'
        end
        object Label9: TLabel
          Left = 104
          Top = 8
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label10: TLabel
          Left = 192
          Top = 8
          Width = 23
          Height = 13
          Caption = 'Hora'
        end
        object Label11: TLabel
          Left = 279
          Top = 8
          Width = 37
          Height = 13
          Caption = 'Car'#225'ter'
        end
        object Label12: TLabel
          Left = 431
          Top = 8
          Width = 30
          Height = 13
          Caption = 'Cl'#237'nica'
        end
        object Label13: TLabel
          Left = 584
          Top = 8
          Width = 84
          Height = 13
          Caption = 'Tipo Atendimento'
        end
        object Label14: TLabel
          Left = 16
          Top = 103
          Width = 97
          Height = 13
          Caption = 'M'#233'dico Respons'#225'vel'
        end
        object lblMedicoResponsavel: TLabel
          Left = 143
          Top = 123
          Width = 434
          Height = 13
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 16
          Top = 151
          Width = 65
          Height = 13
          Caption = 'Procedimento'
        end
        object lblProcedimento: TLabel
          Left = 144
          Top = 167
          Width = 433
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 16
          Top = 56
          Width = 45
          Height = 13
          Caption = 'Conv'#234'nio'
        end
        object lblConvenio: TLabel
          Left = 144
          Top = 76
          Width = 433
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 16
          Top = 200
          Width = 68
          Height = 13
          Caption = 'CID Provis'#243'rio'
        end
        object lblProvisorio: TLabel
          Left = 144
          Top = 217
          Width = 433
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 16
          Top = 248
          Width = 26
          Height = 13
          Caption = 'Setor'
        end
        object lblSetor: TLabel
          Left = 144
          Top = 264
          Width = 281
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 16
          Top = 296
          Width = 64
          Height = 13
          Caption = 'Respons'#225'vel '
        end
        object edtIDAtendimento: TEdit
          Left = 16
          Top = 24
          Width = 82
          Height = 21
          Enabled = False
          NumbersOnly = True
          TabOrder = 0
        end
        object mskDataAtendimento: TMaskEdit
          Left = 104
          Top = 24
          Width = 81
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
        end
        object mskHoraAtendimento: TMaskEdit
          Left = 192
          Top = 24
          Width = 80
          Height = 21
          EditMask = '99:99:999;1;_'
          MaxLength = 9
          TabOrder = 2
          Text = '  :  :   '
        end
        object CbxCarater: TComboBox
          Left = 280
          Top = 24
          Width = 145
          Height = 21
          Style = csDropDownList
          TabOrder = 3
          Items.Strings = (
            ''
            'NORMAL'
            'URGENTE'
            'ELETIVO')
        end
        object CbxTipoClinica: TComboBox
          Left = 432
          Top = 24
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Items.Strings = (
            ''
            'AMBULATORIO'
            'OBSTETRICA')
        end
        object CbxTipoAtendimento: TComboBox
          Left = 583
          Top = 24
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Items.Strings = (
            ''
            'ITEM 1'
            'ITEM 2'
            'ITEM 3')
        end
        object PnDadosAlta: TPanel
          Left = 1
          Top = 479
          Width = 792
          Height = 68
          Align = alBottom
          TabOrder = 6
          Visible = False
          object Label21: TLabel
            Left = 13
            Top = 12
            Width = 45
            Height = 13
            Caption = 'Data Alta'
          end
          object Label22: TLabel
            Left = 101
            Top = 12
            Width = 45
            Height = 13
            Caption = 'Hora Alta'
          end
          object Label23: TLabel
            Left = 189
            Top = 12
            Width = 54
            Height = 13
            Caption = 'Motivo Alta'
          end
          object Label24: TLabel
            Left = 276
            Top = 12
            Width = 74
            Height = 13
            Caption = 'Tipo Sa'#237'da TISS'
          end
          object mskDataAlta: TMaskEdit
            Left = 13
            Top = 29
            Width = 81
            Height = 21
            EditMask = '99/99/9999;1;_'
            MaxLength = 10
            TabOrder = 0
            Text = '  /  /    '
          end
          object mskHoraAlta: TMaskEdit
            Left = 101
            Top = 29
            Width = 81
            Height = 21
            EditMask = '99:99:99;1;_'
            MaxLength = 8
            TabOrder = 1
            Text = '  :  :  '
          end
          object CbxMotivoAlta: TComboBox
            Left = 188
            Top = 29
            Width = 82
            Height = 21
            Style = csDropDownList
            TabOrder = 2
          end
          object CbxTipoSaidaTISS: TComboBox
            Left = 276
            Top = 29
            Width = 146
            Height = 21
            Style = csDropDownList
            TabOrder = 3
          end
        end
        object BtnBuscaMedico: TBitBtn
          Left = 104
          Top = 119
          Width = 31
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
          TabOrder = 7
          OnClick = BtnBuscaMedicoClick
        end
        object edtMedicoResponsavel: TEdit
          Left = 16
          Top = 119
          Width = 82
          Height = 21
          NumbersOnly = True
          TabOrder = 8
          OnExit = edtMedicoResponsavelExit
        end
        object edtProcedimento: TEdit
          Left = 16
          Top = 167
          Width = 82
          Height = 21
          NumbersOnly = True
          TabOrder = 9
          OnExit = edtProcedimentoExit
        end
        object BtnBuscaProcedimento: TBitBtn
          Left = 104
          Top = 167
          Width = 31
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
          TabOrder = 10
          OnClick = BtnBuscaProcedimentoClick
        end
        object edtConvenio: TEdit
          Left = 16
          Top = 72
          Width = 82
          Height = 21
          NumbersOnly = True
          TabOrder = 11
          OnExit = edtConvenioExit
        end
        object BtnBuscaConvenio: TBitBtn
          Left = 104
          Top = 72
          Width = 31
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
          TabOrder = 12
          OnClick = BtnBuscaConvenioClick
        end
        object edtCIDProvisorio: TEdit
          Left = 16
          Top = 214
          Width = 82
          Height = 21
          NumbersOnly = True
          TabOrder = 13
          OnExit = edtCIDProvisorioExit
        end
        object BtnBuscaCIDProvisorio: TBitBtn
          Left = 104
          Top = 214
          Width = 31
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
          TabOrder = 14
          OnClick = BtnBuscaCIDProvisorioClick
        end
        object edtSetor: TEdit
          Left = 16
          Top = 264
          Width = 82
          Height = 21
          NumbersOnly = True
          TabOrder = 15
          OnExit = edtSetorExit
        end
        object BtnBuscaSetor: TBitBtn
          Left = 104
          Top = 264
          Width = 31
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
          OnClick = BtnBuscaSetorClick
        end
        object CbxResponsavel: TComboBox
          Left = 16
          Top = 312
          Width = 82
          Height = 21
          Style = csDropDownList
          TabOrder = 17
          OnExit = CbxResponsavelExit
          Items.Strings = (
            ''
            'PR'#211'PRIO'
            'OUTRO')
        end
        object PnResponsavel: TPanel
          Left = 104
          Top = 291
          Width = 473
          Height = 41
          TabOrder = 18
          Visible = False
          object Label20: TLabel
            Left = 8
            Top = 0
            Width = 61
            Height = 13
            Caption = 'Respons'#225'vel'
          end
          object lblResponsavelPaciente: TLabel
            Left = 112
            Top = 16
            Width = 353
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtResponsavel: TEdit
            Left = 8
            Top = 15
            Width = 61
            Height = 21
            NumbersOnly = True
            TabOrder = 0
          end
          object BtnBuscaResponsavel: TBitBtn
            Left = 75
            Top = 15
            Width = 31
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
        end
        object PnCIDDefinitivo: TPanel
          Left = 1
          Top = 424
          Width = 792
          Height = 55
          Align = alBottom
          TabOrder = 19
          Visible = False
          object Label25: TLabel
            Left = 15
            Top = 7
            Width = 66
            Height = 13
            Caption = 'CID Definitivo'
          end
          object lblCIDDefinitivo: TLabel
            Left = 142
            Top = 26
            Width = 434
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtCIDDefinitivo: TEdit
            Left = 15
            Top = 23
            Width = 82
            Height = 21
            NumbersOnly = True
            TabOrder = 0
            OnExit = edtCIDDefinitivoExit
          end
          object BtnBuscaCIDDefinitivo: TBitBtn
            Left = 103
            Top = 23
            Width = 31
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
            OnClick = BtnBuscaCIDDefinitivoClick
          end
        end
        object PnTransferencia: TPanel
          Left = 1
          Top = 368
          Width = 792
          Height = 56
          Align = alBottom
          TabOrder = 20
          Visible = False
          object Label26: TLabel
            Left = 323
            Top = 1
            Width = 147
            Height = 13
            Caption = 'Transfer'#234'ncia do Paciente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 15
            Top = 15
            Width = 76
            Height = 13
            Caption = 'Transferir para:'
          end
          object edtTransferidoPara: TEdit
            Left = 15
            Top = 29
            Width = 300
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
          end
        end
      end
      object PnBotoesAtendimento: TPanel
        Left = 0
        Top = 548
        Width = 794
        Height = 56
        Align = alBottom
        TabOrder = 1
        object BtnSalvar: TBitBtn
          Left = 295
          Top = 10
          Width = 99
          Height = 35
          Caption = 'SALVAR'
          TabOrder = 0
          OnClick = BtnSalvarClick
        end
        object BtnCancelarOperacao: TBitBtn
          Left = 400
          Top = 10
          Width = 99
          Height = 35
          Caption = 'CANCELAR'
          TabOrder = 1
          OnClick = BtnCancelarOperacaoClick
        end
      end
    end
  end
end
