object frmAtendimentos: TfrmAtendimentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '::. ATENDIMENTOS .::'
  ClientHeight = 647
  ClientWidth = 969
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
    Width = 969
    Height = 647
    ActivePage = TbShAtendimentos
    Align = alClient
    TabOrder = 0
    object TbShAtendimentos: TTabSheet
      Caption = 'Atendimentos'
      object PnConsulta: TPanel
        Left = 0
        Top = 0
        Width = 961
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
          Left = 495
          Top = 8
          Width = 355
          Height = 66
          Caption = 'Atendimento'
          TabOrder = 3
          object edtAtendimento: TEdit
            Left = 8
            Top = 32
            Width = 121
            Height = 21
            Ctl3D = True
            NumbersOnly = True
            ParentCtl3D = False
            TabOrder = 0
          end
        end
        object GrpBxPaciente: TGroupBox
          Left = 495
          Top = 8
          Width = 355
          Height = 66
          Caption = 'Paciente'
          TabOrder = 2
          object lblPaciente: TLabel
            Left = 104
            Top = 34
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
            Height = 22
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnExit = edtIDPacienteExit
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
            OnClick = BtnBuscaPacienteClick
          end
        end
        object BtnConsulta: TBitBtn
          Left = 856
          Top = 24
          Width = 97
          Height = 50
          Caption = 'CONSULTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = BtnConsultaClick
        end
        object CbxConsultaPor: TComboBox
          Left = 16
          Top = 39
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'TODOS'
          OnChange = CbxConsultaPorChange
          Items.Strings = (
            'TODOS'
            'ATENDIMENTO'
            'PACIENTE')
        end
        object GrpBxDatas: TGroupBox
          Left = 136
          Top = 8
          Width = 353
          Height = 66
          Caption = 'Filtros'
          TabOrder = 1
          object Label2: TLabel
            Left = 9
            Top = 16
            Width = 27
            Height = 13
            Caption = 'Inicial'
          end
          object Label3: TLabel
            Left = 102
            Top = 16
            Width = 22
            Height = 13
            Caption = 'Final'
          end
          object Label28: TLabel
            Left = 201
            Top = 16
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object mskInicial: TMaskEdit
            Left = 9
            Top = 32
            Width = 89
            Height = 22
            Ctl3D = False
            EditMask = '99/99/9999;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '  /  /    '
          end
          object mskFinal: TMaskEdit
            Left = 102
            Top = 32
            Width = 91
            Height = 22
            Ctl3D = False
            EditMask = '99/99/9999;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            Text = '  /  /    '
          end
          object CbxStatus: TComboBox
            Left = 199
            Top = 31
            Width = 151
            Height = 24
            Style = csDropDownList
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemIndex = 0
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = 'TODOS'
            Items.Strings = (
              'TODOS'
              'AGUARDANDO'
              'EM ATENDIMENTO'
              'ALTA OU ENCAMINHADO')
          end
        end
      end
      object PnAtendimentos: TPanel
        Left = 0
        Top = 89
        Width = 961
        Height = 466
        Align = alClient
        TabOrder = 1
        object GrdAmbulatoriais: TDBGrid
          Left = 1
          Top = 1
          Width = 959
          Height = 464
          Align = alClient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = GrdAmbulatoriaisCellClick
          OnDblClick = GrdAmbulatoriaisDblClick
          OnKeyPress = GrdAmbulatoriaisKeyPress
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMenuHighlight
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID_PACIENTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Prontu'#225'rio'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMenuHighlight
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Paciente'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMenuHighlight
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 290
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATA_ATENDIMENTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMenuHighlight
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 162
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'HORA_ATENDIMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Hora '
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMenuHighlight
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_ALTA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Data/Hora Alta'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMenuHighlight
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 155
              Visible = True
            end>
        end
      end
      object PnBotoes: TPanel
        Left = 0
        Top = 555
        Width = 961
        Height = 64
        Align = alBottom
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 2
        object Label4: TLabel
          Left = 644
          Top = 21
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
          Left = 644
          Top = 36
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
          Left = 774
          Top = 21
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
          Left = 774
          Top = 36
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
          Top = 16
          Width = 121
          Height = 33
          Caption = 'F2 - NOVO '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BtnNovoClick
        end
        object BtnAlterar: TBitBtn
          Left = 143
          Top = 16
          Width = 121
          Height = 33
          Caption = 'ALTERAR '
          TabOrder = 1
          OnClick = BtnAlterarClick
        end
        object BtnCancelar: TBitBtn
          Left = 270
          Top = 16
          Width = 121
          Height = 33
          Caption = 'CANCELAR'
          TabOrder = 2
          OnClick = BtnCancelarClick
        end
        object BtnSair: TBitBtn
          Left = 856
          Top = 16
          Width = 81
          Height = 33
          Caption = 'SAIR - ESC'
          TabOrder = 3
          OnClick = BtnSairClick
        end
        object BtnAltaTransferencia: TBitBtn
          Left = 400
          Top = 16
          Width = 121
          Height = 33
          Caption = 'ALTA/TRANSF.'
          TabOrder = 4
          OnClick = BtnAltaTransferenciaClick
        end
        object BtnConsumos: TBitBtn
          Left = 528
          Top = 16
          Width = 110
          Height = 33
          Caption = 'CONSUMOS'
          TabOrder = 5
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
        Width = 961
        Height = 563
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
        object Label11: TLabel
          Left = 247
          Top = 8
          Width = 37
          Height = 13
          Caption = 'Car'#225'ter'
        end
        object Label12: TLabel
          Left = 399
          Top = 8
          Width = 30
          Height = 13
          Caption = 'Cl'#237'nica'
        end
        object Label13: TLabel
          Left = 552
          Top = 8
          Width = 84
          Height = 13
          Caption = 'Tipo Atendimento'
        end
        object Label14: TLabel
          Left = 16
          Top = 145
          Width = 97
          Height = 13
          Caption = 'M'#233'dico Respons'#225'vel'
        end
        object lblMedicoResponsavel: TLabel
          Left = 141
          Top = 162
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
          Top = 188
          Width = 65
          Height = 13
          Caption = 'Procedimento'
        end
        object lblProcedimento: TLabel
          Left = 141
          Top = 205
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
          Top = 102
          Width = 45
          Height = 13
          Caption = 'Conv'#234'nio'
        end
        object lblConvenio: TLabel
          Left = 141
          Top = 119
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
          Top = 231
          Width = 68
          Height = 13
          Caption = 'CID Provis'#243'rio'
        end
        object lblCidProvisorio: TLabel
          Left = 144
          Top = 250
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
          Top = 274
          Width = 26
          Height = 13
          Caption = 'Setor'
        end
        object lblSetor: TLabel
          Left = 144
          Top = 288
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
          Top = 325
          Width = 64
          Height = 13
          Caption = 'Respons'#225'vel '
        end
        object Label29: TLabel
          Left = 16
          Top = 56
          Width = 41
          Height = 13
          Caption = 'Paciente'
        end
        object lblPacienteNovo: TLabel
          Left = 143
          Top = 76
          Width = 426
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 177
          Top = 8
          Width = 23
          Height = 13
          Caption = 'Hora'
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
          Width = 69
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
        end
        object CbxCarater: TComboBox
          Left = 248
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
          Left = 400
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
          Left = 551
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
        object BtnBuscaMedico: TBitBtn
          Left = 104
          Top = 161
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
          TabOrder = 11
          OnClick = BtnBuscaMedicoClick
        end
        object edtMedicoResponsavel: TEdit
          Left = 16
          Top = 161
          Width = 82
          Height = 21
          NumbersOnly = True
          TabOrder = 10
          OnExit = edtMedicoResponsavelExit
        end
        object edtProcedimento: TEdit
          Left = 16
          Top = 204
          Width = 82
          Height = 21
          NumbersOnly = True
          TabOrder = 12
          OnExit = edtProcedimentoExit
        end
        object BtnBuscaProcedimento: TBitBtn
          Left = 104
          Top = 204
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
          TabOrder = 13
          OnClick = BtnBuscaProcedimentoClick
        end
        object edtConvenio: TEdit
          Left = 16
          Top = 118
          Width = 82
          Height = 21
          Ctl3D = True
          NumbersOnly = True
          ParentCtl3D = False
          TabOrder = 8
          OnExit = edtConvenioExit
        end
        object BtnBuscaConvenio: TBitBtn
          Left = 104
          Top = 118
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
          TabOrder = 9
          OnClick = BtnBuscaConvenioClick
        end
        object edtCIDProvisorio: TEdit
          Left = 16
          Top = 245
          Width = 82
          Height = 21
          NumbersOnly = True
          TabOrder = 14
          OnExit = edtCIDProvisorioExit
        end
        object BtnBuscaCIDProvisorio: TBitBtn
          Left = 104
          Top = 245
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
          TabOrder = 15
          OnClick = BtnBuscaCIDProvisorioClick
        end
        object edtSetor: TEdit
          Left = 16
          Top = 288
          Width = 82
          Height = 21
          NumbersOnly = True
          TabOrder = 16
          OnExit = edtSetorExit
        end
        object BtnBuscaSetor: TBitBtn
          Left = 104
          Top = 288
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
          TabOrder = 17
          OnClick = BtnBuscaSetorClick
        end
        object CbxResponsavel: TComboBox
          Left = 16
          Top = 341
          Width = 82
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 18
          OnChange = CbxResponsavelChange
          Items.Strings = (
            ''
            'PR'#211'PRIO'
            'OUTRO')
        end
        object PnResponsavel: TPanel
          Left = 104
          Top = 322
          Width = 473
          Height = 41
          TabOrder = 19
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
            OnExit = edtResponsavelExit
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
            OnClick = BtnBuscaResponsavelClick
          end
        end
        object edtPaciente: TEdit
          Left = 16
          Top = 71
          Width = 82
          Height = 21
          NumbersOnly = True
          TabOrder = 6
          OnExit = edtPacienteExit
        end
        object BtnBuscaPacienteNovoAtendimento: TBitBtn
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
          TabOrder = 7
          OnClick = BtnBuscaPacienteNovoAtendimentoClick
        end
        object mskHoraAtendimento: TMaskEdit
          Left = 177
          Top = 24
          Width = 65
          Height = 21
          EditMask = '99:99:99;1;_'
          MaxLength = 8
          TabOrder = 2
          Text = '  :  :  '
        end
        object PnAltaTransferencia: TPanel
          Left = 1
          Top = 368
          Width = 959
          Height = 194
          Align = alBottom
          TabOrder = 20
          Visible = False
          object PnCIDDefinitivo: TPanel
            Left = 1
            Top = 14
            Width = 957
            Height = 55
            Align = alBottom
            TabOrder = 0
            object Label25: TLabel
              Left = 14
              Top = 7
              Width = 66
              Height = 13
              Caption = 'CID Definitivo'
            end
            object lblCIDDefinitivo: TLabel
              Left = 141
              Top = 25
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
              Left = 14
              Top = 23
              Width = 82
              Height = 21
              NumbersOnly = True
              TabOrder = 0
              OnExit = edtCIDDefinitivoExit
            end
            object BtnBuscaCIDDefinitivo: TBitBtn
              Left = 102
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
          object PnDadosAlta: TPanel
            Left = 1
            Top = 69
            Width = 957
            Height = 68
            Align = alBottom
            TabOrder = 1
            object Label21: TLabel
              Left = 14
              Top = 12
              Width = 72
              Height = 13
              Caption = 'Data/Hora Alta'
            end
            object Label23: TLabel
              Left = 174
              Top = 12
              Width = 54
              Height = 13
              Caption = 'Motivo Alta'
            end
            object Label24: TLabel
              Left = 579
              Top = 12
              Width = 74
              Height = 13
              Caption = 'Tipo Sa'#237'da TISS'
            end
            object mskDataAlta: TMaskEdit
              Left = 14
              Top = 29
              Width = 72
              Height = 21
              EditMask = '99/99/9999;1;_'
              MaxLength = 10
              TabOrder = 0
              Text = '  /  /    '
            end
            object CbxMotivoAlta: TComboBox
              Left = 173
              Top = 29
              Width = 400
              Height = 21
              Style = csDropDownList
              TabOrder = 2
            end
            object CbxTipoSaidaTISS: TComboBox
              Left = 579
              Top = 29
              Width = 146
              Height = 21
              Style = csDropDownList
              TabOrder = 3
            end
            object mskHoraAlta: TMaskEdit
              Left = 92
              Top = 29
              Width = 64
              Height = 21
              EditMask = '99:99:99;1;_'
              MaxLength = 8
              TabOrder = 1
              Text = '  :  :  '
            end
          end
          object PnTransferencia: TPanel
            Left = 1
            Top = 137
            Width = 957
            Height = 56
            Align = alBottom
            TabOrder = 2
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
              Left = 14
              Top = 15
              Width = 76
              Height = 13
              Caption = 'Transferir para:'
            end
            object edtTransferidoPara: TEdit
              Left = 14
              Top = 29
              Width = 300
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
            end
          end
        end
      end
      object PnBotoesAtendimento: TPanel
        Left = 0
        Top = 563
        Width = 961
        Height = 56
        Align = alBottom
        TabOrder = 1
        object BtnSalvar: TBitBtn
          Left = 364
          Top = 10
          Width = 114
          Height = 35
          Caption = 'SALVAR'
          TabOrder = 0
          OnClick = BtnSalvarClick
        end
        object BtnCancelarOperacao: TBitBtn
          Left = 484
          Top = 10
          Width = 113
          Height = 35
          Caption = 'CANCELAR'
          TabOrder = 1
          OnClick = BtnCancelarOperacaoClick
        end
      end
    end
  end
end
