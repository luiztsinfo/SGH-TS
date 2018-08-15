object frmPreenchimentoHE: TfrmPreenchimentoHE
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Preenchimento de Anamnese/Hist'#243'rico de Enfermagem'
  ClientHeight = 709
  ClientWidth = 1324
  Color = 16765864
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
  object Label376: TLabel
    Left = 576
    Top = 72
    Width = 43
    Height = 13
    Caption = 'Label376'
  end
  object PgCtrlHE: TPageControl
    Left = 0
    Top = 0
    Width = 1324
    Height = 656
    ActivePage = TbShPrincipal
    Align = alClient
    MultiLine = True
    Style = tsFlatButtons
    TabHeight = 40
    TabOrder = 0
    TabWidth = 200
    object TbShPrincipal: TTabSheet
      BorderWidth = 1
      Caption = '1 - Principal'
      object Label1: TLabel
        Left = 16
        Top = 3
        Width = 11
        Height = 13
        Caption = 'ID'
      end
      object Label2: TLabel
        Left = 96
        Top = 3
        Width = 45
        Height = 13
        Caption = 'Admiss'#227'o'
      end
      object Label3: TLabel
        Left = 375
        Top = 56
        Width = 69
        Height = 13
        Caption = 'Enfermeiro (a)'
      end
      object Label4: TLabel
        Left = 16
        Top = 56
        Width = 41
        Height = 13
        Caption = 'Paciente'
      end
      object Label5: TLabel
        Left = 742
        Top = 56
        Width = 19
        Height = 13
        Caption = 'Alta'
      end
      object Label7: TLabel
        Left = 143
        Top = 109
        Width = 28
        Height = 13
        Caption = 'Idade'
      end
      object Label8: TLabel
        Left = 270
        Top = 109
        Width = 52
        Height = 13
        Caption = 'Qtd. Filhos'
      end
      object Label6: TLabel
        Left = 16
        Top = 109
        Width = 23
        Height = 13
        Caption = 'Leito'
      end
      object edtID: TEdit
        Left = 16
        Top = 22
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 0
        Text = 'EDTID'
      end
      object edtPaciente: TEdit
        Left = 16
        Top = 75
        Width = 353
        Height = 21
        CharCase = ecUpperCase
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
        Text = 'EDTPACIENTE'
        OnKeyDown = edtPacienteKeyDown
        OnKeyUp = edtPacienteKeyUp
      end
      object edtEnfermeiro: TEdit
        Left = 375
        Top = 75
        Width = 354
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
        Text = 'EDTENFERMEIRO'
        OnKeyDown = edtEnfermeiroKeyDown
        OnKeyUp = edtEnfermeiroKeyUp
      end
      object edtLeito: TEdit
        Left = 16
        Top = 128
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 7
        Text = 'EDTLEITO'
      end
      object edtIdade: TEdit
        Left = 143
        Top = 128
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 8
        Text = 'EDTIDADE'
      end
      object edtQtdFilhos: TEdit
        Left = 270
        Top = 128
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        NumbersOnly = True
        TabOrder = 9
        Text = 'EDTQTDFILHOS'
      end
      object mskAdmissao: TMaskEdit
        Left = 96
        Top = 22
        Width = 71
        Height = 21
        CharCase = ecUpperCase
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
      object mskAlta: TMaskEdit
        Left = 742
        Top = 75
        Width = 71
        Height = 21
        CharCase = ecUpperCase
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 6
        Text = '  /  /    '
      end
      object GrdPaciente: TDBGrid
        Left = 16
        Top = 98
        Width = 353
        Height = 120
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        OnDblClick = GrdPacienteDblClick
        OnExit = GrdPacienteExit
        OnKeyDown = GrdPacienteKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 268
            Visible = True
          end>
      end
      object GrdEnfermeiro: TDBGrid
        Left = 375
        Top = 98
        Width = 354
        Height = 120
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        OnDblClick = GrdEnfermeiroDblClick
        OnExit = GrdEnfermeiroExit
        OnKeyDown = GrdEnfermeiroKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 273
            Visible = True
          end>
      end
    end
    object TbShAntecedentesFamiliares: TTabSheet
      Caption = '2 - Antecedentes Familiares'
      ImageIndex = 1
      object Label9: TLabel
        Left = 16
        Top = 16
        Width = 62
        Height = 13
        Caption = 'Antecedente'
      end
      object Bevel1: TBevel
        Left = 16
        Top = 80
        Width = 402
        Height = 9
      end
      object GrdAntecedentesFamiliarHE: TDBGrid
        Left = 16
        Top = 104
        Width = 399
        Height = 120
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ANTECEDENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 286
            Visible = True
          end>
      end
      object edtAntececedenteFamiliar: TEdit
        Left = 16
        Top = 35
        Width = 321
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        Text = 'EDTANTECECEDENTE'
        OnKeyDown = edtAntececedenteFamiliarKeyDown
        OnKeyUp = edtAntececedenteFamiliarKeyUp
      end
      object BtnIncluirAntecedenteFamiliar: TBitBtn
        Left = 343
        Top = 33
        Width = 75
        Height = 25
        Caption = 'INCLUIR'
        TabOrder = 2
        OnClick = BtnIncluirAntecedenteFamiliarClick
      end
      object BtnRemover: TBitBtn
        Left = 17
        Top = 230
        Width = 75
        Height = 25
        Caption = 'REMOVER'
        TabOrder = 3
        OnClick = BtnRemoverClick
      end
      object GrdAntecedenteFamiliar: TDBGrid
        Left = 17
        Top = 62
        Width = 320
        Height = 120
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        OnDblClick = GrdAntecedenteFamiliarDblClick
        OnExit = GrdAntecedenteFamiliarExit
        OnKeyDown = GrdAntecedenteFamiliarKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 240
            Visible = True
          end>
      end
    end
    object TbShAntecedentesPessoais: TTabSheet
      Caption = '3 - Antecedentes Pessoais'
      ImageIndex = 2
      OnShow = TbShAntecedentesPessoaisShow
      object Bevel2: TBevel
        Left = 492
        Top = 5
        Width = 5
        Height = 560
      end
      object Label10: TLabel
        Left = 16
        Top = 173
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object Label11: TLabel
        Left = 16
        Top = -3
        Width = 62
        Height = 13
        Caption = 'Antecedente'
      end
      object Label12: TLabel
        Left = 151
        Top = 173
        Width = 53
        Height = 13
        Caption = 'Frequencia'
      end
      object Label13: TLabel
        Left = 286
        Top = 173
        Width = 79
        Height = 13
        Caption = 'Tempo Consumo'
      end
      object Label14: TLabel
        Left = 16
        Top = 319
        Width = 176
        Height = 13
        Caption = 'Observa'#231#245'es Gerais do Antecedente'
      end
      object Label15: TLabel
        Left = 16
        Top = 219
        Width = 75
        Height = 13
        Caption = 'Em tratamento:'
      end
      object Label16: TLabel
        Left = 16
        Top = 267
        Width = 165
        Height = 13
        Caption = 'Tempo Quimioterapia (Se houver):'
      end
      object Label17: TLabel
        Left = 195
        Top = 267
        Width = 160
        Height = 13
        Caption = 'Tempo Radioterapia (Se houver):'
      end
      object Label18: TLabel
        Left = 151
        Top = 219
        Width = 42
        Height = 13
        Caption = 'Tratado:'
      end
      object Label20: TLabel
        Left = 21
        Top = 502
        Width = 85
        Height = 13
        Caption = #218'ltima Interna'#231#227'o'
      end
      object Label21: TLabel
        Left = 200
        Top = 502
        Width = 120
        Height = 13
        Caption = 'Motivo '#218'ltima Interna'#231#227'o'
      end
      object Label22: TLabel
        Left = 502
        Top = -1
        Width = 33
        Height = 13
        Caption = 'Alergia'
      end
      object Label23: TLabel
        Left = 21
        Top = 451
        Width = 206
        Height = 13
        Caption = 'Tempo Transfus'#227'o Sangu'#237'nea (Se houver):'
      end
      object Label19: TLabel
        Left = 503
        Top = 169
        Width = 37
        Height = 13
        Caption = 'Cirurgia'
      end
      object Bevel3: TBevel
        Left = 503
        Top = 343
        Width = 393
        Height = 5
      end
      object Label24: TLabel
        Left = 503
        Top = 354
        Width = 89
        Height = 13
        Caption = 'Altera'#231#245'es '#211'sseas'
      end
      object Label25: TLabel
        Left = 503
        Top = 395
        Width = 132
        Height = 13
        Caption = 'Altera'#231#245'es Renais/Urin'#225'rias'
      end
      object Label26: TLabel
        Left = 503
        Top = 437
        Width = 136
        Height = 13
        Caption = 'Altera'#231#245'es Cardiovasculares'
      end
      object Label27: TLabel
        Left = 503
        Top = 478
        Width = 109
        Height = 13
        Caption = 'Altera'#231#245'es Pulmonares'
      end
      object Label28: TLabel
        Left = 503
        Top = 521
        Width = 206
        Height = 13
        Caption = 'Altera'#231#245'es Gastrointestinais/Hepatobiliares'
      end
      object Bevel4: TBevel
        Left = 905
        Top = 11
        Width = 5
        Height = 560
      end
      object Label29: TLabel
        Left = 916
        Top = -3
        Width = 90
        Height = 13
        Caption = 'Atividade Religiosa'
      end
      object Label381: TLabel
        Left = 119
        Top = 528
        Width = 20
        Height = 13
        Caption = 'Dias'
      end
      object edtAntecedentePessoal: TEdit
        Left = 16
        Top = 16
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        Text = 'EDTANTECEDENTEPESSOAL'
        OnKeyDown = edtAntecedentePessoalKeyDown
        OnKeyUp = edtAntecedentePessoalKeyUp
      end
      object GrdAntecedentePessoal: TDBGrid
        Left = 16
        Top = 43
        Width = 313
        Height = 120
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        OnDblClick = GrdAntecedentePessoalDblClick
        OnExit = GrdAntecedentePessoalExit
        OnKeyDown = GrdAntecedentePessoalKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 234
            Visible = True
          end>
      end
      object GrdAntecedentesPessoaisHE: TDBGrid
        Left = 16
        Top = 48
        Width = 313
        Height = 119
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ANTECEDENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Antecedente'
            Width = 282
            Visible = True
          end>
      end
      object edtQuantidade: TEdit
        Left = 16
        Top = 192
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 3
        Text = 'EDTQUANTIDADE'
      end
      object edtFrequencia: TEdit
        Left = 151
        Top = 192
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
        Text = 'EDTFREQUENCIA'
      end
      object edtTempoConsumo: TEdit
        Left = 286
        Top = 192
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
        Text = 'EDTTEMPOCONSUMO'
      end
      object RchEdtObsGerais: TRichEdit
        Left = 16
        Top = 338
        Width = 465
        Height = 65
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'RchEdtObsGerais')
        MaxLength = 255
        ParentFont = False
        TabOrder = 6
        Zoom = 100
      end
      object CbxEmTratamento: TComboBox
        Left = 16
        Top = 238
        Width = 129
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 7
        Items.Strings = (
          ''
          'SIM'
          'N'#195'O')
      end
      object edtTempoQuimioterapia: TEdit
        Left = 16
        Top = 286
        Width = 161
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 8
        Text = 'EDTTEMPOQUIMIOTERAPIA'
      end
      object edtTempoRadioterapia: TEdit
        Left = 195
        Top = 286
        Width = 161
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 9
        Text = 'EDTTEMPORADIOTERAPIA'
      end
      object CbxTratado: TComboBox
        Left = 151
        Top = 238
        Width = 129
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 10
        Items.Strings = (
          ''
          'SIM'
          'N'#195'O')
      end
      object edtUltimaInternacao: TEdit
        Left = 21
        Top = 521
        Width = 92
        Height = 21
        CharCase = ecUpperCase
        NumbersOnly = True
        TabOrder = 11
        Text = 'EDTULTIMAINTERNACAO'
      end
      object edtMotivoUltimaInternacao: TEdit
        Left = 199
        Top = 521
        Width = 287
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 12
        Text = 'EDTMOTIVOULTIMAINTERNACAO'
      end
      object edtAlergia: TEdit
        Left = 503
        Top = 18
        Width = 312
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 13
        Text = 'EDTALERGIA'
        OnKeyDown = edtAlergiaKeyDown
        OnKeyUp = edtAlergiaKeyUp
      end
      object BtnAdicionarAlergia: TBitBtn
        Left = 821
        Top = 16
        Width = 75
        Height = 25
        Caption = 'ADICIONAR'
        TabOrder = 14
        OnClick = BtnAdicionarAlergiaClick
      end
      object GrdAlergias: TDBGrid
        Left = 503
        Top = 42
        Width = 312
        Height = 119
        TabOrder = 15
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = GrdAlergiasDblClick
        OnExit = GrdAlergiasExit
        OnKeyDown = GrdAlergiasKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 234
            Visible = True
          end>
      end
      object GrdAlergiasHE: TDBGrid
        Left = 503
        Top = 43
        Width = 312
        Height = 120
        TabOrder = 16
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ALERGIA'
            Title.Alignment = taCenter
            Title.Caption = 'Alergia'
            Width = 278
            Visible = True
          end>
      end
      object BtnRemoverAlergia: TBitBtn
        Left = 821
        Top = 138
        Width = 75
        Height = 25
        Caption = 'REMOVER'
        TabOrder = 17
        OnClick = BtnRemoverAlergiaClick
      end
      object edtTempoTransfusao: TEdit
        Left = 21
        Top = 470
        Width = 160
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 18
        Text = 'EDTTEMPOTRANSFUSAO'
      end
      object edtCirurgia: TEdit
        Left = 503
        Top = 188
        Width = 312
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 19
        Text = 'EDTCIRURGIA'
        OnKeyDown = edtCirurgiaKeyDown
        OnKeyUp = edtCirurgiaKeyUp
      end
      object BtnAdicionarCirurgia: TBitBtn
        Left = 821
        Top = 186
        Width = 75
        Height = 25
        Caption = 'ADICIONAR'
        TabOrder = 20
        OnClick = BtnAdicionarCirurgiaClick
      end
      object GrdCirurgias: TDBGrid
        Left = 503
        Top = 212
        Width = 312
        Height = 120
        TabOrder = 21
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        OnDblClick = GrdCirurgiasDblClick
        OnExit = GrdCirurgiasExit
        OnKeyDown = GrdCirurgiasKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 233
            Visible = True
          end>
      end
      object GrdCirurgiasHE: TDBGrid
        Left = 503
        Top = 219
        Width = 312
        Height = 120
        TabOrder = 22
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CIRURGIA'
            Title.Alignment = taCenter
            Title.Caption = 'Cirurgia'
            Width = 277
            Visible = True
          end>
      end
      object BtnRemoverCirurgia: TBitBtn
        Left = 821
        Top = 313
        Width = 75
        Height = 25
        Caption = 'REMOVER'
        TabOrder = 23
        OnClick = BtnRemoverCirurgiaClick
      end
      object edtAlteracoesOsseas: TEdit
        Left = 503
        Top = 370
        Width = 393
        Height = 21
        TabOrder = 24
        Text = 'edtAlteracoesOsseas'
      end
      object edtAlteracoesRenaisUrinarias: TEdit
        Left = 503
        Top = 411
        Width = 393
        Height = 21
        TabOrder = 25
        Text = 'edtAlteracoesRenaisUrinarias'
      end
      object edtCardiovasculares: TEdit
        Left = 503
        Top = 451
        Width = 393
        Height = 21
        TabOrder = 26
        Text = 'edtCardiovasculares'
      end
      object edtAlteracoesPulmonares: TEdit
        Left = 503
        Top = 494
        Width = 393
        Height = 21
        TabOrder = 27
        Text = 'edtAlteracoesPulmonares'
      end
      object edtAlteracoesGastrointestinais: TEdit
        Left = 503
        Top = 538
        Width = 393
        Height = 21
        TabOrder = 28
        Text = 'edtAlteracoesGastrointestinais'
      end
      object GrdAtividadeReligiosa: TDBGrid
        Left = 916
        Top = 41
        Width = 312
        Height = 120
        TabOrder = 29
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        OnDblClick = GrdAtividadeReligiosaDblClick
        OnExit = GrdAtividadeReligiosaExit
        OnKeyDown = GrdAtividadeReligiosaKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 228
            Visible = True
          end>
      end
      object GrdAtividadesReligiosasHE: TDBGrid
        Left = 916
        Top = 43
        Width = 312
        Height = 120
        TabOrder = 30
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ATIVIDADERELIGIOSA'
            Title.Alignment = taCenter
            Title.Caption = 'Atividade Religiosa'
            Width = 284
            Visible = True
          end>
      end
      object edtAtividadeReligiosa: TEdit
        Left = 916
        Top = 16
        Width = 312
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 31
        Text = 'EDTATIVIDADERELIGIOSA'
        OnKeyDown = edtAtividadeReligiosaKeyDown
        OnKeyUp = edtAtividadeReligiosaKeyUp
      end
      object BtnAdicionarAtividadeAtividadeReligiosa: TBitBtn
        Left = 1234
        Top = 16
        Width = 75
        Height = 25
        Caption = 'ADICIONAR'
        TabOrder = 32
        OnClick = BtnAdicionarAtividadeAtividadeReligiosaClick
      end
      object BtnRemoverAtividadeReligiosa: TBitBtn
        Left = 1234
        Top = 138
        Width = 75
        Height = 25
        Caption = 'REMOVER'
        TabOrder = 33
        OnClick = BtnRemoverAtividadeReligiosaClick
      end
      object GrpBxHomem: TGroupBox
        Left = 916
        Top = 175
        Width = 393
        Height = 114
        Caption = 'Homem:'
        TabOrder = 34
        object Label30: TLabel
          Left = 16
          Top = 16
          Width = 131
          Height = 13
          Caption = 'Exame Preventivo Pr'#243'stata'
        end
        object Label31: TLabel
          Left = 96
          Top = 40
          Width = 48
          Height = 13
          Caption = 'Resultado'
        end
        object Label32: TLabel
          Left = 16
          Top = 64
          Width = 80
          Height = 13
          Caption = 'Atividade Sexual'
        end
        object mskExameProstata: TMaskEdit
          Left = 16
          Top = 35
          Width = 73
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
        end
        object edtResultadoExameProstata: TEdit
          Left = 150
          Top = 35
          Width = 227
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTRESULTADO'
        end
        object CbxAtividadeSexual: TComboBox
          Left = 16
          Top = 81
          Width = 89
          Height = 21
          Style = csDropDownList
          TabOrder = 2
          Items.Strings = (
            ''
            'SIM'
            'N'#195'O')
        end
      end
      object GrpBxMulher: TGroupBox
        Left = 916
        Top = 295
        Width = 393
        Height = 177
        Caption = 'Mulher:'
        TabOrder = 35
        object Label33: TLabel
          Left = 16
          Top = 24
          Width = 11
          Height = 13
          Caption = 'G:'
        end
        object Label34: TLabel
          Left = 95
          Top = 24
          Width = 10
          Height = 13
          Caption = 'P:'
        end
        object Label35: TLabel
          Left = 175
          Top = 24
          Width = 11
          Height = 13
          Caption = 'A:'
        end
        object Label36: TLabel
          Left = 253
          Top = 24
          Width = 34
          Height = 13
          Caption = 'D.U.M.'
        end
        object Label37: TLabel
          Left = 16
          Top = 72
          Width = 55
          Height = 13
          Caption = 'Menopausa'
        end
        object Label38: TLabel
          Left = 95
          Top = 72
          Width = 68
          Height = 13
          Caption = 'Contraceptivo'
        end
        object Label39: TLabel
          Left = 253
          Top = 72
          Width = 89
          Height = 13
          Caption = 'Auto Exame Mama'
        end
        object Label40: TLabel
          Left = 16
          Top = 119
          Width = 149
          Height = 13
          Caption = 'Exame Ginecol'#243'gico Preventivo'
        end
        object Label41: TLabel
          Left = 94
          Top = 144
          Width = 48
          Height = 13
          Caption = 'Resultado'
        end
        object CbxG: TComboBox
          Left = 16
          Top = 43
          Width = 73
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            ''
            'SIM'
            'N'#195'O')
        end
        object CbxP: TComboBox
          Left = 95
          Top = 43
          Width = 73
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'SIM'
            'N'#195'O')
        end
        object CbxA: TComboBox
          Left = 174
          Top = 43
          Width = 73
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'SIM'
            'N'#195'O')
        end
        object edtDUM: TEdit
          Left = 253
          Top = 43
          Width = 132
          Height = 21
          TabOrder = 3
          Text = 'edtDUM'
        end
        object mskMenopausa: TMaskEdit
          Left = 16
          Top = 91
          Width = 72
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 4
          Text = '  /  /    '
        end
        object CbxContraceptivo: TComboBox
          Left = 94
          Top = 91
          Width = 155
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Items.Strings = (
            ''
            'OPCAO 1'
            'OPCAO 2'
            'OPCAO 3'
            'OPCAO 4'
            'OPCAO 5')
        end
        object CbxAutoExameMama: TComboBox
          Left = 255
          Top = 91
          Width = 130
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Items.Strings = (
            ''
            'SIM'
            'N'#195'O')
        end
        object mskExamePreventivo: TMaskEdit
          Left = 16
          Top = 138
          Width = 72
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 7
          Text = '  /  /    '
        end
        object edtResultadoPreventivo: TEdit
          Left = 150
          Top = 138
          Width = 227
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 8
          Text = 'EDTRESULTADOPREVENTIVO'
        end
      end
      object BtnGravarAntecedente: TBitBtn
        Left = 16
        Top = 409
        Width = 465
        Height = 36
        Caption = 'GRAVAR ANTECEDENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 36
        OnClick = BtnGravarAntecedenteClick
      end
      object BtnAdicionarAntecedentePessoal: TBitBtn
        Left = 335
        Top = 16
        Width = 75
        Height = 25
        Caption = 'ADICIONAR'
        TabOrder = 37
        OnClick = BtnAdicionarAntecedentePessoalClick
      end
      object BtnRemoverAntecedentePessoal: TBitBtn
        Left = 335
        Top = 138
        Width = 75
        Height = 25
        Caption = 'REMOVER'
        TabOrder = 38
        OnClick = BtnRemoverAntecedentePessoalClick
      end
    end
    object TbShAvaliacaoFisica: TTabSheet
      Caption = '4 - Avalia'#231#227'o F'#237'sica'
      ImageIndex = 3
      object PnSinaisVitais: TPanel
        Left = 24
        Top = 3
        Width = 518
        Height = 102
        BorderStyle = bsSingle
        TabOrder = 0
        object Label42: TLabel
          Left = 196
          Top = 8
          Width = 121
          Height = 19
          Caption = 'SINAIS VITAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 16
          Top = 40
          Width = 62
          Height = 13
          Caption = 'Temperatura'
        end
        object Label44: TLabel
          Left = 96
          Top = 40
          Width = 13
          Height = 13
          Caption = 'FC'
        end
        object Label45: TLabel
          Left = 184
          Top = 40
          Width = 13
          Height = 13
          Caption = 'FR'
        end
        object Label46: TLabel
          Left = 272
          Top = 40
          Width = 13
          Height = 13
          Caption = 'PA'
        end
        object Label47: TLabel
          Left = 375
          Top = 40
          Width = 25
          Height = 13
          Caption = 'SPO'#178
        end
        object edtTemperatura: TEdit
          Left = 16
          Top = 59
          Width = 74
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'EDTTEMPERATURA'
        end
        object edtFC: TEdit
          Left = 96
          Top = 59
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTFC'
        end
        object edtFR: TEdit
          Left = 184
          Top = 59
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          Text = 'EDTFR'
        end
        object edtPA: TEdit
          Left = 272
          Top = 59
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'EDTPA'
        end
        object edtSPO: TEdit
          Left = 375
          Top = 59
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          Text = 'EDTSPO'
        end
      end
      object PnCondicoesGerais: TPanel
        Left = 24
        Top = 111
        Width = 518
        Height = 162
        BorderStyle = bsSingle
        TabOrder = 1
        object Label48: TLabel
          Left = 175
          Top = 8
          Width = 165
          Height = 19
          Caption = 'CONDI'#199#213'ES GERAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label49: TLabel
          Left = 24
          Top = 40
          Width = 19
          Height = 13
          Caption = 'BEG'
        end
        object Label50: TLabel
          Left = 96
          Top = 40
          Width = 20
          Height = 13
          Caption = 'REG'
        end
        object Label51: TLabel
          Left = 157
          Top = 40
          Width = 21
          Height = 13
          Caption = 'MEG'
        end
        object Label52: TLabel
          Left = 224
          Top = 40
          Width = 36
          Height = 13
          Caption = 'Ap'#225'tico'
        end
        object Label53: TLabel
          Left = 304
          Top = 40
          Width = 44
          Height = 13
          Caption = 'Cian'#243'tico'
        end
        object Label54: TLabel
          Left = 96
          Top = 88
          Width = 51
          Height = 13
          Caption = 'Sudor'#233'tico'
        end
        object Label55: TLabel
          Left = 385
          Top = 40
          Width = 36
          Height = 13
          Caption = 'Ict'#233'rico'
        end
        object Label56: TLabel
          Left = 24
          Top = 88
          Width = 58
          Height = 13
          Caption = 'Desidratado'
        end
        object Label57: TLabel
          Left = 157
          Top = 88
          Width = 45
          Height = 13
          Caption = 'Dispneico'
        end
        object Label58: TLabel
          Left = 224
          Top = 88
          Width = 32
          Height = 13
          Caption = 'Edema'
        end
        object Label59: TLabel
          Left = 304
          Top = 88
          Width = 77
          Height = 13
          Caption = 'Palidez Cut'#226'nea'
        end
        object CbxBEG: TComboBox
          Left = 24
          Top = 56
          Width = 66
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxREG: TComboBox
          Left = 96
          Top = 56
          Width = 55
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxMEG: TComboBox
          Left = 157
          Top = 56
          Width = 61
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxApatico: TComboBox
          Left = 224
          Top = 56
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxCianotico: TComboBox
          Left = 304
          Top = 56
          Width = 75
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxIcterico: TComboBox
          Left = 385
          Top = 56
          Width = 82
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDesidratado: TComboBox
          Left = 24
          Top = 107
          Width = 66
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxSudoretico: TComboBox
          Left = 96
          Top = 107
          Width = 55
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 7
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDispneico: TComboBox
          Left = 157
          Top = 107
          Width = 61
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 8
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxEdema: TComboBox
          Left = 224
          Top = 107
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 9
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPalidezCutanea: TComboBox
          Left = 304
          Top = 107
          Width = 75
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 10
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
      end
      object PnAvaliacaoNeurologica: TPanel
        Left = 24
        Top = 279
        Width = 518
        Height = 90
        BorderStyle = bsSingle
        TabOrder = 2
        object Label60: TLabel
          Left = 145
          Top = 8
          Width = 224
          Height = 19
          Caption = 'AVALIA'#199#195'O NEUROL'#211'GICA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label61: TLabel
          Left = 24
          Top = 32
          Width = 51
          Height = 13
          Caption = 'Sonol'#234'ncia'
        end
        object Label62: TLabel
          Left = 96
          Top = 32
          Width = 32
          Height = 13
          Caption = 'Torpor'
        end
        object Label63: TLabel
          Left = 168
          Top = 32
          Width = 37
          Height = 13
          Caption = 'Agitado'
        end
        object Label64: TLabel
          Left = 247
          Top = 32
          Width = 64
          Height = 13
          Caption = 'Desorientado'
        end
        object Label65: TLabel
          Left = 327
          Top = 32
          Width = 48
          Height = 13
          Caption = 'Orientado'
        end
        object CbxSonolencia: TComboBox
          Left = 24
          Top = 51
          Width = 66
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxTorpor: TComboBox
          Left = 96
          Top = 51
          Width = 66
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDesorientado: TComboBox
          Left = 247
          Top = 51
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAgitado: TComboBox
          Left = 168
          Top = 51
          Width = 73
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxOrientado: TComboBox
          Left = 327
          Top = 51
          Width = 75
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
      end
      object PnEscalaComa: TPanel
        Left = 548
        Top = 3
        Width = 613
        Height = 534
        BorderStyle = bsSingle
        TabOrder = 3
        object Label66: TLabel
          Left = 16
          Top = 39
          Width = 137
          Height = 13
          Caption = 'Escala de Coma de Glasgow:'
        end
        object Label67: TLabel
          Left = 145
          Top = 7
          Width = 233
          Height = 19
          Caption = 'ESCALA DE COMA GLASGOW'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Image1: TImage
          Left = 16
          Top = 85
          Width = 577
          Height = 428
          Picture.Data = {
            0A544A504547496D61676584A00000FFD8FFE000104A46494600010101007800
            780000FFE110DA4578696600004D4D002A000000080004013B00020000000500
            00084A8769000400000001000008509C9D00010000000A000010C8EA1C000700
            00080C0000003E000000001CEA00000008000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000004C75697A0000000590
            030002000000140000109E9004000200000014000010B2929100020000000331
            380000929200020000000331380000EA1C00070000080C00000892000000001C
            EA00000008000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000323031383A30343A31322031373A32323A33350032
            3031383A30343A31322031373A32323A33350000004C00750069007A000000FF
            E10B17687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F00
            3C3F787061636B657420626567696E3D27EFBBBF272069643D2757354D304D70
            43656869487A7265537A4E54637A6B633964273F3E0D0A3C783A786D706D6574
            6120786D6C6E733A783D2261646F62653A6E733A6D6574612F223E3C7264663A
            52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F7267
            2F313939392F30322F32322D7264662D73796E7461782D6E7323223E3C726466
            3A4465736372697074696F6E207264663A61626F75743D22757569643A666166
            35626464352D626133642D313164612D616433312D6433336437353138326631
            622220786D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F64632F
            656C656D656E74732F312E312F222F3E3C7264663A4465736372697074696F6E
            207264663A61626F75743D22757569643A66616635626464352D626133642D31
            3164612D616433312D6433336437353138326631622220786D6C6E733A786D70
            3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F223E
            3C786D703A437265617465446174653E323031382D30342D31325431373A3232
            3A33352E3138313C2F786D703A437265617465446174653E3C2F7264663A4465
            736372697074696F6E3E3C7264663A4465736372697074696F6E207264663A61
            626F75743D22757569643A66616635626464352D626133642D313164612D6164
            33312D6433336437353138326631622220786D6C6E733A64633D22687474703A
            2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F223E3C6463
            3A63726561746F723E3C7264663A53657120786D6C6E733A7264663D22687474
            703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D7379
            6E7461782D6E7323223E3C7264663A6C693E4C75697A3C2F7264663A6C693E3C
            2F7264663A5365713E0D0A0909093C2F64633A63726561746F723E3C2F726466
            3A4465736372697074696F6E3E3C2F7264663A5244463E3C2F783A786D706D65
            74613E0D0A202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020200A20202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020200A2020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020200A202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020200A20202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020202020200A2020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20200A2020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020200A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020200A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020200A20202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            0A20202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020200A2020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020200A202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020200A20202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020200A2020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020200A202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020200A20
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020200A20202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020200A2020202020202020202020202020202020202020202020
            20202020203C3F787061636B657420656E643D2777273F3EFFDB004300070505
            06050407060506080707080A110B0A09090A150F100C1118151A19181518171B
            1E27211B1D251D1718222E222528292B2C2B1A202F332F2A32272A2B2AFFDB00
            43010708080A090A140B0B142A1C181C2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
            2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
            2A2AFFC000110801B1024103012200021101031101FFC4001F00000105010101
            01010100000000000000000102030405060708090A0BFFC400B5100002010303
            020403050504040000017D010203000411051221314106135161072271143281
            91A1082342B1C11552D1F02433627282090A161718191A25262728292A343536
            3738393A434445464748494A535455565758595A636465666768696A73747576
            7778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3
            B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7
            E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101010101000000
            0000000102030405060708090A0BFFC400B51100020102040403040705040400
            010277000102031104052131061241510761711322328108144291A1B1C10923
            3352F0156272D10A162434E125F11718191A262728292A35363738393A434445
            464748494A535455565758595A636465666768696A737475767778797A828384
            85868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9
            BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5
            F6F7F8F9FAFFDA000C03010002110311003F00EF3C65E21BFD235248ECA40158
            64839F45F7F7AE77FE139D6BFE7B27E47FC6AF7C45FF0090C45F43FC96B56DFC
            33A6EB16FE1BB7993ECC26B0965965B75557765DB82C7073D6BD0A6A9AA69C97
            73C2AD2AF2AF38C24D5ADFA1CE7FC273AD7FCF64FC8FF8D1FF0009CEB5FF003D
            93F23FE35A91F83F4AD4E6D0A5D22E6F12CF5279565FB504F313CB049C6DE390
            A7D7B7D2AC8D33409BC3BA6B68826749B5E8A079EEA28CCA015E5738C15E8D82
            08E7915A7EEBF94C57D67ACFF1F4FF00330BFE139D6BFE7B27E47FC68FF84E75
            AFF9EC9F91FF001AD8BBF0CE876325DDF6BF757896F26A2F6B00B48E35D80672
            EC02E31ECA3B700E78A9E1DF0DE8BA9DC3437726A52ABDC9860BB816386071DB
            99392C7AED009C76347EEAD7E5FC05FED5CCA3CFAFA94BFE139D6BFE7B27E47F
            C68FF84E75AFF9EC9F91FF001AD6D3FC2BA4E9DE5CFAE5C5CCAD26A6D676CB02
            2ED251B6EE9037F0923900F4F5CF136B3E1DD161D5359D4F5469ADF4FB7B95B6
            8ADB4F8D558B9456EFF2818278FF0024FDCDEDCBF80FFDAB96EE7F8987FF0009
            CEB5FF003D93F23FE347FC273AD7FCF64FC8FF008D6CAF82B48B4B8D565D46EE
            EDEC6D6DE2BA81ADF6891A37DDC302319E31DBD78E82DE9DF0E2CF51D261B889
            EFB75E2BCB04A1A3F2E14EB18901F9892319DBC64FB66937416B6FC06A38C6EC
            A4FEFF0091CDFF00C273AD7FCF64FC8FF8D1FF0009CEB5FF003D93F23FE35A96
            5E0FD32EBC28B7F11D4AF6EFCB6328B2F2996DDFB2B46C439FC3AF5E2B89AD23
            0A52BD918D4A989A693949EBE6745FF09CEB5FF3D93F23FE347FC273AD7FCF64
            FC8FF8D73B4557B2A7D8CBEB35FF009DFDE745FF0009CEB5FF003D93F23FE347
            FC273AD7FCF64FC8FF008D73B451ECA9F60FACD7FE77F79D17FC273AD7FCF64F
            C8FF008D1FF09CEB5FF3D93F23FE35CED147B2A7D83EB35FF9DFDE745FF09CEB
            5FF3D93F23FE347FC273AD7FCF64FC8FF8D73B451ECA9F60FACD7FE77F79D17F
            C273AD7FCF64FC8FF8D1FF0009CEB5FF003D93F23FE35CED147B2A7D83EB35FF
            009DFDE745FF0009CEB5FF003D93F23FE347FC273AD7FCF64FC8FF008D73B451
            ECA9F60FACD7FE77F79D6EA7E31D5AD751961865508B8C6727B03EB553FE139D
            6BFE7B27E47FC6A9DEA87F14AAB80CAD2C60823208C2D7A6EA1A5D84177A83DD
            E9DE1E1A35BA1137D9EDCFDAE2CAF19DA3E53939FA7358C95385AF13B29BAF55
            C9A9B56679F7FC273AD7FCF64FC8FF008D1FF09CEB5FF3D93F23FE35BFA27C39
            8752D02D6E6E24BBFB45E46D224B098FC98063E50E0FCCD9FF0067D71DB26A58
            783B4DBAF0B8BD53A8DE5E847F392C8C4C2DDC1202B46C439E9DBAFE54EF43B0
            B971964F99EAAFB997FF0009CEB5FF003D93F23FE347FC273AD7FCF64FC8FF00
            8D6A69BE18F0EC9A6688FA9DD6A11DDEAE592310ED28AC1B68CE57206481DFAF
            6A643E14D174F860FF008482F2F0CB797925ADBAD9AA80BE5BEC666DD9E338E0
            73F5EC7EE7F97F027FDAAD7E7FC7FAEE677FC273AD7FCF64FC8FF8D1FF0009CE
            B5FF003D93F23FE35B3A6781B4F6B9D46D2FA7BABCBCB5B831ADBD84912398F6
            83E61121E9F301C743EB51DBE91A247E04D426B8B5BE17897A6DC3B44A25561F
            706D278182370CE73C678147EE7A21FF00B5759B5BF5EC657FC273AD7FCF64FC
            8FF8D1FF0009CEB5FF003D93F23FE35A1ABF8574B87C2D73A9E9E751827B5911
            6582F8C5B8EE38E514EE43C83F376EDCE6B8DAB8C29495D232A957114DDA527F
            79D17FC273AD7FCF64FC8FF8D1FF0009CEB5FF003D93F23FE35CED155ECA9F63
            2FACD7FE77F79D17FC273AD7FCF64FC8FF008D1FF09CEB5FF3D93F23FE35CED1
            47B2A7D83EB35FF9DFDE745FF09CEB5FF3D93F23FE347FC273AD7FCF64FC8FF8
            D73B451ECA9F60FACD7FE77F79D17FC273AD7FCF64FC8FF8D1FF0009CEB5FF00
            3D93F23FE35CED147B2A7D83EB35FF009DFDE745FF0009CEB5FF003D93F23FE3
            47FC273AD7FCF64FC8FF008D73B451ECA9F60FACD7FE77F79D17FC273AD7FCF6
            4FC8FF008D1FF09CEB5FF3D93F23FE35CED147B2A7D83EB35FF9DFDE745FF09C
            EB5FF3D93F23FE347FC273AD7FCF64FC8FF8D73B451ECA9F60FACD7FE77F79D1
            7FC273AD7FCF64FC8FF8D1FF0009CEB5FF003D93F23FE35CED147B2A7D83EB35
            FF009DFDE745FF0009CEB5FF003D93F23FE347FC273AD7FCF64FC8FF008D73B4
            51ECA9F60FACD7FE77F79D17FC273AD7FCF64FC8FF008D1FF09CEB5FF3D93F23
            FE35CED147B2A7D83EB35FF9DFDE745FF09CEB5FF3D93F23FE347FC273AD7FCF
            64FC8FF8D73B451ECA9F60FACD7FE77F79D6E9DE31D5AE6E9D25954A8826718C
            8E562661DFD40AA9FF0009CEB5FF003D93F23FE3599A37FC7F49FF005E973FFA
            25EB77E1DDA5BDDEBF72B7705ACEA96523A8BA40D1AB02B8273FCEA250A71BBE
            536A75ABD4718A9BD5957FE139D6BFE7B27E47FC68FF0084E75AFF009EC9F91F
            F1AE8755D2F4FD6D74BD3A293438B569EECA97D1C6635836924B01D5B20601FF
            001AA12785B43BE8DA6D12EEFB65ADF476B74972172C1DC28642071DFA8FCB1C
            CAF65D62692FACA7A4EFF3FEB6337FE139D6BFE7B27E47FC68FF0084E75AFF00
            9EC9F91FF1AD6D5BC29E1FB2B5D4DED6EB51793499E15BA0FB30C8ED8F9381C8
            07A9EE3A60D686B9E15D01F5A9CC7F69B3B3D36C965BA485572E08F90267F88E
            0E4B77C7AE42BD1FE5FC07CB8AD7DFFC7D7FC99CCFFC273AD7FCF64FC8FF008D
            1FF09CEB5FF3D93F23FE35A70F84F43B9D4B4C9A2D4AE23D2F518647884DB126
            DE84298F71F97258F1F4C7BD63F8AF448743D46386DEDF508119338BE08493FE
            CB212AC39FC2A92A4DD923394B1518F3393B7A92FF00C273AD7FCF64FC8FF8D1
            FF0009CEB5FF003D93F23FE35CED15A7B2A7D8C3EB35FF009DFDE745FF0009CE
            B5FF003D93F23FE347FC273AD7FCF64FC8FF008D73B451ECA9F60FACD7FE77F7
            9D17FC273AD7FCF64FC8FF008D1FF09CEB5FF3D93F23FE35CED147B2A7D83EB3
            5FF9DFDE745FF09C6B5FF3D97F23FE35D1782F5FBED5B52952F24DC1402304FA
            1F535E775D7FC3B3FF0013993E83FF00416AC2BD3A71A6E492B9D783AF5A55E3
            172763D3A8A28AF34FA23CC7E227FC8663FA1FFD056A95AF8D751B3FB0F950DA
            9FB0DBBDBC7B91B956C649F9BAF1ED577E227FC8653F1FFD056B90AF528454A9
            2BF99F358B9CA189972BEDFA1B769E2BD46C6D74D82D842834D95E585F692CC5
            B3B83738239238C55ABCF1C5FDE456B10B2D3EDE3B5BC5BC44B784A02EB9EA37
            743924F7F7AE6A8ADFD9C6F7B1CAAB544AC99D35B78EF52B79AE1E4B5B1BA59A
            E7ED4B15C425D6197FBC9CE47E67F9D2DA78FF0058B58764A96976E27370935C
            C3B9D189E7690401DC74E01C0C715CC514BD9C3B0D622AAFB474B6BE39D46D4D
            C66D6C6E165BA3768B3C25C4129392C993C73F5FE7489E38D445F5F4F35B595C
            C57CC1E5B49E12F0EE1801802739E3D7FA639BA28F670EC1EDEAFF0031BB3F8B
            F53B9FED4FB479527F69A2C72654FEED549DAA801E00CF7CFE7CD2C3E2DBB8F4
            78F4F9ECB4FBC5850A4335D5B0924854F65278E3DC1AC1A29F247B13EDAA5EF7
            3A0D37C6177A558AC367A7E9893AA322DEFD9479EA0F19DC0F279EE3EB9AE7E8
            A29A8A5AA265394924DEC1451455101451450014514500145145001451450014
            514500696AB2B41E20795002D1B23007A64006AEA78CB524F10DD6AE12DCBDE2
            7973DB942619176EDC15CE7B67AFE9C567EB7FF2189FFE03FF00A08AA150A29A
            D4D9CE5193E57D4DE87C5D7516942C25B1D3AEA38C3081EEADBCD7B756FE152C
            7A03D339FCB8A5D33C5F75A4D9A4567A7E98B3C6ACA97A6D479EB90467703D70
            7B83EF9AC0A28E48F6055AA277B9DB278D534AF0CE896FA6C76775756EB2F9BF
            698198C0C5BE52A78E4827A66B334FF1BEA761018A586CEF809CDC466F21DE62
            90924B2E08C1C9CD739454FB287629E22AB6ACF637B4FF0016DDD95CCD733D96
            9FA85C4D379C67BCB60EE8DFECB02081C0E3A0C718A7C1E35D5218AF51E3B59D
            AF27FB419268B7347263864E7008C0C641C62B9EA2ABD9C7B12AB545B33A4D57
            C71A86AFA7DDD9CD69630C77651A53042558B29CEECE7927001CE781DAB9BA28
            A718A8AB226752537793B8514515466145145001451450014514500145145001
            451450014514500145145001451450014514500145145005FD1BFE3FA4FF00AF
            4B9FFD12F4BA36B571A25C4F35A244ED3C0D030941202B6324608E78A4D1BFE3
            FA4FFAF4B9FF00D12F542A6C9B699A2938A4D7F5B1359DE5C69F7915DD9CAD14
            F0B06475EC7FAFD2B76FBC6FA8DEF9212DACAD234B91752476B09413C80820BF
            393C8FF3818E728A1C62DDDA08D49C55A2CDABAF145EDDA6AEB2456E06ACD1B4
            FB55BE5287236F3C7BE73575FC7BA9C97B1DCB5B586E1018264F2095B94200C4
            809E718E318EA7B122B98A297B38F62BDB545D7FADCDEB8F175E5D6A705DDC59
            E9F2456F198A2B26B606DD17D94F4E80E739E3D38AADAE7886EB5D6B713C36D6
            D0DB214860B58F62264E4E064F5E3F2ACAA28508A77484EACE49A6F70A28A2AC
            C828A28A0028A28A002BAEF8799FEDA7C0F4CFB7CAD5C8D765F0E3FE42D3FF00
            BA3F91AE7C42BD2676609DB111FEBA1E97451457927D4981A8787348D6EF2697
            556BA0F1CBB57C860063621E722AAFFC205E16FF009E9A97FDFC5FF0AD7CFF00
            A45D7FD77FFDA71D727E28F17DD689ADDBC1676F0CD656A91CFABCAF9DD6F149
            208E32B838CE7CC739CFCB19F5CD6B4EA4946C99CD5685294EEE2AE6AFFC205E
            16FF009E9A97FDFC5FF0A3FE102F0B7FCF4D4BFEFE2FF8550D5BC5775A678B8E
            950E9375A9C7FD9E2E847648A65077B2924BBAAE300607DE24F00F3899BC6769
            3240DA358DF6B266B44BC2B64880C50BE7633798E9C9DAC028CB7CA78E2B4F69
            3EE65F56A3FCA8B3FF00081785BFE7A6A5FF007F17FC28FF00840BC2DFF3D352
            FF00BF8BFE15464F1C5ACD7696DA2E9D7DABBCBA7C7A8A496A2254F25CB8524C
            8E98394E9D79F6386F84BC60DAEE9FA2AEA16525B6A1A96986FC8017CADAA635
            6230EC402650541E71D7078A3DACFB87D5A8FF002A343FE102F0B7FCF4D4BFEF
            E2FF00851FF081785BFE7A6A5FF7F17FC2A85A78EACF50974C8B4FD3751B9975
            285EE23445887971A3846672CE000091D09273C64F15347E2F8CEAD676775A3E
            A9651DFCCF05ADD5CC51AA4AEAACD8DBBCC8B908C46E45FC28F6B3EE1F56A3FC
            A8B3FF00081785BFE7A6A5FF007F17FC28FF00840BC2DFF3D352FF00BF8BFE15
            26AFAEC7A4DC5ADAA5A5D5FDEDE6F305ADA84DECA80176CBB2A85195E4B0E580
            1926A8AF8D6CA7B3B17B0B3BDBCBBBD695134F8911678DA238943EF6545D8D85
            396C648C672327B49F70FAB51FE545AFF840BC2DFF003D352FFBF8BFE147FC20
            5E16FF009E9A97FDFC5FF0A2C7C4B6D7D7515B0B5BCB79DECBED8D1DC45B1A30
            1F614619FBC083D320F5048C5655978E06A1709716B67712D84DA3C7A8C51470
            97B976772A130091D00F61C927147B59F70FAB51FE546AFF00C205E16FF9E9A9
            7FDFC5FF000A3FE102F0B7FCF4D4BFEFE2FF008567CBE3CB3B383536D534CD4A
            C26D3218A79ADE5489DDA3918AAB2F96ECA7953C673C74AE82C2EA5BCB249E7B
            2B8B176CE6DEE4A175E7BEC665E7AF068F693EE1F57A3FCA8CFF00F840BC2DFF
            003D352FFBF8BFE147FC205E16FF009E9A97FDFC5FF0AD9A28F693EE2FABD1FE
            54637FC205E16FF9E9A97FDFC5FF000A3FE102F0B7FCF4D4BFEFE2FF00856CD1
            47B49F70FABD1FE54637FC205E16FF009E9A97FDFC5FF0A3FE102F0B7FCF4D4B
            FEFE2FF856CD147B49F70FABD1FE54637FC205E16FF9E9A97FDFC5FF000A3FE1
            02F0B7FCF4D4BFEFE2FF00856CD147B49F70FABD1FE54637FC205E16FF009E9A
            97FDFC5FF0A3FE102F0B7FCF4D4BFEFE2FF856CD147B49F70FABD1FE5466DE78
            23C377176F2CCFA86F6C676BAE3A7D2A0FF840BC2DFF003D352FFBF8BFE15B77
            AC51A561D557233F4AF3AF0B78D6E75EB5D2A69FC61E144B9BD489E4D363B73E
            7A960098866EB3BBA8FBBD7B76A5ED26BA95F57A4F5E54755FF081785BFE7A6A
            5FF7F17FC28FF840BC2DFF003D352FFBF8BFE15158F8AA2D435336D6BA66A2F6
            DF6992D46A0B1A340658C90E0E18BA805586E650A48E0F233574BF1D59EA935A
            6DD3752B6B5BD95E0B6BCB88D04524AB9CA70E581F95B04A8538E09E32FDACFB
            8BEAD47F9517FF00E102F0B7FCF4D4BFEFE2FF00851FF081785BFE7A6A5FF7F1
            7FC2AAE9FE35B2D42F2CD16CEF60B4D41992C35099104174CA09C2E18B8CAAB3
            2EE550C14E33C660D27C7B6BAC7D89A0D23548A2D46391ECA599225172C8A4B4
            60799956C06C160AA76920E3049ED67DC3EAD47F951A3FF081785BFE7A6A5FF7
            F17FC28FF840BC2DFF003D352FFBF8BFE15CE41E29D7B5DF04E9F3D9699A85B6
            A77C4967B3B782411C6A7E66532CBE58CF0A03B6EEA42902AE58F8F229B4DD0C
            2585FEA37DAA41332476D0A464B40CAB2EE0F2054E5BA6E2382031E372F6B3EE
            1F56A3FCA8D7FF00840BC2DFF3D352FF00BF8BFE147FC205E16FF9E9A97FDFC5
            FF000AAA9E33B5B9B1D3E5D334FBFD42E2FE36952CE058D658950ED72E5DD517
            6B10BF7B93F77201203E34B39A1B33A558DF6A7717692482D6D9116489636D8E
            5FCC6555DAFF002E33927A038243F6B3EE1F56A3FCA8B5FF00081785BFE7A6A5
            FF007F17FC28FF00840BC2DFF3D352FF00BF8BFE157749D52D75AD260D46C199
            A09D72BB94AB290705483D0820823B106AE51ED27DC5F57A3FCA8C6FF840BC2D
            FF003D352FFBF8BFE147FC205E16FF009E9A97FDFC5FF0AD9A28F693EE1F57A3
            FCA8C6FF00840BC2DFF3D352FF00BF8BFE147FC205E16FF9E9A97FDFC5FF000A
            D9A28F693EE1F57A3FCA8C6FF840BC2DFF003D352FFBF8BFE147FC205E16FF00
            9E9A97FDFC5FF0AD9A28F693EE1F57A3FCA8C6FF00840BC2DFF3D352FF00BF8B
            FE147FC205E16FF9E9A97FDFC5FF000AD9A28F693EE1F57A3FCA8C6FF840BC2D
            FF003D352FFBF8BFE147FC205E16FF009E9A97FDFC5FF0AD9A28F693EE1F57A3
            FCA8C6FF00840BC2DFF3D352FF00BF8BFE147FC205E16FF9E9A97FDFC5FF000A
            D9A28F693EE1F57A3FCA8C6FF840BC2DFF003D352FFBF8BFE147FC205E16FF00
            9E9A97FDFC5FF0AD9A28F693EE1F57A3FCA8C6FF00840BC2DFF3D352FF00BF8B
            FE147FC205E16FF9E9A97FDFC5FF000AD9A28F693EE1F57A3FCA8C6FF840BC2D
            FF003D352FFBF8BFE147FC205E16FF009E9A97FDFC5FF0AD9A28F693EE1F57A3
            FCA8C6FF00840BC2DFF3D352FF00BF8BFE147FC205E16FF9E9A97FDFC5FF000A
            D9A28F693EE1F57A3FCA8CDB4F04786A0999E17D43718A443B9D7A32153DBD09
            A83FE102F0B7FCF4D4BFEFE2FF00856EC1FEB0FF00B8DFFA09AA5A85FC1A5E9D
            3DEDD9221810BB6D5DCC7D801C924F000E49200A3DA4FB8FEAF46DF0A33FFE10
            2F0B7FCF4D4BFEFE2FF851FF00081785BFE7A6A5FF007F17FC2A1F06EB97BE21
            D05EF353B68AD6E12F2E2DDA188E4208E564033939385E48E09E98ADFA3DA4FB
            87D5E8FF002A31BFE102F0B7FCF4D4BFEFE2FF00851FF081785BFE7A6A5FF7F1
            7FC2B668A3DA4FB8BEAF47F9518DFF00081785BFE7A6A5FF007F17FC28FF0084
            0BC2DFF3D352FF00BF8BFE15B3451ED27DC3EAF47F9518DFF081785BFE7A6A5F
            F7F17FC28FF840BC2DFF003D352FFBF8BFE15B3451ED27DC3EAF47F9518DFF00
            081785BFE7A6A5FF007F17FC28FF00840BC2DFF3D352FF00BF8BFE15B3451ED2
            7DC3EAF47F9518DFF081785BFE7A6A5FF7F17FC28FF840BC2DFF003D352FFBF8
            BFE15B3451ED27DC3EAF47F9518DFF00081785BFE7A6A5FF007F17FC2AF697E1
            CD2345B812E94D745E46DADE7B0231B58F18156E9F17FAC8FF00DFFF00D95AA6
            539B566CBA74694649C62AE5DA28A2B03B0CC539BABDF6B8FF00DA51D7223C03
            6FAABEAF71E2596E64B8D526712259EA37114420036468515955B083272A7966
            EA2BAC8CE6F2FF00DAE47FE898AA5AB86C455D25F77E470BA7E87E32D2A5B3BB
            47D22FEEE2D2D2C26F3EE658C48C8EE565DC2363F74AE571C963C8C02D4FFE15
            AFF674D6D241A6689E2222C23B5957588F66C910B1F3633E5C980DBDB298ECBF
            3715E8D45558CEE735A5786A7D3F5D96EDBEC51DBBE936F62B1D9C2625578DE5
            662B1F2153120C0DC7A1AC9D27C31E21D16DFC3F35B269935D697A6BE972C525
            CC8B1BC64C644AAC232777EE8650AE3E63F37193DDD1405CE3BC29E11D4342B9
            D264BC9EDA5165A6CF692988B7CCEF3AC8080474C29EF9CFAF5AC8D37C03ABC1
            AD68B7F7D1E992DD69D7665BAD4DEE659AEAF94C4F1F574FDD01907CA05973D0
            AE3E6F48A28B05CC1D6F4AD41F5CD3B5AD185ACB756714D6EF6F752B4492C72E
            C24EF5562AC1A353F74E41238E0D645A784F56D2AE2CB57B492CEEF5657BB7BB
            82591A185FED2EAECA8E1588D863500953B86738278ED68A02E7273691E24FED
            7B6D593FB2A6BA96C1ECEEE32F24690E640EAC876B19368C820ECDD807299C0C
            7B5F026B967A15B5B5B5FC105D41A2DB587990CF226E78E6DEE03A80CAACB95D
            C3E61BB38E2BD128A2C173CD62F877A822EB1F66B4D1F4C4D42CEDA04B7B5964
            70AF14A58B3C850191981C97201CF0738DC7D2A8A280B8514514C41451450014
            51450014514500145145003AF54BB4AA3AB2E067E95C7F866D3C57A1681A5691
            3699A34B1D95BC56EF3A6AB2E58280A5827D9FAF19C67F1AEC2F1D6279249182
            A28DCC4F6005727178AB56B8D3E2D62DBC3C66D165024468EE19AF1A23D2416E
            23C11FC5B43EEDBDB77CB486531E13D45BC610EAAB6BA5E9EC972D24D7FA7CD2
            C52DE43C9114B06DDAC73B72ECEDF77200CE067784B4BD635BF0FE891DF0B18F
            4AB2BA7BA496391CCF315670A85368540093960CD9DA3819E3AEBEF1668BA6EA
            4D637976C92A18C4ACB048F1C05CE104922A948C9C8C0623A83DC557BEF1D787
            74DBEB9B5BEBF685ED2548AE5DADE5F2A0660A57CC902EC40430C12403C8EC70
            681A997A5785758821D0B4ABF96C8697A0C8248678646335D6C4648832150B1E
            03658866C9518C03C3F4CF08DFD95A78362965B62DA13486E76B361F74124636
            7CBCF2E3AE38CD743A4EBB61AD8B8FB03CDBED9C24D15C5B49049192030CA48A
            AD820F07183CFA1AAF75E2CD1ACF553A7DC5D309D5D2276582468A277C6C4794
            29446391856607E65F519340D4E50782B5B1A5E976377069BA9D9D8472C2D613
            DF4D1DBCE4C8AF1CD2288C8723691E5B29009C86CD5EF0BF832FF439741FB449
            66534B835085C5B8650DE7CE8F1ED52380154E4678E0027AD6E278B7459358FE
            CD5BB633F9E6D83F912085A60093109B6F965C0072A1B208231906AA1F881E1B
            12F97F6E949333C0A459CE55E5424344ADB30D2654E10658F1807228D03539D4
            F87571041A6CD3E9DA26B53DB0B9866B4D441F24A493B4A8E8E6362AEB9C11B3
            0431E460675ADFC37AB68D3585FE8B67A22DC476B25ADC58441ED2D94349E603
            1955739539072A37E4B7CBD2B57FE130D17FB3E1BC5B899D2699E08E18ED2669
            CC899DEBE485F3015DA720AF0393C530F8DF401616D762F2468EEA792DE145B5
            95A569533BA3F2C2EF0C369F948068D0352CF86B477D07C3F0584D38B8995E49
            66955768692491A47C0EC3739C0F4C56B5621F17E8A34DB7BD5BA9248EE65786
            18A3B695E6774CEF51085326576B646DC8C1CE2A8E99E3DD32FB48FED09C3C49
            25F4F696D1431C93CB71E5330DCB1A26F3955DC400768EA78CD01A9D4D154AC7
            56B2D4B494D4EC66F3AD1D0B07546CF190415C6E0C0820A91904118CD411F88F
            4996DF4E9E3BD4316A71992D5F6B61D02172C78F94051925B1D875205311A945
            625A78C344BD12986EA5511406E7335ACB179B10EB247BD4798A38E532395F51
            9CD97E22E90B79A62C097535AEA2B318A75B49F73941191E5C7E5EE9430933B9
            3230A4F201C21D99D6D1586FE30D116CACAEA3BA96E52F959EDD2D6D659E470B
            F78F968A5C6D2406C81B49C1C1E29967E2CB3D4F56D2EDB4CC5CDAEA5653DDC7
            7418AEDF29E342A508CE7321CE70415C63D011BF45145300A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2802483FD61FF71BFF0041358FAE689FDB90
            DB27F685DD8B5B4E2E11ED4464B30040DC244752067238E0807A815B107FAC3F
            EE37FE826B2F58D42EB4FB58CE9F60F7F7334CB0C71862A8A4F5691C03B10004
            9383D800490290CCCF05F876F7C37A5DD5B6A3A835EBCD7B3DC293B30AAF2330
            FBA8BF31072DD46738C0C0AE8EB27C3FAD3EB56B7267B65B6B9B3BA7B59E3497
            CD4DEB8C947C0DC3047500839046456B5020A28A298051451400514514005145
            14005145140053E2FF00591FFBFF00FB2B5329F17FAC8FFDFF00FD95AA65B151
            DCBB45145666C5078D5269D9460BCBB9BDCEC41FC80A4A7CBFEB24FF007FFF00
            655A65691D8C65B8514515448514514005145140051451400514514005145140
            051451400514514005145140051451400514514009A95BA5DC7716F2E764C863
            6C1E70460D71DA7CFE2AD33C3F6BA1C1A187BEB5892D535379E236655400252B
            BC4BD06766CEBC6EC7CD5DB5C9026724E00EA4FD2B946F1CD9ADB8BF3A76A1FD
            8A5B1FDAFB23FB3EDE9BF1BFCCD99FE3D9B71F3676FCD486646ADA26B7F63F13
            E8B6DA60BB8FC432178F5012C6B15BF990A44FE62B36FCAEC2C3686CE5464734
            9A8785F559348F13DBC16DE6497DAA5A4F6C4C880CB1C6B6C19B93C63CB7E0E0
            F1EE2BB1B9D6F4AB2D4A0D3EF353B3B7BDB8C7936D2DC2AC92E4E06D52727904
            7151CDE21D16DF505B09F57B08AF19FCB5B77B941217C03B76939CE194E3DC7A
            D017655D374FBAB7F186B97D345B6DAEA3B6585F703B8A2B86E33918C8EB542C
            A2D6344D4F53B583456BF86FEFCDD47762E2348911C28659327782BB5B1B5181
            1B791CE37F4DD5F4DD66D9AE347D42D6FE05728D2DACCB2A86C03B4952467041
            C7B8A6CFADE956DAA45A6DCEA7670DFCC018AD64B85596407382109C9E87A0EC
            68038D8F41D68E9F69E1B7D34A4169ABADE9D54CD198DE15B837036AEEF30487
            8420A800EE3B88C65F69E1AD562D2FC3B135A6D92CFC47737D703CC4F92176BA
            2AFD79C8963E064F3D3838EBD75BD29B586D25753B33A8A0CB598B85F3946339
            299DDD083D3A1AAE7C53E1F59A485B5DD304B1A3BBA1BC8F722A1218919E002A
            413DB07D280D4E56E749F115B7DA16DE0BFF00B15D6AF7135CC5A6DC431DC4B1
            305F2CABBB00AA4821B6B2B8C8C639A8FC37E17D5EC6F3497BBB06852DB59BEB
            B7F32EC4EC914B138425C92CE72E1493CE724F1CD764FE21D162D253559357B0
            4D3A43B52F1AE5042C724603E70790475ED43788F444D3A2BF7D674F5B29B779
            5726E904726DCE76B67071839C74C1A02ECE42CB42D6B49D623D6069D25D8875
            2D489B48A58C48F0DC3AB2489B982E418C6416070C7B8C18F47D175ED32E6CF5
            A9B4567962BDD49A5D3E0B888C823B9955D1D4B304246C0082CA70C4F5183DAC
            BAF68F0E929AA4DAAD8C7A7C98D976F728226CF030F9C1FCEA9D9F8BF45BAD22
            7D525BD86CEC61BB96D0DC5DCA91A33A3942436EC1048E39E4501A89E12D36EF
            4FD2EE64D4625B7B8BFBC9AF5EDD183791E63642161C16031B88E37138247279
            4B7F036AD71278834FBB65B7B14B1B9B0D166DE1885B963239201CA85C46801E
            7087B1AF43B7B882F2DA3B9B49A39E09543C72C4C195D4F20823820FAD644DE3
            0D162D76D34786F61BABEB8B86B6686DE547681C23BFEF06ECAF08C3A75A0353
            97B4F0E5D4D6CFBFC3BA95BDEC5A74F089EFB5D7B94123A6DDB0A195C1563DDC
            46400BC1E717E6D3F56D36EFC29776DA33DFA69BA7CB6F75143344B244CC9081
            B37B2AB1CA1FE20319E7A03D3DBEB7A55DEA7369B6BA9D9CF7D00266B58EE15A
            58C02012C80E47240E47715460F18E86FA0D8EAF7DA85BE996D7E9BE0FB7CE90
            96F6E5B19FA13406A72C345F125ADB5BA4B6D7ED65793DDDE5E58E9179143324
            B2CE248D1A56642142960C62604B67EF29A93C1BE19D5F49BCD05B50B3F256CA
            D3518663F6812ED696E91E3C3677365549C919E39C1E2BB4BAD674CB1BC86D2F
            B51B4B6B99D95618669D51E42C4850AA4E49241031D71496BADE957DA84F6365
            A9D9DCDE5B67CFB786E15E48B070772839183C73405D97A8AA1A7EB9A4EAF2CD
            1E95AA59DF496E40996DAE12431939C6E0A4E3A1EBE86974DD6F4AD644A747D4
            ECEFC424090DADC2CBB09E80ED271D0D3117A8A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A00920FF587FDC6FF00D04D63EBCFA847608DA65845A8AF
            9A16EAD1C80D340410C10B10BBB9070C7040238C823620FF00587FDC6FFD04D6
            56B3ACC5A35BC2EF04F7535CCC20B7B6B70A649A4209C0DC428C2AB312480029
            E690CCCF0769771A6C1A833D87F64D9DC5D79967A58643F648C22A9E10945DCE
            19F6A9206ECE724E3A4ACCD175B875B82E192DE7B49ED6736F736B7214490B80
            0E0ED2CA72ACAC0A920861EE2B4E810514514C028A28A0028A28A0028A28A002
            8A28A0029F17FAC8FF00DFFF00D95A994F8BFD647FEFFF00ECAD532D8A8EE5DA
            28A2B336294BFEB24FF7FF00F655A653E5FF005927FBFF00FB2AD32B55B18CB7
            0A28A29921451450014514500145145001451450014514500145145001451450
            01451450014514500145145003754B7FB5C1736DBCA79D198F70FE1CAE335C66
            93E20BCD27C3163A38D0351935BB4823B416C2D645B767550BBFED3B4C623E37
            6739C71B777CB5DC5D30595D9B80064FE55896DE2AD16EFC323C436B7E92E965
            777DA1518E067072B8DC0E78C63348671DADD9DD0B3F186912E917773A8EB928
            7B09E1B77789B30C69196980DB1F94E8CD862B8C6467350EB3E1FB9B8D17C651
            CBA6497335E6AD625736E58DC468B6D92063E650449EC3E6F7AF4FA28B05CE7B
            49B59A2F1C788A7782448678ED36485085908570D83D091C03F85655AF95A76A
            9ACD8EADA25E5FCF7FA9ADD42D1D9196399309E5B1971B10C7B7A3B291B323AA
            E7ACB4D46D6F6E6F20B5977CB652886E17691B1CA2BE391CFCAEA78CF5AB5401
            E69158DDB69F63A02E9778BABDB6BE2F65BC36CE2109F68695A713E36316898A
            6D0DBB2E54818384B4D0671A5F86B7E952F991F8AEEAEE70D6E728A5EEB6C8DC
            703FD5618F1F77DABD328A2C173CD664D4F4D96531594D6B14BAE5DB9D423D29
            EF26B656518689141237FCE3CCDACA3B839A83C35A35E8BED15AF74FBE221F10
            6A172EF796C1582BC521491C2808325872001B8E072315EA345160B9E69A7D9D
            E695AE5B6A97DA6DDB585A6ADAA8DB15A3C8F179CE0C732C6AA59948122EE507
            FD67A64D57D02D66D32E74CD5EE345BF834EB7D47553F67164EF2DBF9D203149
            E5282D8DA1D72A0E3CCF4C9AF53A28B05CE67C1D63736FE1DBB2D6EF60979797
            173696F20DAD04723965CAFF0001392DB7A8DD8383915C9E996B3093C07A5FF6
            25F437DA2CB2477B726C9C4509FB3488CC25236B891F0D95241E3382403EA545
            0173CD742B2BA6B2F0868EBA55E5B6A5A24FE65FDCCB6EF1C68046EB215948DB
            2F9ACC0E149CE72D8C541E18826F0F436377AEE8DA85C4136810D9A471583CEF
            1C8B248D244C8AA4AEF0E9CB00A76E091815E8F36A16B6FA85B58CD2EDB9BA0E
            D0A6D2770400B738C0C6475AB54582E79EF857C3DA9E9FA8D925EC0F15D41E1A
            8ED04E497585CCAC7CB127425404E87F841AABA6D8CB7563E12D2E2D12FADEE7
            4389D7512F0342A17ECED1C91A4A70B27992156055883B771238AF4CA28B05CF
            268B4CD5EF747BFD1F468AFAEED8E8725B4126ADA67D8EEAD0ED8D52D84FB516
            456C3E76820100973915D3E98DFDADE37B1D4F4CD32F34FB2B3D2E4B6B86BAB4
            7B62ECCF198E208C06E09B5CE46546FC02726BB2A28B05C28A28A620A28A2800
            A28A2800A28A2800A28A2800A28A2802483FD61FF71BFF004135CFF8AF5CBAD0
            B471369DA7DC5F5DCD20862115B4B32444FF00CB49046A5B628E4E064F006339
            1D041FEB0FFB8DFF00A09A824912189E599D638D14B33B1C0503A927B0A4330B
            C1D15B45A4CC6092FA7B89A732DE5CDED8CB6AF3CC40CB0491570B80AA00C801
            40C920D7415574DD4AD357D361BFD36613DACEBBA295410187A8CD5AA0414514
            5300A28A2800A28A2800A28A2800A28A2800A7C5FEB23FF7FF00F656A653E2FF
            00591FFBFF00FB2B54CB62A3B9768A28ACCD8A52FF00AC93FDFF00FD956994F9
            7FD649FEFF00FECAB4CAD56C632DC28A28A64851451400514514005145140051
            4514005145140051451400514514005145140051451400514514006A1F767FF7
            0FF2AF0F92D27F0EFC24B1BDB189E4D335AD2ED52F6241C5BDCEC409381D8380
            11BDF61EE6BDD2E3FE3E1BF0FE551D21DEC790EBF6F1DD789F5E4D6F59D2F4BD
            47ED0834D7BAD35E7BD588A2F94D66CB2A93F3EEF95149DFBB20E714FD6F4DB4
            FB3F8DF5992DE39352B2D4ED9ADAE993E785961B63943D509279C633C039C57A
            DD14582E7936BDA6D9797E39D65ADA37D46CB54B66B5B965CBC0561B63943D54
            92792319E01E94BE23D46CECF4DF1A6977570915FDD6B105C416AC7F792C452D
            4798ABD4AE51F2C381B4E6BD628A2C173C8B5BD1EC2683C43A9496EA6F97C516
            B0C7720912468C6D95951872A08760718CE79ED567551A6E82DE22D3E3D2EC3F
            B30EA568AB6D7129B6B1B766801DF2ED0408CB2AE548C33119E4E6BD528A2C17
            3CFF00E1879315E789ADECA6B292D12FA2787FB3EDCDBDB10D0265A38CB36149
            07904862091C1AC7D434C54D07C51AA59C118BB6D71A2BABBF20CB2259896332
            AE148731ED04B22B0C82DDCE6BD628A2C173C9A3B0D20E8BAC8B6F13E909A5C8
            D6BE6AE91A4B8D3A2759324C81657421D76AC8032FCA14B60726A34FA349E1DB
            6B7BFB6D360D261F10442E2E34A99DAC2E14C2C59901E113A07504A8F9F24FCD
            5EC954752D2A0D51EC9AE1A4536574B751EC2065941001C83C7CC68B0EE79991
            A6866FB3887FE1043AE2F99B3FE3CCA7D98EEC7F0F91F69D99FE0DDBBDEA3B9B
            7D2E5D3EE7ECFA869F65E1E8F5767D29352B632E993FFA310E87055563F34BB2
            1CEDDC3E507815EBD451615CF2AD30E912EA3E0EBFB9D26CAD1216BDB7B621FC
            E8DD95818BC8924009563B9A30318070BC0ACCF0E5CE9F378E3C2B7DA6C7A3D8
            BDCCD32DCDB58EF9AEA2DD6B236CBCB8241690BA93B1D73B94E0B6D26BDA28A2
            C170A28A298828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A00920FF587FDC6FF00D04D51D434CB2D5AD7ECBA9DAC3776FB8398A640C848
            3919078383CF357A0FF587FDC6FF00D04D47486735F0F3FE49FE93FF005C4FFE
            846BA5A28A620A28A2800A28A2800A28A2800A28A2800A28A2800A7C5FEB23FF
            007FFF00656A653E2FF591FF00BFFF00B2B54CB62A3B9768A28ACCD8A52FFAC9
            3FDFFF00D956994F97FD649FEFFF00ECAB4CAD56C632DC28A28A648514514005
            1451400514514005145140051451400514514005145140051451400514514005
            145140125C7FC7C37E1FCAA3A92E3FE3E1BF0FE551D200A28A29805145140051
            4514005145140051451400514514005145140051451400514514005145140051
            45140051451400514514005145140051451401241FEB0FFB8DFF00A09A8EA483
            FD61FF0071BFF41351D200A28A29805145140051451400514514005145140051
            45140053E2FF00591FFBFF00FB2B5329F17FAC8FFDFF00FD95AA65B151DCBB45
            145666C5297FD649FEFF00FECAB4CA9CC124AD218D7701273FF7CAD27D8E7FF9
            E67F315A2D8C65B90D1537D8E7FF009E67F3147D8E7FF9E67F314C56643454DF
            639FFE799FCC51F639FF00E799FCC5016643454DF639FF00E799FCC51F639FFE
            799FCC5016643454DF639FFE799FCC51F639FF00E799FCC5016643454DF639FF
            00E799FCC51F639FFE799FCC5016643454DF639FFE799FCC51F639FF00E799FC
            C5016643454DF639FF00E799FCC51F639FFE799FCC5016643454DF639FFE799F
            CC51F639FF00E799FCC5016643454DF639FF00E799FCC51F639FFE799FCC5016
            643454DF639FFE799FCC51F639FF00E799FCC5016643454DF639FF00E799FCC5
            1F639FFE799FCC5016636E3FE3E1BF0FE551D5A9ED67699888CE3EB51FD8E7FF
            009E67F31405990D1537D8E7FF009E67F3147D8E7FF9E67F31405990D1537D8E
            7FF9E67F3147D8E7FF009E67F31405990D1537D8E7FF009E67F3147D8E7FF9E6
            7F31405990D1537D8E7FF9E67F3147D8E7FF009E67F31405990D1537D8E7FF00
            9E67F3147D8E7FF9E67F31405990D1537D8E7FF9E67F3147D8E7FF009E67F314
            05990D1537D8E7FF009E67F3147D8E7FF9E67F31405990D1537D8E7FF9E67F31
            47D8E7FF009E67F31405990D1537D8E7FF009E67F3147D8E7FF9E67F31405990
            D1537D8E7FF9E67F3147D8E7FF009E67F31405990D1537D8E7FF009E67F3147D
            8E7FF9E67F31405990D1537D8E7FF9E67F3147D8E7FF009E67F31405990D1537
            D8E7FF009E67F3147D8E7FF9E67F31405990D1537D8E7FF9E67F3147D8E7FF00
            9E67F31405990D1537D8E7FF009E67F3147D8E7FF9E67F3140598D83FD61FF00
            71BFF41351D5A86D27121CC67EE30EBFEC9A8FEC73FF00CF33F98A02CC868A9B
            EC73FF00CF33F98A3EC73FFCF33F98A02CC868A9BEC73FFCF33F98A3EC73FF00
            CF33F98A02CC868A9BEC73FF00CF33F98A3EC73FFCF33F98A02CC868A9BEC73F
            FCF33F98A3EC73FF00CF33F98A02CC868A9BEC73FF00CF33F98A3EC73FFCF33F
            98A02CC868A9BEC73FFCF33F98A3EC73FF00CF33F98A02CC869F17FAC8FF00DF
            FF00D95A9FF639FF00E799FCC52882489A3322ED064E3FEF96A4F61C772CD145
            1599B0B6DFF2DBFEBAFF00ECAB556C75DD3352D4F50D3AC6ED65BBD35D63BB87
            0434459432F51C820F5191F955AB6FF96DFF005D7FF655AF2993519BC37E25F1
            56BF690B4CC3586B178D4677B4B696FE4E7FEDB2A2F3D3CD26ABA13D4F4DD375
            CD3B57B8BF834DBA5B8934FB836D74141C47280095C9182402338CE0F1D41A9A
            FB52B4D35606BD97CA1713A5BC5F293BA473855E07193DCF15E3D79A6DC691A7
            78834F8AE1059DBEB7609AA5C5C42D346611630EF7951590B217DA5F903696CF
            19AB9676D696F04074AD634DD42C5FC43A7948B47B16B7B281C1F9BCA3E63A12
            7E52C10E0119232C6988F54D3752B4D5EC45E69F2F9D033BC61F695F991CA30C
            100F0CA47E156EBC7B45D2EC74FB0F0A6B1696B1C7A95CF89AEA09AEC2FEF5E2
            692E818CB75D9C0F97A64038CD2E9234E371A27D9047FF0009C8D5BFE269B7FE
            3EFCADEDE779DFC5E4F978DBBBE5FF0057B7F86803D82B9BB9F1E6856B35E46E
            752905948D1DC490691773471B2F2C0C89115E3BF359FF000BF4AB1B4F0A2DFD
            BDAC4979793CE6E2E420F325DB3C8143375214700761D2B0E23E2F834DF15DD7
            85AE34F754D5EE4FD924B177B861F2EE31BF9CAA5B1CAA95C1200279A00F4BB7
            B886EED62B9B5952682641247221CABA919041EE08A96BC56E93429DBC3F1C3A
            B688BE115D0E38F4CB8F105A1BAB79265761203996344982841CFCC3E7000C30
            A66BB6DA65AE99A64FAAEB7A5EB1343A5048ADBC43693DA1B98BCC625ED65725
            E39CA90B901DCED8CF1904807B6D15E37AC4BE17B9D7BC433789E15B7D4E5D2A
            D1B4FB7BB62678E531310B0FF119C315195F9F38A76A834D3FDAE3E20043AD1D
            3ADBFB204BFEBBCCF206EFB277F37CFDD9F2FE6CECCF1B6803D8AAA596A569A8
            49769672F98D6739B79C6D236481558AF239E194E471CD791EAED058F8861BED
            5A4D2B56D748B2F3F4CBC57B7D462902201F6299796532658AAAED24C80B0E45
            3EECE83A347E2DB77D2B4879A6F1146B3C57730B68228DA1478A4B92AA4F925F
            760302ACCDEF9A00F64A2BCE7E1479115EF8A6DAC67B196CD2FE2783FB36D8DB
            DB156B78F2D14659B0A483C86218824706AA436F22FC401E0810B7D861D49BC4
            2383B3ECE7E754F41FE9658803B2F4A00F51AA97BA95A69F25A25E4BE5B5E4E2
            DE01B49DF215660BC0E3856393C715E43E0EB659754D1E6BFD7349B6F1325D93
            A85B41A54875291BE6F3239A4F389311CF0CC9E5802323185A62691E1DB4F017
            856EF55B582282F75CCEA372CBCCCA16E70257EA6303821BE5099070B9A00F6C
            AA97BA9DA69F359C5792F96F7D3FD9ADC6D277C9B19F6F038F9518E4E071F4AF
            25B9BAD22DF4DBDB6B3B2D2E6F0C5D6B7B74B97509CC5A55BE2D7748E401B648
            BCE0FB53846909C32900D45E1531AFF65DBDB4B6D25BC3E3797C81696ED04011
            AC2470638CB36C43B8B0C120EEC8E0D1703DAA8A28A0028A28A00749F7CD7392
            78EBC3D15CC9135EC9E5C72F9325E2DA4C6D51F206D37013CA041214E5B86F94
            F3C56E6A314B3D9DCC56D2795349132C72671B588C03F81AF3DD3BC4FA0597C3
            587C3F7A634D56DF4D5B197406C7DADE5F282F9621FBCC1B390C06D2A77671CD
            007A2C8E238D9D8310A092154B1E3D00E4FD052432ACF0472A070B228601D0A3
            004679520107D88C8AF29D33C3C89A96ACBAF5BC577A9E93E15D3E312CA049E5
            CBE5DC2BBA93D1894FBC39FCEB12586DEE0DB2789B54D134E83FB0ACFF00B2DF
            58B079CEDF24798D6CC2640B287233B417FF00567D2803DD2AA43A95A5C6A975
            A7432EEBAB448E49A3DA46C57DDB0E71839D8DD3D2BCA353D0ACEF61F17DC6B0
            BFDA77B61E18B4786EEEADCC722CA219CF9C11B98E42541FEF2F4CF5A59E6D1F
            4FD53C4BA86A1A6DADC5EDDE85A7CCF1893ECF2CF139759A43228DE230761918
            646179CE31401EC354E3D56CE5D667D2926CDEDBC0971245B0FCB1B960A738C1
            C946E339E2BC422DB15D7885344934B365369DA7CD791F866068ADFCA174C2E4
            21562256588B2B48BB7238DAAC3157AF3FB0FF00B5BC5BFF0008198BFB3FFB33
            4EFB4FF63FFAB11FDAA4FB4795E57FD31DD9D9FC5BBF8B345C0F6DA2B83F070D
            1BFE135D4CF81C5A7F607D8E217074EDBF64FB5EE6FB9B7E5DFE5E37EDEDE5E7
            B577940051451400514514005145140051451400514514005145140051451400
            51451400514514005145140051451400E4FBC7E87F9550D5756B4D174F6BCD41
            E45843A460450BCAECCCC15555101662491C006AFA7DE3F43FCAB96F1D2E9874
            AB16D76E6FECEC52FE2696E6CE7F2443C360CB26432479C02CA4104AF2064D00
            6D699AA5BEAF6A6E2D63BB8D039422EECE5B67C803F865556C73D718FCAAED72
            5E03BA6B98F575B3BD9F50D162BED9A65DCF334E644F2D0C8165625A44129701
            893D08048031D6D0014514500145145001451450014514500145145001505CFF
            00CB1FFAEBFF00B2B54F505CFF00CB1FFAEBFF00B2B50F605B89451454162DB7
            FCB6FF00AEBFFB2AD4F505B7FCB6FF00AEBFFB2AD4F56B621EE1451450014514
            500145145001451450050B5D1EDED35ABFD523790CF7EB12CAAC46D511860B81
            8CFF0011CE49ABF4514005145140051451400514514005145140051451400514
            51400E93EF9ACA3E24D0C6B5FD8E759D3C6A79C7D87ED49E7671BB1E5E7774E7
            A74E6AEEA427363742CFFE3E0C4DE5738F9F6F1FAD70DA3BF858FC18D3DB5831
            9D345B466E796F37ED5905FEEFCFE7F9B9E9F3EFF7A00EFE8AF2ED7AFAE25B1F
            1A6B6FAC5F59EA3A14CABA6DBC7732471A810C7244AD002164F36472BF3824E7
            68C62AB6AF71A82C1E32D71B53D4E2BAD2752B6FB24097B22430FEE6D99D4C60
            ED60C58821811C9C00492403D386ADA71D58E96350B53A8AC7E69B3132F9C13F
            BDB339C7BE2AE57915FC5FD93E31F135FDA5E5E5BB9F10E8F1CADF6D97679723
            4064054B6DC1C91D3853B46178AD3D4EEF51D47C43E27D3EC35A8E1F2F50D3E2
            8A09F517B659018C33C092265A267FF6064FE39A00F4AA2BCB2C75496FA1D274
            0B89B59D2A26D664B4D463B8D4BCC9A3905BFDA16DD2ED1B7B212C083B83900A
            9C0F96BA9F03DCCF22EBB64D7535EDA69DAAC96B69713C864728111990B9C97D
            8ECE9B8927E5C124826803AAA28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2801C9F78FD0
            FF002A6D393EF1FA1FE55CEF8C754B8D374648ECE3BEF32F2516E6E6CACE4B96
            B452096976C6AC7200217823715CF19A00DAB6BBB6BD8DA4B3B88AE115DA3668
            9C300EA4AB2923B820823B11535705F0866B43E10BBB6B08AE2286DF55BD5459
            ADE48F0A6E1CA8F9C02481807B83C1C1C8AEF6800A28A2800A28A2800A28A280
            0A28A2800A28A2800A82E7FE58FF00D75FFD95AA7A82E7FE58FF00D75FFD95A8
            7B02DC4A28A2A0B16DBFE5B7FD75FF00D956A7A82DBFE5B7FD75FF00D956A7AB
            5B10F70A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2801D27DF35927C33A11D67FB5CE89A71D4F7
            6EFB6FD913CECE319DF8DD9C71D7A568DE7FA89BFDC3FCABC6BC23E1E4BFF02F
            864E89E081A66A7E4DA4BFF09095B48F685DACF26E8E432B6F50C36951BB761B
            033401EB373A1E9379AA41A95E69765717F6E0086EA5B746962009236B9191C9
            3D0F7A924D2B4E9A3B98E5B0B5912EDC3DCAB42A44CC0000B8C7CC70AA327FBA
            3D2BCE75AF15EAF6FAD25DE8FAA6A77B68BACC165305B0822D3E2569C42D16E7
            1E748E39CBC6CCBBBFBA3E50DB4D4E6B6B6B8B1B1D4B51B7BAB8D7B5274B5D2A
            CA39AE6E42DC6DE1E50628914B82CCE07F0E18720807A3CDA4E9D70976971616
            B2ADF002E95E15617000DA37E47CDC0039CF15593C31A047A6CBA7C7A1E9AB65
            305596D96D2311C814E5432E30707919E95C2687E37D56D349D1B58F135E30D3
            DE4D42C6F7CD8635649217731C8E5380DB21753B4ED248C55DD12FFC4BA8EB7A
            3DBEABACCB648FA40D52EE18A18725DA6C884B321C22A36C24618ED077039240
            3B11E1DD106887461A3D80D2CF26C7ECA9E41F9B77FABC6DFBDCF4EBCD5BB4B3
            B6D3ECE3B4B0B78AD6DA25DB1C30A04441E814700579A697E28D725F15787C5A
            6A5A96A5A76B0F3A7DA2F74F86D6D2622DDE64302802E0282A065F702B9C3370
            6B5BC1BAC6B275C4D3BC5579A9C3A94B67E63D85F58C22269176177B69E1F95A
            31BF1B1CB3F2A4E307201DE515E75E35D6B52D2B5FD61F48960B7B98F49B2686
            67B647219EF1D0E491B8AE3F87381924609CD3A6D6F50D16FBC41A3EA5E25B96
            16F058C96DA8CB611CD3A35C48F198D6285143B128367C8D82DC86031401E874
            5793DB78BFC476F36B3A74F3DFC4E66D2E2B39F5882D84F6C2EE478D9CAC1843
            80B950C01DDC30C71515E5F6B1E15F1678A560BE9F55BDBB5D1ED2DAE1E2804C
            8259274E47EEE22E32DB721572501CF392E07AED15E6EFAC78C2C6DE4B3BB4BF
            B48AF2F2D2D6CF52D516CDAE2232B1593E5B76319C00BB0B28F99F0436398EEF
            5DF1168D7DACD8CBADB5E8B3D47498A09A4B78964F2AE270B22BED50A49048C8
            038C1183CD007A6515C16ADE25BCB6D6FC49693EAF2D8DBDB49631DA9B7B0FB4
            CC0CA18BA468149676C7058305EBB4804563D8F8ABC49F6ABDD1AE6EEFADA597
            56B4B482E75282D7ED56D1CB0191B221FDD1398CEDC8382E37038C5007AAD15E
            596F7173E1FD57C60B79E20B9F3E4D42CA34BC8AC16E2EA606DD484589136F98
            54100EC2A31B8AD3AC35AF19DDDAEB7616FF00DA92CF61A8DBA933258AEA11DB
            3C2AEC171FE8ECDBB18CFF000B1FE203001EA34573DE0AD58EAFE1FF00324BEB
            ABD9A299A394DED97D96E213C308E58F006F556504A80A7A815D0D0014514500
            1451450014514500145145001451450014514500393EF1FA1FE54DA727DE3F43
            FCAB0FC4DA7586AD636F65A9CC9E5C970A63B496611C77CEAACC217C83B94EDD
            C5403909D0804100D4B6B4B6B28DA3B3B78ADD19DA465890282EC4B33103B924
            927B9353571FF0F51EC60D67499E08ED26B2D4589B3B66DD6F6A9222C8890B60
            129B5B3CAAE18B00A0633D850014514500145145001451450014514500145145
            001505CFFCB1FF00AEBFFB2B54F505CFFCB1FF00AEBFFB2B50F605B894514541
            62DB7FCB6FFAEBFF00B2AD4F505B7FCB6FFAEBFF00B2AD4F56B621EE14514500
            1451450014514500145145001451450014514500145145001451450014514500
            145145001451450013287DCAC3218608AABA6E9D6BA46976BA769D1793696912
            C30C7B8B6C4518032492781DCD5A9F77CFE5E37E3E5DDD338EF5E556335FE917
            7A4A78925F12693AC34D1FDA7549E76BCD36F5CC811A2089218E11216F93291E
            DE31D30403B19FC03E1CB9BA69E6B195B3722F162FB64C228E70E1FCD48F7EC4
            7DC32594027730390CD996E3C15A15C306FB34F04AB34D389AD6F668250D2B6E
            93E78DC36D6382573B781C702B0A5F186B42DA7D7E38EC4E856DAA3583DA794F
            F697459FECED30937ED043E5B66CE547DEC9E228FC61E215B837D7234C1A58F1
            09D185BA41279CEA6730ACBE66FDAA431195D872149C8CE00074127813C352F8
            65BC3AFA4C5FD90D399FEC61D820732799C60FCA3773B46076C638AD66D2ECDF
            543A8BC01AE8DBFD98B962418F76EDBB738EBED9AE4345F18EA579E301A5EAB3
            69FA7BBCB3A0D2EEAD6682E4C68CE1248A56263B80C103108A3686EBF2E0DCF1
            86BD73A2EB1686D511C8D2F51BA01DE4DBBA248D9415560AC327B82476232720
            166D7E1FF86AD2EAD6E22B091DECC9FB289AEE6956DD4A32148D5DC8442AC414
            5014E1723E55C5AD23C21A2E8574971A75BCC248A2F221F3EEE59C411F1F2442
            46611AFCABC2003E51E82B981E39D63458DA7F12C7633C52E833EB31456313C6
            D1795B0B42599D83E44830F85FBA78E78BF7BADF8A740D027D4B574D22F7CC8E
            04B68ED92487CAB896558C239667DE99917E71B4FCA7E5E460037B50F0DE93AA
            DC4D3DFDA79B2CF0C7048DE63AEE48E43220E08E8E49CF53D0F14CD43C2BA36A
            971773DF59F9935E470C734825756C44C5E32A411B1959890CB839EFC0AE6359
            F17788BC371EA9677C9A6DFDFC16F05D59CD0C2F0452A3CC2264742EE5581390
            C18821BA7CB835751F1678BF4A1E241349A24E7C3B6B1DF4AE967327DAA37466
            F2D57CD3E5B0F2DFE72581CAFCA307201D441E05F0F5BC57E8B62F27F6944915
            E493DCCB2C93842C50B3BB162CBB8E1F3B800A010157090780FC39041A9C46C1
            E71AB2471DF3DD5D4B3BCE23CEC25E462D95DC70C0E461707E518C4D53C55E26
            8AEBC4D77A747A5FF66787D6398C53C5219AED7C849A440E1C2C6C0120315604
            9190304965DF8E755B697C4DA888ECDF49D15A14820104867B9796DE27505C31
            0B87940E118907A64648074717833428EC6F2D5ED24B85BEDA2E25BABA96799F
            6F29FBD762E369F9970C36B7CCB83CD64E9BF0F6C6DAFBC4515E442E34BD5C5B
            95496EA59662D1824B3C8C77EE0C54AB6E246D182302B317E216ABA659EA536A
            96335FA5B597DA22B88F45BCD3E332EF58C4044C18B125D4865C9C06F978E62B
            8F1F6BF61A3EB334B67F6C92CF4D6BC86E9F44BCD3E1122B0061659CFCC4EE04
            1561C06E0632403A85F01F8792DEE63167316BA9229669DAF6769D9E32763F9C
            5F78619C060D9C719C714E8BC0BE1E86D6F205B1722F9A37B877BA95E491E339
            493CC2C58480F3BC1DDC0E7818C6BCF13F8974AB9D634EB8B6B3D4B50B7D3A1B
            EB51636B28C0795A360D1EF669366DDDF2952C320006B2F51F13FF006D7822E5
            AF2E747D7225D5ECED648A2826B7F95AE234649ED9DB7C6C1B77CACC43003230
            4A900EAE3F00F8762B4B9B74B39FFD2A74B996637B3998CA9C2C8252FBD5B1C6
            43024641EA6907803C36B04D1AD8CA0CF34770F30BC984DE6A0216412EFDE1F0
            482C0824120922B34F8C3508AE66D1FCAB41ABAEB89A7C51846D86DD944C25DB
            BB248803F438DEA7A0E2B3F4AF885AAEA7A859DC5BD8CD3E9F797A2DD6DA2D16
            F034311728273744794C380C54280013F312BC80771A4E8F65A2599B5D3A2648
            DA4691DA495A5791D8E4B3BB92CC7DC927000EC2AF5797B78DF56B2D06C670F6
            DA6DACCF7BE66A77B69737B02489746248DD964CC40839DEEDB4630000303D1F
            4FB9FB6E996B75BE093CF8524DF6D2F99136E50728F81B979E0E06473401668A
            28A0028A28A0028A28A0028A28A0028A28A0028A28A00727DE3F43FCAB3F56D1
            EC75CB1FB26A709962122CA852468DE3753957575219581E84106B413EF1FA1F
            E558FE22B1FB769A8B36AB2699650C9E75EC914A6167855492BE6865318CED25
            81CE148EF90013E91A2D868566F6DA642D1A49234B23C92BCB24AE7AB3C8E4B3
            9C0032C49C003A002AFD72DE017B89B47BC9BCFBB9F4B96F5DF497BD91E499AD
            4AAE0967F9D94BF9854B64EC2BCE315D4D001451450014514500145145001451
            4500145145001505CFFCB1FF00AEBFFB2B54F505CFFCB1FF00AEBFFB2B50F605
            B89451454162DB7FCB6FFAEBFF00B2AD4F505B7FCB6FFAEBFF00B2AD4F56B621
            EE14514500145145001451450014514500145145001451450014514500145145
            0014514500145145001451450025D431DC472433A2C9148A51D18643023041AE
            5EDFC0B04515B59CDAD6AB77A4DAC89243A5CEF11854236E8D4B88C4ACA842E0
            339CED01B70CE7A7BA6291CACBC155241FC2BC9B46F881AECBF0BEE5F579D62F
            10C5A743A85BDD244A16EA0976E240B8C654B14618C0201E8C2803B593C0D612
            5FBBB5E5F7F67C97BF6F934ADE9F667B8DDBF79F977FDF01F6EFDA58676F2732
            BF8334F7B1FB299AEB67F6B8D5F21973E709BCEDBF77EE6EE31D71DFBD606BFF
            0015F4ED0F56D46DD9B4C30696C12EC4FAAA4374E76866F2202A4C980C3AB2E4
            820671CD8BDF881796D75AC49168B14BA568D770DBDCDDB5F6D76591226DF1C7
            E5904A89724165E00C139C034035A2F07C4BAA5B5D5D6B1AADEC16770F756B67
            75323C70C8C186436CF31B01D800CEC003D3818B3ADF866CF5EB88E6BC967468
            ED2E6D0089801B27550E7907901063F1C835CBC9E35D674CD63C4D2DC58C579A
            3E95A9410B4AD7022782278A02422043E61064663B997820027A0D6BEF1BFD8B
            49F10DEFF67EFF00EC5D412CB679D8F3B72C2DBB3B7E5FF5FD39FBBD79E002EC
            FE0ED2EEEE6DA4BB12CE96FA64BA5985D86C9619366EDD819CE2303823A9E3D2
            B0F045BCD617165AA6B1ABEA76F2C0B0451DC5C2A0B75560C193CB54CB82AA43
            BEE61B78232D9CBD47E216A1633EA5245E1E59EC34ED523D324985F059649241
            1ED28853046E9541CB0C7519E40D183C53AB4B0EAB6EFA25B8D534C9E38A4897
            511F66D8E8AFE699991582804E7F764E4700839A00737812CEE6DEF86A7A96A1
            A8DDDF792B25EDC3442558E270E91A8445455DD9270B93B8E49C0C58D47C1DA7
            EA7FDBFE7CD72BFDBD6896975B1946C455750532BC1C487AE7B7150F833C629E
            2D4D482C76624D3EE440D2585E8BBB79728AE19250AB9FBD82303041159B77F1
            0E5B0B7D66FAF74CB7B7D374DBC3A7A4F2DF8469E72EAABC140A91FCE32E5FE5
            C37040CD003078166D47C49E257D46F750B6D2B5292DD1ADA09A3F2EFA158111
            95FE52E8090CA76942C3A92318DF7F08E95347ADC570924D06B6EAD731336157
            6C491009B705788D4E73907904718E653E2BD9FF0066EA723AE99717561F6725
            B4FD505CDA149A4F2D59E7083CB0AC097CA7CAB823766B426F1AEA5168365791
            E896D77717F7EB676A2CF53596DE70C85965598267671839404618807032017E
            3F06C32D8DD5A6B7ABEABADC3736FF00662B7B32A854EB9022541BF201DE4171
            8E08E6A293C10977A4DEE9FAB6BFACEA49776DF652F713460C69D490A91AA163
            81F3B2B37BE09CD5FF0084E6E958E9B2E8E83C41FDA02C16C96EF30B13119849
            E76CCF97E50624ECDD952369E09AD7DF120E9B6DE4EA1616963A947A81B0B817
            9A8795670B794665737063FBAC806DF9012C76E0633401BFA97856DB52D52EB5
            1FB6DF5A5D5C59259F9B693796D1AA486456538CEEDCDCE72A47041048349BC0
            767716F74BA8EA5A85F5CDD5CDB5C4D773344B237D9DC3C49848D502820F45C9
            DC79E98A927887C47278A7C2F6E2C2DAD2DF508AE1AF206BC121CA6DF9959633
            B970432F2A5836182914DB5F1F5C7FC269A7F87B55D3AC2D2E3503204821D596
            7BAB6DB19957CF842009B914F2AEE3240C9073401B4FE12D364F1C47E2A6F3BE
            DF1DA7D955370F2B19277EDC67780CCB9CF462315058F8361D3AF15ACF57D561
            D3D6E0DCA696932AC08E4E4804289366E25B617D9CE318E2BA3A2803984F052D
            ADA430693AFEB1A688BCFCB5BCB130904B2990E5248D932198E18286038C9ADC
            D2B4CB5D1748B4D334E8FCAB5B38561850B13B554607279356E8A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A00727DE3F43FCAB0BC53E198BC5
            5A6C565737F79670C73A4EC2DBCA2252BC8575911D5973838231903D2B753EF1
            FA1FE559FABCBA9C5A739D0EDADEE6F490B1ADD4C638D73FC4C429381D70064F
            4E3AD001A5D85CE9F6EF1DDEAD79AA3336E12DDA42ACA31D07951A0C77E413CF
            5ABD581E07D4AF358F04E997FA9CAB35DCF116964540818EE23803A74ADFA002
            8A28A0028A28A0028A28A0028A28A0028A28A002A0B9FF00963FF5D7FF00656A
            9EA0B9FF00963FF5D7FF00656A1EC0B7128A28A82C5B6FF96DFF005D7FF655A9
            EA0B6FF96DFF005D7FF655A9EAD6C43DC28A28A0028A28A0028A28A0028A28A0
            028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A004B84F31
            644CE372E33E9C570BAA7C31B7D53C03A3787DB51786EF48823861D4238B9650
            A15C14DDF75D472B9E0853CE2BBD93EF9A6D0072F2786355B5D57509B40D7934
            FB3D4E65B8B9864B213C91C980AED0B970A859557874900604E3922A2D43C0FF
            006ED2FC4B66751D9FDBB751DC6F3067C9DB1C498C6E1BB3E5673C7DEF6E7ADA
            280393D47C11F6FD37C4D69FDA1E5FF6F5D25C6FF233E46D8E24DB8DDF367CAC
            E78FBDEDCD5D63C057BA8BEB105A6B91DAE9DAC5D4779710B5979922CA8231F2
            C9BC00A444990549EB82335DB51401C9DE7823ED761A9DB7F686CFB7EB30EABB
            BC8CF97E5B427CBC6EE73E4FDEE31BBA71CC1AF7C3F5D6EE3509DAF2DC9BBBCB
            7BB582EECFCF8098A2F2F6491EE1E629049C6570429E71CF67450073FE1BF0ED
            D68BA8EB17D7FA92DFDC6AD3473CA52DBC954658D63C28DC7E5C28C03923B963
            CD56B8F052DC68DA9D99D4248A6BBD48EA76F731C6035B4C195D0E0921B0C833
            9C6464715D4D1401CF8D2BC4AF697067F1342B78EC86036DA6AA411853921A37
            7776DDC86FDE0E31B769C93CA6A3E09D434A8AD1F499E04BFBDD7E1BC9A4B0D3
            7CBB6B7DB0B2EEF24313B4E06F25F24B1E578C7A5D1401C71F035CB93A949AC2
            1F10FDBC5FADF2DA620561118447E4EFCF97E51208DFB8925B70E00963F096A9
            6F6F75341AE40DA96A17267BF7B8D3C496D72A63F2C45E4EF0CA8AA171893390
            7716048AEB28A00E2F4CF87E7488F47FB06A3142D6135D4922C769B2365B83B9
            D624571E5007EEF2D81D4375AADA1FC38B9D1AEB40C6AD69F64D06577820B6D3
            0426E37C2F133CCDE61DD210C0EF014121B2A7236F7B45001451450014514500
            145145001451450014514500145145001451450014514500393EF1FA1FE54DA7
            27DE3F43FCA9B40197E1AD1BFE11EF0E59E95E7FDA3ECA853CDD9B37724F4C9C
            75F5AD4A28A0028A28A0028A28A0028A28A0028A28A0028A28A002A0B9FF0096
            3FF5D7FF00656A9EA0B9FF00963FF5D7FF00656A1EC0B7128A28A82C5B6FF96D
            FF005D7FF655A9EA0B6FF96DFF005D7FF655A9EAD6C43DC28A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A00749F7CD369D27DF34DA0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A00727DE3F43FCA9B4E4FBC7E87F9536800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A82E7FE58FFD75FF00D95AA7A82E
            7FE58FFD75FF00D95A87B02DC4A28A2A0B16D7FE5B7FD75FFD956A7C5663C8E8
            F26C765FDE7638FE15AAF0EA71DCCD3C56F7AB2C96EC1264497718988070C01E
            0E08383D8D5A5A19B7A9B78A3158B0EA49712CD1DBDEACB25BBEC99125DC636C
            03B5803C1C10707B114B3EA02D821B9BB10891C469E64BB7731E028C9E49EC29
            D85CC6CE28C5635BEA02EE1135ADD89E224A878E5DCB90482320F62083EE2A4F
            3E6FF9EAFF00F7D1A2C1CC6AE28C56579F37FCF57FFBE8D635D78E7C3D637525
            B5EF8A34CB7B889B6C914DA8468E87D082D9068B0731D7628C5650B8948044CE
            41E8431A3CF9BFE7ABFF00DF468B0731AB8A31595E7CDFF3D5FF00EFA3479F37
            FCF57FFBE8D160E63571462B2BCF9BFE7ABFFDF46A38750170D2ADBDD894C2FE
            5CA125DDB1B00ED383C1C10707D45160E63671462B2BCF9BFE7ABFFDF468F3E6
            FF009EAFFF007D1A2C1CC6AE28C56579F37FCF57FF00BE8D4736A02DCC62E2EC
            4465711C7BE5DBBD8F21464F2783C7B5160E63671462B2BCF9BFE7ABFF00DF46
            8F3E6FF9EAFF00F7D1A2C1CC6AE28C56579F37FCF57FFBE8D1E7CDFF003D5FFE
            FA3458398D5C518ACAF3E6FF009EAFFF007D1A3CF9BFE7ABFF00DF468B0731AF
            27DF34DC5674F34A27602471D3F88FA5653F8A74B8F57FECA935DB35D4490A2C
            DAF144D923206CCEEE4107A74A2C1CC74D8A3158CBA887BA92D92F034F12ABC9
            10972C8AD9DA48CE403B5B1EB83E95279F37FCF57FFBE8D160E63571462B1E6B
            E36D6F24F7175E5431297924924DAA8A064924F40077A725DBCB1AC914ECE8C0
            32B2BE4107A1068B0731AD8A31595E7CDFF3D5FF00EFA3479F37FCF57FFBE8D1
            60E63571462B2BCF9BFE7ABFFDF468F3E6FF009EAFFF007D1A2C1CC6AE28C565
            79F37FCF57FF00BE8D1E7CDFF3D5FF00EFA3458398D5C518ACAF3E6FF9EAFF00
            F7D1A3CF9BFE7ABFFDF468B0731AB8A31595E7CDFF003D5FFEFA3479F37FCF57
            FF00BE8D160E63571462B2BCF9BFE7ABFF00DF468F3E6FF9EAFF00F7D1A2C1CC
            6AE28C56579F37FCF57FFBE8D1E7CDFF003D5FFEFA3458398D5C518ACAF3E6FF
            009EAFFF007D1A3CF9BFE7ABFF00DF468B0731AB8A31595E7CDFF3D5FF00EFA3
            479F37FCF57FFBE8D160E63571462B2BCF9BFE7ABFFDF468F3E6FF009EAFFF00
            7D1A2C1CC6AE28C56579F37FCF57FF00BE8D1E7CDFF3D5FF00EFA3458398D5C5
            18ACAF3E6FF9EAFF00F7D1A3CF9BFE7ABFFDF468B0731AB8A31595E7CDFF003D
            5FFEFA3479F37FCF57FF00BE8D160E635D3EF1FA1FE54DC567433CA643991FEE
            37F11FEE9AAD75A9258DAC9757D7AB6D6F10DD24B34BB1107A924E05160E636B
            1462B0AC3588355B35BBD33518EF2D9C90B35BCE2446C1C1C302475AB1E7CDFF
            003D5FFEFA3458398D5C518ACAF3E6FF009EAFFF007D1A3CF9BFE7ABFF00DF46
            8B0731AB8A31595E7CDFF3D5FF00EFA3479F37FCF57FFBE8D160E63571462B2B
            CF9BFE7ABFFDF468F3E6FF009EAFFF007D1A2C1CC6AE28C56579F37FCF57FF00
            BE8D1E7CDFF3D5FF00EFA3458398D5C518ACAF3E6FF9EAFF00F7D1A3CF9BFE7A
            BFFDF468B0731AB8A82EBFE58FFD75FF00D95AA8F9F37FCF57FF00BE8D392477
            78F7BB37EF3B9CFF000B526B41A7A96E8A28A834294BFEB24FF7FF00F655AF29
            87534F0C78BBC53AEC89BA193516B495475771690C908FC583A0F79457AB4BFE
            B24FF7FF00F655AA2FA5E9F209449636CC26956794342A7CC9171B5DB8E586D5
            C13C8DA3D2B45B18BDCF2A8C6A3A05B6B5636D2A8B8BAD76CE0BEB83706D8169
            2D22690F9AAAC63DF21DBB80C8DFC10706B5268753B4921B3D4AE6D5A38B5CD3
            DA1B48F5392FA5B6DC7E60F2488AF86C0601B3D4E0E3007A149A6D8CD1DD4735
            95BC8979FF001F4AD12913FCA17E718F9BE50073D801515AE87A4D8DA476B65A
            5D95BDBC72899218ADD111641C870A06037BF5A760B9E77A0C52E9761E1DD46D
            EF6F7CCBDF105CDACD09B97F24C4D25CFCBE56760C1507763767BF6AB1617B72
            2C742D746AB792EABA86ADF65B9B46BA768994BB2C910873B13CB55CE400DF27
            24E4E7D0469960B1431AD95B88E094CD12889711C84925D46386CB37239E4FAD
            47168BA5C1AAC9AA43A6D9C7A84A36C976902895C71C17C64F41DFB0A2C2B985
            F0FA091FC3DFDA577797977757534C1DAE2EA491555657550A84ED5C28032002
            7BE6B9E1AB6B9A5695E2A9EC344B1D46C9354B9F31A4BB70EAA768663088983A
            A8E480D9201C0AF47B7B682D2010DA431C112924471A055049C9E07A924FE344
            36D05B799F678638BCD7323EC40BBD8F5638EA4FAD0173CD56DEFCDEE89E1AD2
            6EC6A3A7DBE830CD6F37F6C4DA7FDACE769915E146670AA13E5CE0090673C10C
            BD93599B4DB5BBBAD5D3585B4D3435D2E89AE1B79A2FDE38374A0058E6F95471
            26D5CC6D80724577B2F85F409F4D874E9B43D364B1B762D0DABDA46628C92492
            AB8C02727A7A9A92FBC3DA2EA7F67FED2D22C2EFECC3107DA2D924F2871C2E47
            CBD074F4A2C3B9C2DDDCC7AADF7886FDFC41A95A4767A55B5E5A46978D0084B4
            6CDE6B2290AD920655815EB91CD135EDCEAD6BAE5F6B3AB5E69573A5E9D6F716
            E905D342B0B3402432320204999372E1C30F930075CF587C23A6DC789AEF58D4
            AD6D6FA497C9302DC5B2B9B668C1F9958E704E41E31D0568DEE8BA5EA3776F75
            A869B6777716A774134F02BBC4739CA9232BC8078F4A02E79F5EEA1A9C57635D
            D526BA96D63168675D2F543149A5B18D19A392D5BF7720673C9397DB20C0E01A
            235B7D2D3C46A8DAC4D35F78885B456F67A8323CEDE4A48137C8E0460FCD9652
            AD80003C015DFDC683A45DEA916A575A5594F7F0E3CBBA92DD1A54C1C8C39191
            8CFAD25CF87F46BC6BB379A4D8CE6F767DA8CB6C8DE7ECFB9BF23E6DB8E339C7
            6A2C2B9CDFC3EB9BD37DE24B0BD9CC8B637E91C71FF68497A21CC285904D200E
            DF31390470723B560DFADEBFDAAFC6B3AA4731F14C7A7A08EF6458E3B7795236
            411E76F47620904838C11815E9163A5D8698A574DB1B6B4560AA45BC2B182146
            14703B0E07A52B69960CA55ACADCA99C5C90625C19410449D3EF0201DDD72051
            60B9E7B25CDD5AEAF71E1F1A95F269A7C4305A34CF77234C913D92CDE5899897
            1BA5C283BB3F360119155EF6D85CEAF0E96F7B7D7563A77896186DA56BD9B7AE
            FB7323C6640D972AC7824965076E6BD267D2B4FB98AEA2B9B0B59A3BC20DCA49
            0AB09C80002E08F9B0140E7B01E9517F61691FD949A67F65597D8232192D3ECE
            9E529CEEC84C6073CF4EB458773836BDBBFECB3E20FED4BC1AC2F880D90B3FB4
            BF9253ED5E4883C8CECFF53F3EEDBBB3F3669D6F3795A1EA77D7D7BAE5D5CDDE
            BD7363041697E519945D3848537B848C10B82C0AB00480C3815DE7F62E97FDAF
            FDABFD9B67FDA3B76FDB3C85F3B18C637E37631C75E94E9B48D36E2C26B19F4F
            B596D277324B6EF0298E462DB8B3291824B7249EFCD1615CE4FE1FDC5F0D67C4
            9A7DECAC52D2E20D96E75292FC5B96886E51348039E464A9E012715DC553B1D2
            74ED2D48D32C2D6CC155422DE158F2AB9DA3803819381DB26AE500C28A28A621
            BAA79FE45CFD8F1F68F2CF959FEFEDE3AFBD70BA69D00FC161F6BF2BEC5F60FF
            004CDFF7FED18F9F7679F3BCDFF816FC77C57A05C7FC7C37E1FCAB25FC3DA2C9
            ABFF006AC9A3D836A2086178D6A866C818077E3770001D7A5219E79656525CEA
            5A8CDE20D5EF34ED46DBC336135C186EDA065955662F2B608DDB1B3C3657E6E4
            1E2923BFF11F892E1BCF74B69EDF47B4B90AFACCDA7F92F245B9E6291C6C2401
            F23E72546CC63939F46BCD0347D46E85CEA1A4D8DD4EA548967B64760573B792
            33C6E38F4C9F5A5D4742D23589217D5F4BB2BF7832626BAB7494C79C676EE071
            D074F41458773CE757926D6BC3FE276D7B5B78E6D3F4689A136376C96D27996D
            B9A50AA40951E4DCA370230B8001269A65D7354B8D420B5B88AD934BB0B536D2
            CBADCD64B6EA600E6731A44CB2AEFDC0F984AFEEC8C0F9B3E8FA8685A46AF2C7
            2EABA5595F49102B1BDCDBA48501EA0160719A4BCF0FE8DA8496EF7FA458DD3D
            A802DDA6B64730818FBA48F97A0E9E94582E7270EED6B53D5DF5DD7AE2C46976
            F6AF1CD617E6086356883B4FD95D4B8700C819709D3AE72A5BAF106A579AD6A3
            6F7D6768FA7EA2618AE2E75C9ADE2B78D597686B61118D83A9CE58927CCE08C2
            E3D12F744D2B53BA82E751D32CEEE7B6398259EDD5DA239CE549191C8078F4A4
            9F42D26EB548B52B9D2ECA6BF84011DD496E8D2A63A61C8C8C64F7EF458572FD
            14514C4145145001451450014514500145145001451450014514500145145001
            45145001451450014514500145145004907FAC3FEE37FE826B8CF1DC3757379E
            1986DBECE11B56059AE816895C41298CB2823761C290B91960A320906BB383FD
            61FF0071BFF413552EECEDB50B492D6FEDE2B9B79462486640E8E3D083C1A433
            0FC2B7B25C5D6B56D750D8FDAECEF447717763098E3BA731236E2A4B10E15954
            82CDF7473D874755AC74FB3D2ECD2D34CB482CED933B21B788468B9393850001
            C926ACD020A28A29805145140051451400514514005145140053E2FF00591FFB
            FF00FB2B5329F17FAC8FFDFF00FD95AA65B151DCBB45145666C5297FD649FEFF
            00FECAB4CA7CBFEB24FF007FFF00655A656AB63196E14514532428A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A00350FBB3FFB87F95723E12BD3A77C1BD26F953CC6B6D1239827F7B6C20E3F
            4AEC6E943CAEADC82307F2AE7F4BF07691A3F9034FFED048ADD3647049AA5CC9
            0AAE36EDF2DA428463B11C5219CD4FAFEB7E1DB5D3B50BDD4CEAEBA9585C5C3D
            B3C31A2C32470198795B1436CE0AE18B1E54E7AE7495B57D33C3B26AFA978AB7
            473592B334BA7A3ADBCAD8C344B180CCBCE0236F24EDF9B821B5B4DF0968BA4D
            C19ACACC86F2CC28B2CF24AB0C64E4A46AEC446A78F95001C0E38150A781BC3C
            904B09B1796292136EA935CCB20863383B620CC7C91C2E3CBDB8DAB8FBA30068
            705AC6B3AB4FA478A74DBF975496CCE88B776FFDAD05BC5364C8EA481085C290
            07CAEA1C11C815BD2EA32C31789E71A8DD58BDBEB5E4C11E9B6F6FE6DDBB5B41
            B23F9E36DCC59BEF1E40EA76AF1BEBE07D002DD07B49A66BC83ECD7124F7934B
            24B1E73B59D9CB1C7639C81C0C0A75EF82F44BFBBFB54D05C4771F696BAF36DE
            FA78184AD1AC4CC0A38C7C8817E99F5395663BA30AEAE35CD374DD274DD475FD
            4AEB5A9A379A5874AB081E698EE518DEE9E4C71A6FC1670BB8804107E53A3E14
            D7EFAEFE1BC7AC6A80CF790C57064CAAAB4862775190BF282420CE38CE71C55D
            97C1DA3CD1C22517ECF0ABAA4FFDA773E76D620B2197CCDECA4A83B492381C56
            8693A458E87A72586936EB6D691B3B242A4954DCC58819E8324F0381D0605311
            E7FE66A716B5E11D7352D59B531736B73746DFCA8D162636C5F6C45541D9838F
            9CB9E179EB9BD69AC6B9671F876FEF35737CBAFC52196D8C11AA5B39B769D4C3
            B5436D5D854EF6724107391CF4361E0AD074DD4E0BFB3B39127B6DC2DF75D4AE
            96EAC08658D198AA2907EEA80381C7030FB0F08689A65C99ACECD95823C71AB4
            F23A40AE72CB123315881C0E1028E00EC281DD10781A5D46F3C1DA6EA5ABEA52
            DF5CEA1690DCB6F8E3458CBA06DAA11471CF7CF3F95739E1AD7BC57AD3695ABC
            767A93D9DF4BBA78A6164B6B0C0D9C18F6BF9DB97E5CEECE7E6F94646DEF6C2C
            6DF4CD36DAC2C63F2ADAD6258618F716DA8A005193C9C003AD6641E10D12DB51
            17B0DA387598CE911B890C11CA73991612DE5AB724EE0A0E493DCD02B953C4B3
            EA6FE21D0B4CD3753934E8AF5A7FB44B0C51BC8422061B7CC5600E7D8F04F7C1
            1CFE9FAF78B355BAFED1D3ACF529A01A8BC1F67FF425B43024C627258BF9FE60
            552D9E9BB8DBB7AF7B3E9F6B737F6B79345BAE2D37F92FB88D9B861B8CE0E47A
            D66BF8434493536BE6B47F31E7170F10B89040F28C62468777965F807715CE40
            3D46680B9C8DEF89B558F5EB39F4DD4B52BDB297588ECE663630C562AAD2B446
            352C04CECB8FBEA5909F41F289A1D635E9A0D175BFED9658353D5FECD269DF67
            8BCB8E1DEEA155B6EFDF84E4963D4E00E2BA33E07F0FB5D24ED672931DC0BA8A
            337737970CBBF7EF8E3DFB5096C92540CE581E09070A1F03DE4DE25B6BCBCB6D
            3EDE2B6D41EF7CEB5BCB86129CB6316CFF00BB858E4167562490DFDE385A8F42
            BE91AF78AF57BAB7D52CECB5296D27BF31B40DF625B48ED84863620EFF003FCC
            551B8E782C08DA0118F45AC41E10D106AA750168FE6B5C7DA8C5F6893C8F3BFE
            7AF93BBCBDF9E776DCEEF9B39E6B6E9898514514C41451450014514500145145
            001451450014514500145145004907FAC3FEE37FE826B98F1AE9F26AFA55A69B
            14BA620B9BE883C7A902F1CCAB993608C11E61F901D99190A79E2BA783FD61FF
            0071BFF41359FA9E9567AC59FD9B5088C91875914A48D1BA329C8657521948F5
            041A43313C19E5D9AEABA30D3F4EB3974DBB09236996DF67826DF1A48AFE5E4E
            D6DACA08CB7DDCE79C0E9EA9697A45968B68D6FA744634791A576791A4791CF5
            67762598F4E4927000E8055DA04145145300A28A2800A28A2800A28A2800A28A
            2800A7C5FEB23FF7FF00F656A653E2FF00591FFBFF00FB2B54CB62A3B9768A28
            ACCD8A52FF00AC93FDFF00FD956994F97FD649FEFF00FECAB4CAD56C632DC28A
            28A6485145140051451400514514005145140051451400514514005145140051
            4514005145140051451400FBBDDE649E5E3763E5DDD338AF2EB296FB4ABAD2D3
            C432F8834BD59A64FB4EA534CD77A75E399023461164290890B7C9948F6F1E98
            3E9F7D14739961991648E45DAE8C321811820D7330782A18A2B7B49B58D4EEB4
            BB6911E1D367788C4BB1B746A584625655217019CE768CE452199D278B35816F
            3EB91C764745B7D4DAC5ED7CB7FB43A2CDE434A24DDB410FF36CD9CA8FBD93C5
            497C59E27F30DC42BA48B57D764D1E289E190BE37B22CC5C3E38206536FCC01C
            32EEF9779FC176325F3BB5DDEFD864BCFB749A66F4FB3BCFBB76F3F2EFFBE03E
            DDDB4B0CE3AD4BFF000895818122F36E36A6A87550772E7CD2E5F6F4FBB963C7
            5C77A351E873D3F8E354B38A4D3EE16093534D55F4FF00B4DBD84F347B161598
            C9F678D9A4276B85DA1BAF390062957C5FE20B88F4EB582D2182EEEB556B1FB4
            DEE9F3C11CB1F90F28992172AE31B70549392A4679046EDCF836C6792E668EE6
            EEDEEE6D406A31DD42EA24B797CA588ECCA91B4A260AB060771F6C4B1785A112
            584D77A8EA17B716576D78B35C4AA4C8ED1BC782A142AA85738540A3201E4924
            9A8B4396BAD735FD42E743892FAD6DA7B7F11CDA7DD98609047721619594EDF3
            321768E5496F9B69CFCB832E99E3CD4F52BFB49E0B2966B0BBBCF216DE3D1EEC
            34511628263724794C380C4600009F98EDE77DFC1D64CDBE2BBBB8651AA1D556
            446425252850800A91B4A9230413CF5CE296CFC250E9F781AD355D4E2B15B837
            09A6A4CAB02B9392010BE66DDC49D9BF6F38C638A351E843E27D464D3BC41E1D
            7F3A54B7335CB4E91B102455B691B04743820119EE0566C1E2ED62C61D2752D7
            63B26D3F588649238AD237125A110B4E8ACECC44B94460582A7CC07183C7517F
            A3DB6A5A8585DDC972D60EEF1A0C6D7DF1B464302391863E9597A7F826C2C67B
            632DDDEDF5BD8C6F158DADDBA347688E36955C2866F93E405CB10B919E4E4168
            4163AA7897FB17FB63507D0D2D66B26B94476920168C4065124A4B075C13B9C2
            A63190A41E394D57C71AA5D689E24B38F5082E045A1CB796DA8D8594F6587562
            A7633BB0917904488D8EBD6BAFFF00841AD5F4C934DBAD5B55B9B036ED6F05AB
            CEAA96E8718DA554172B8183217231EE731DCF802D75037CFAA6B1AA5ECD7D61
            269F2CB2BC4A444C41F955630AA4107040E771CE78C1A8F4209F5ABE86EBC532
            C37F67A7C3A5DDC5BE6BB826B95286D62720209576B6E6E02E01FEE962498A5F
            10F886C3C3BA6CDAE5E68DA5EA17923131BDA4D2C8578D91C76C926E790E416D
            AE76F401BA8D0D4FC0F6BA8DFCD789AA6A1672CD7D1DFB080C2CBE6C712C69F2
            BC6C080103007386E7B0C4B3784E49E6B5BA7F10EAA350B5122477C16DBCCF2D
            F6968CAF93E59194539DBBB8EB40B41FE0AD7AE3C49E178750BD8D239CCD342E
            238DA304C72B26ED8FF32E76E769E46706B9ED2FC717F73E2DD2B4E7BCD2F51B
            6D4259A276D3AD67F2EDD96269405BA2C639880BB48014E4E703045757A1F87A
            D340D19B4BB492E25B6696593FD224DEFF00BC72EC37753CB1E4E4FA93D6B2EC
            3C096B6177A4CDFDADA9DC268C716104B247E5C09E5B47B30A80B0DAC0658961
            B461865B26A1A16758D4F546F105AE89A135A413C96D25DCD73790B4AAA8ACAA
            15515909259B39DD8017A1CF1CD784F5DF105F693A56956F3DBA6A52ADE5CDDD
            DDF2BDD2A2A5CB4623501D0B1C9C025800A9D0E463AED5FC3F1EAB776F7B0DED
            D69B7D6EAF1A5DD9F97BCC6F8DD190EACA549553D320A8C11CE73ADBC0967A7D
            869F0697A96A5653D809962BD8E48DE67495CBBA3EF46561BB072572368E7939
            034336C3C5BADEB3A868D65671D859CB730DE1BE3346F308E4B69922611E1D72
            092D8CF620F620F75587A7784F4DD2AEB4E9ECBCE43A7DB4D6F1AB3EE0E25747
            7772464B164CE73D59BD6B728061451453105145140051451400514514005145
            140051451401241FEB0FFB8DFF00A09ACAD6B526D334FDF6F1ACD7933086D202
            70259483B413D8704B1ECAAC7B56AC1FEB0FFB8DFF00A09ACED4B47D335A8121
            D634EB4BF891B7AC77502CAAAD8C640607070690CC2F8793DECFE199FF00B4EF
            65BEB88B52BC89A794F2C16E1D471D860700700702BAAAC7F0E785F4BF0AD9CF
            6DA35BAC31CF3C93BE115492CC5B6FCA07CAB9DAA3B00056C500C28A28A620A2
            8A2800A28A2800A28A2800A28A2800A7C5FEB23FF7FF00F656A653E2FF00591F
            FBFF00FB2B54CB62A3B9768A28ACCD8A52FF00AC93FDFF00FD956994F97FD649
            FEFF00FECAB4CAD56C632DC28A28A64851451400514514005145140051451400
            514514005145140051451400514514005145140051451400B7CC57CE65E085C8
            FCABC974CF174F3F84F4BD46D3C72754D7A78EDDDF451F637F36462BBE3F2E38
            C48B805B9DDF2E327806BD6EF13CC791338DC319FC2B933E0A09E12D1B4CB6BF
            F2751D163896CF52587946450AD94DDCABA821933820F5C80690CCFD73E27E9F
            A36A97F03369A60D31825D09F5348AE5CED0CDE4C054F9980C3AB2E4820671CD
            EB7F1A497DE2C9F48B0B3B4996DA758A656D4152EC21456F39602BF345F3AFCD
            BF279C03C0337FC237AB5ADFDE4BA3EBB1D95BEA12ACF751B5979AE92ED0AEF0
            B17C26E0A38759003CE0E48A8F56F085DEB5AA40FA86A76F3D95B5E477702BE9
            EBF6A80A32B6C8E70C02A96419F90B1048DDD08350D0AF0F8DEF59E4BAB9D116
            0D222D59F4B7BAFB66E937098C2B208F663617DA0FCD9049E0819328F1A4FB92
            F8E94A3427BFFB02DEFDA7F7BBFCCF24398B66046651B73BF3820EDC566E87E1
            8D56FE1BB8754BD30E95FDBF737A2C9ECCACAFB6EDA48F1216C796582BFDCC9E
            CD835A63C173E56C5B5507424BFF00B7AD97D9B12EFF0033CE0865DD831894EE
            C6CCE001BB1D4D43421B3F1C5EDC5C412CFA347069B36AB2E96B71F6CDD2798A
            EE81FCBD806C2500FBD9049E0819356EFC61ACDDCDA25CE9D60B6DA45FEAA96C
            B75E7879658FE6077465308AC57208627A640CF1A89E0DD9A65A59FDBF3F66D6
            5F55DFE4FDEDD33CBE5E3771F7F1BBDB38ED5593C117D14BA75B45ADA2E91A6D
            FF00DB2DED3EC7997AB1F2DA5DF82A371C61410319271C9A8F42ADA7C51D3AEB
            57B7815F4D36B757A2CA111EA68F77BCB6C566B70BF2A161D771382A4A8E71B5
            E2AF16DB786059452BD9ADC5F3B2C46FAF16D6150A32CCD21071D4000292491D
            B2447A5786F54D1E48ED2CF5C54D1A19CCB1DB7D8C19C2125BCA329620A649FE
            0DDB7037679AB9AE6893EA375637FA6DEAD96A360CFE4CB243E746C8E007474D
            CA483807860415073D4135168615AFC427D522D3D344D3EDAFAEAEEF27B36D97
            E3C84789379612AA36E42B820ED079195072049A578E6F6FDF4E92EB454B5B3B
            EBD934FF00316F3CC74B84F3377C9B0031E62601B703D3E515A91F87EF64D434
            BBED4F55FB55C58CD34ADB6D8468DE621408A01CAAAE73F31727B9AAB69E0DFB
            2D8E9D6FF6FDFF0061D5E6D4F77938DFE634A767DEE31E775E7EEF4E78350D08
            7C63A86B90EBBE1BD3344992DA2D46EDD2E26122AC8552177DA37452281F2E73
            8C9200E325863D9FC4836BA36930DEDCE96DA9DCD99BB9A4D53504B18CAEF645
            00846CB12A780B8C29C91C03D8EA7A2FF68EB7A2EA1F68F2FF00B2E7926F2F66
            7CDDF0BC78CE78C6FCF7E98F7AC4B0F055EE8A9632E89ABC30DE5BDA7D8E77B9
            B332C53C61D9D7E412295652ED821BA31C83C60D4342097E25DB43A7E9FA89D3
            A67B2D52DC9B0789C3BCD75BB6FD988030189FBAC188386E98E737C7DAA6A3A7
            D99D475077D2A38ACB0CB178816DBCD72A5A44817CA6F35F1F28660A41C14DA7
            E6ADCD53C132EB860FED9D6A7B9FB1C1FE88EB12C6D0DD673F69F9700BAE0051
            8000DD9CE7355752F00DF6A336A92B6B1691CBAC588B3BDB8FECD0D301E5EC61
            13993E48DB009421B9C90412085A8F42D5EF8CAEA337F2691A3FDBAD34A8A396
            F5E4BAF2E401A312158936B07611904866404B0009E71D4DBCF1DD5B45716EDB
            E29503A301F7948C83F9572B71E0CBD2B790D86B4B696FAA43145A82FD937BB6
            D8C44CF0B6F1E5B32003E60E060103AE7AAB7823B5B68ADEDD764512044507EE
            A81803F2A62D0928A28A620A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2802483FD61FF0071BFF413591AEA6A3269EABA55D0B43E6033CE23F32448
            864B796BB58339C000104724E0E3075E0FF587FDC6FF00D04D656B5A75DEA16B
            0FF676A2FA7DD5BCEB3472052E8F8C8292202BBD08278C8E7041040A43337C17
            AADCEA9A65E7DB2E24B86B6BD9208E4B888433B463054CB100BB1B9E85572BB5
            B0375747591A168B2E96D7D737D76B797FA84FE75C4D1C3E547C2845544CB150
            154756624E4E7A01AF40828A28A601451450014514500145145001451450014F
            8BFD647FEFFF00ECAD4CA7C5FEB23FF7FF00F656A996C54772ED1451599B14A5
            FF005927FBFF00FB2AD329F2FF00AC93FDFF00FD956995AAD8C65B8514514C90
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2801D7AC51A561D557233F4AF3D83C4FE2687C0FA778AAFAEB47
            9ADEE62B79A4B18AC258E42252A3624866605BE6E3E4E4F1C6723D0AF54BB4AA
            3AB2E067E95E7769F0CE1D2FC3BA14DA4596956DE26D1E38CFDA961023B970A1
            6459182EE218670D8DC0E08EE0A1E8743A8F8C6D34EB9BB56B1BE9ED34F205F5
            F428861B524063BB2C1DB0ACAC762B601E7B80F4F15C33EB12595AE99A85CC10
            DC8B49AFA08D1A18A52A1B0C037998F9972C1368CF270091CF5DF80E56D6B50B
            A5D0BC33A90D4A659CDCEA90F992D9B95557503CBFDF20DBB94168CE49191D6A
            7D47C21A85E78A23BFB7B4D26CA58EE6275D5ECE5960BA3029426192251B6504
            26CF99F6853F778C1350D0D0B7F1E594F78D19D3B528AD13517D31EFE48D042B
            70AE502FDFDF86600060BB72C0120E409478D6C4DF2A7D8EF458BDE1B15D4CA2
            7D9DA704AECFBDBF1BC14DDB76EEE335CD689A66B1AED85EE9EFF628F485F125
            D5C3CE247F3F115F349E588F6EDE5D07CFBB8071B7232748784F5736A9A0B496
            5FD889A97DBBED2246FB43209FED02231EDDA3F7981BF7FDD1F77278351E85EB
            3F1D59DE5EC712E9BA8C56D25FC9A72DEC89188BCF4675DBC397C12870DB71C8
            0483902A5EF8F18DF6971E97A6DC9B3BED4D6C85FCF1AF9328F983ECC3EF072A
            7059429C1C678A58FC237E9A3D8DA19ADBCCB7D7DF5373B9B0626B8924007CBF
            7B6B8E3A673CF7AAF17857C4102691A546FA71D2B4AD445D25C34AFE7CB10662
            A85366D5237633B8EEDBD0678350D0D98BC63692DE44BF61BE4B19AE7EC90EA4
            E89E44B2E4AED0376F00B02A18A0527A1E466FEAFAD47A4FD9E316B737B7574E
            520B5B50BBE4C0CB1CBB2AA803925980E83A900F25A2F804E8F7F044BA178666
            86DAEBCE8F5596DF75E14DDB8029B062407812799D836DED5AFE2FF0B7F6FDCE
            9B7A965A76A32E9ED20FB16A69986649000DCED6DAC36A90769E84639C805A0B
            278E6CD56CD21D3B509EF2EAE65B41651A47E6C7346BB9D18970A300677062A4
            6083820D269BE3CB2D4E6B20BA6EA56F05E4EF6B1DCCF1A045B850C5A23872D9
            1B186E00AE46031A874DF0A5C5A5EE8F70965A3E9B1D9DCDC4D2DAE9B118D144
            916C500ED1BDBA65884C8EDC54763E11BFB5D3B4A8249AD8BD9EB93EA321566C
            18DDA7200F97EF7EF5723A7079F5350D0DFD5B5B8F4A96DADD2D2E6FEF2E8B79
            36B6A137B8500B365D9540191C961C90064902B37FE13BD2628ED26BD5B8B2B7
            B879A2927B95544B69A204BC529DDF2B615B04654EDE18E4662F177853FB7752
            D33524B0D335392C5658DACB545CC32A49B72436C7DACA51483B4F05877C8CEB
            FF00025CEB3A141A0DD41A5693A43C8F71750E931143BFFE5922E5403B4E19A4
            C2962806D009A350D0B56DE3A967D7EDE39B49BAB3D265D2E4D41EE6E446AD12
            AB70EC0484852BDB6EECB2E40F9B1713C6B6CB1C8F7DA66A3603EC925EDBFDA5
            2306E6241B9B60573B5802A76BED6E7A70719D79E15D675A68C6B52591377A3D
            C697A84B6F2B02A5CE5658D4A61B3804A92BB73C16C735ECFC11731E9F736E34
            1F0B69B3B584D6C2EEC203E64EEE9B4367CB5F297A92B99339C678E4D47A1A90
            F8FF004E304D3DFD95FE9D0C760DA94725D469FBFB75C6E7508CC46372FCAC15
            BE61C75C5897C457571A2EA4F1E91AB69D790C198125B449D9D9C1085046E51F
            E6EAA5D71D5B683BAAA5D785F517D434FB9B77B06FB2E8B3D8325CA3488F2398
            B19418DC9FBB60790791C56541E09D6A0B3D4D74B369A0A5C884C7A769FA84E6
            02EB2EF9183EC4306F5F93F76BC75E4F146A2D0B5A3F8AA6D37FB64789EE350F
            374F8E065B6B9B385652B2165420C0ECB23BBFCBC6D19006D1C93D0E91E208F5
            4BDBAB19ACAEB4DBFB55477B5BCF2F798DB3B64531B32B292AC3839054E40E33
            C6DAFC39BD8DF55920B7D23491751593DAC1665E458E7B699A406462AA64DC76
            E5F01B923048DCDD5691A5EA6DE21BAD735C16B04F25BA5A436B692B4A891AB3
            3162EC884B166E9B4001475C9A01D8DFA28A298828A28A0028A28A0028A28A00
            28A28A0028A28A00920FF587FDC6FF00D04D656B326AAB6F0C7A145035C4D304
            79AE06E8EDD3049728194BF40A141072C0F406B560FF00587FDC6FFD04D73FE2
            BB6D76F74716BE1B96DE19A5902CF24B70D0BAC5FC4237547DAE7A06C7192473
            8A430F0C6AD7BA9C5A8C3A97D9DEE34EBE7B46B8B542914F8556DCAAC58AE37E
            D2371F994F3D86E564F86ECEE34DD1E3B29B4CB2D363B7F92186CAE9E75DBD72
            59A343B89249E0E7A93935AD40828A28A6014514500145145001451450014514
            50014F8BFD647FEFFF00ECAD4CA7C5FEB23FF7FF00F656A996C54772ED145159
            9B14A5FF005927FBFF00FB2AD329F2FF00AC93FDFF00FD956995AAD8C65B8514
            514C90A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2801D78FE5BC8F8CED19C7E15C4695F122DF55F005C788
            A3B068AE6D515A7D3E4970C9B82B2FCD8E55958306C720FD6BB6BE52FE72AF24
            AE07E55E59A8F81B5B1F0F7485D26044D663D320D3F51B4691409E20178DD9DB
            BA36C9073D0B0EE290F43BABEF1568FA76A0D677772EB247B3CD75B791E28377
            DDF32455291E783F391C107A1150DC78D342B5D4E6B09EEE413DBCC904E45ACA
            D1C0EE17607902ED4077AE0B100F3CF071CBEA3E13B83ABEB70DCE8BA8EB16DA
            B5C096392DF5B92D6DC2BA2A3473C6255E06DFBCA8E4A9031918AB1A97867559
            743F18DBDADA665D46F6196CC0957F788B140A4E49E3051FAE0F1EF46A1A1ACB
            E3BD322D7352D3750125B358DE476BE688A49233E6246CACEEA9B6205A4DA371
            19DA79F4D49BC47A55BDADFDCCD75B62D3A75B6BA6F2DCF97210842E31CF1227
            23239F635CBEADE1CD56E348F19C56D6BBA6D4EFA29AD00910798AB140A4E73C
            60A3F5C74F7155B5DD135E6B7F12E9965A43DD26ADA8437B0DDADC44B1AA8580
            32B0660DB8792718520E47228D476474977E3AF0ED8DE4F6D757ED1BDBCC209D
            CDB4BE5C52100856936EC524118C9E7B54A9E30D15AC27BBFB44C8B04EB6F243
            25A4C93891802A9E49512124302005E41C8AE7F50F0D6A93697AD450DA664BAF
            115B5F443CC41BE146B72CFD78C08DB83CF1D3A53F58D2BC4716A3ADDCE8E971
            1C77B776C59ACE4845C4902C3B1FCAF37E4560D8FBD8E01C738A35168751A46B
            BA7EBB1CEDA74B231B793CA9A39A0786489B00E191D430E083C8E73550F8C343
            135FC66EDC7F671617521B697CB898100A1936ED2FC8C203B8E4601CD66781F4
            6BED2F50D7E7BCB1B9B386FAE629ADD6EAF7ED52ED10A210EE598EE054E46481
            9C0240CD52D43C2BA9DDF86F59B78E1DB7126B7FDA30442E0C46E1124470A244
            3942C1300F041C1E28D4343A14F1768CF637374D71344B6AC893453DACB14CA5
            CE10794CA1CEE270B853B8F0324546FE36D062D34DF4D7924510B8FB29492D65
            595662BB846622BBC311C80579C8C67233CF8F0E89ACF50B83E12D45DA410279
            7A86BCEF752AC726F0636F35D53612597F78A4B673B47273EEE3D7B4CB1D31AF
            6DEFAF234D7A13A7D9EA3710BDD797E4BEE56914942776EDBB9C9E06E61D81D9
            1DAAF8BB456D25B50176E215B8FB3346D6F20984DFF3CFC92BE66FE41DBB7241
            CE31CD27FC261A29D3A3BC5B999D249DADD614B495A732A82593C90BE6060149
            20AF0067A735CD3E87AD4BAC0F147F65B2CCBAAADD0D29A68FCE6845B35BE4B6
            EF2FCCF98B81BB18006ECF01973E1EBEBB37BAA5FE8376D2DF6A1F688E0B0D41
            6DEF2C545BF92B22B8708CED83B97CCC61BF8B18A351591BDFF09BE9F2EB1A2D
            9D9473DD45AB2CAC97096F2E2328429561B383BB218310531F362AC5878CB43D
            4B5082CAD2EA5696EB7FD99DED2548AE368CB7972328493819F949C8E4715856
            3A6F8963B9F0FDEEA514D7B35B3DDC6ED2C90F9B0C7211E519769556215406D9
            9E7A6EEB59DA5E85E259FC51E1CD4B59B3D4E5B9B299DB51BABABF88C44B5B3C
            798208DB6040C472555F0C321B2C41A8EC8F4BA28A2992145145001451450014
            514500145145001451450014514500145145004907FAC3FEE37FE826B3B55D4E
            1D234F7BBB88EE255521563B685A591D8F4555504927F21DF02B460FF587FDC6
            FF00D04D4748666787758FF8483C3B67AA7D9CDB7DA937F92CE18A7246091D7A
            569D61F8374FBAD2BC1FA758DFC5E55CC3195913706DA7713D4122B728105145
            14C028A28A0028A28A0028A28A0028A28A0029F17FAC8FFDFF00FD95A994F8BF
            D647FEFF00FECAD532D8A8EE5DA28A2B336294BFEB24FF007FFF00655A653E5F
            F5927FBFFF00B2AD32B55B18CB70A28A29921451450014514500145145001451
            45001451450014514500145145001451450014514500145145004971FF001F0D
            F87F2A8EA4B8FF008F86FC3F954748028A28A601451450014514500145145001
            514D6D05C18CDC431CA6271247BD036C61C0619E8793CFBD4B45001451450014
            5145001451450014514500145145001451450014514500145145001451450014
            5145004907FAC3FEE37FE826A3A920FF00587FDC6FFD04D4748028A28A601451
            45001451450014514500145145001451450014F8BFD647FEFF00FECAD4CA7C5F
            EB23FF007FFF00656A996C54772ED1451599B14A5FF5927FBFFF00B2AD329F2F
            FAC93FDFFF00D956995AAD8C65B8514514C90A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28024B8FF008F86
            FC3F9547525C7FC7C37E1FCAA3A40145145300A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2802483FD61FF71BFF0041351D4907FAC3FEE37FE826A3
            A40145145300A28A2800A28A2800A28A2800A28A2800A28A2800A7C5FEB23FF7
            FF00F656A653E2FF00591FFBFF00FB2B54CB62A3B9768A28ACCD8A52FF00AC93
            FDFF00FD956994F97FD649FEFF00FECAB4CAD56C632DC28A28A6485145140051
            4514005145140051451400514514005145140051451400514514005145140051
            45140125C7FC7C37E1FCAA3A92E3FE3E1BF0FE551D200A28A298051451400514
            5140051451400514514005145140051451400514514005145140051451400514
            5140051451400514514005145140051451401241FEB0FF00B8DFFA09A8EA483F
            D61FF71BFF0041351D200A28A298051451400514514005145140051451400514
            5140053E2FF591FF00BFFF00B2B5329F17FAC8FF00DFFF00D95AA65B151DCBB4
            5145666C5297FD649FEFFF00ECAB4CA99D034926E6D9F3E46518E46D5F407D29
            3C95FF009EA3FEFD49FF00C4D689AB19493B915152F92BFF003D47FDFA93FF00
            89A3C95FF9EA3FEFD49FFC4D3BA172B22A2A5F257FE7A8FF00BF527FF134792B
            FF003D47FDFA93FF0089A2E8395915152F92BFF3D47FDFA93FF89A3C95FF009E
            A3FEFD49FF00C4D1741CAC8A8A97C95FF9EA3FEFD49FFC4D1E4AFF00CF51FF00
            7EA4FF00E268BA0E5645454BE4AFFCF51FF7EA4FFE268F257FE7A8FF00BF527F
            F1345D072B22A2A5F257FE7A8FFBF527FF00134792BFF3D47FDFA93FF89A2E83
            95915152F92BFF003D47FDFA93FF0089A3C95FF9EA3FEFD49FFC4D1741CAC8A8
            A97C95FF009EA3FEFD49FF00C4D1E4AFFCF51FF7EA4FFE268BA0E5645454BE4A
            FF00CF51FF007EA4FF00E268F257FE7A8FFBF527FF001345D072B22A2A5F257F
            E7A8FF00BF527FF134792BFF003D47FDFA93FF0089A2E8395915152F92BFF3D4
            7FDFA93FF89A3C95FF009EA3FEFD49FF00C4D1741CAC4B8FF8F86FC3F954753C
            A88F21612F07D6293FF89A6F92BFF3D47FDFA93FF89A5741CAC8A8A97C95FF00
            9EA3FEFD49FF00C4D1E4AFFCF51FF7EA4FFE269DD072B22A2A5F257FE7A8FF00
            BF527FF134792BFF003D47FDFA93FF0089A2E8395915152F92BFF3D47FDFA93F
            F89A3C95FF009EA3FEFD49FF00C4D1741CAC8A8A97C95FF9EA3FEFD49FFC4D1E
            4AFF00CF51FF007EA4FF00E268BA0E5645454BE4AFFCF51FF7EA4FFE268F257F
            E7A8FF00BF527FF1345D072B22A2A5F257FE7A8FFBF527FF00134792BFF3D47F
            DFA93FF89A2E8395915152F92BFF003D47FDFA93FF0089A3C95FF9EA3FEFD49F
            FC4D1741CAC8A8A97C95FF009EA3FEFD49FF00C4D1E4AFFCF51FF7EA4FFE268B
            A0E5645454BE4AFF00CF51FF007EA4FF00E268F257FE7A8FFBF527FF001345D0
            72B22A2A5F257FE7A8FF00BF527FF134792BFF003D47FDFA93FF0089A2E83959
            15152F92BFF3D47FDFA93FF89A3C95FF009EA3FEFD49FF00C4D1741CAC8A8A97
            C95FF9EA3FEFD49FFC4D1E4AFF00CF51FF007EA4FF00E268BA0E5645454BE4AF
            FCF51FF7EA4FFE268F257FE7A8FF00BF527FF1345D072B22A2A5F257FE7A8FFB
            F527FF00134792BFF3D47FDFA93FF89A2E8395915152F92BFF003D47FDFA93FF
            0089A3C95FF9EA3FEFD49FFC4D1741CAC483FD61FF0071BFF41351D4F1A22312
            65FE161FEAA4EE08FEED37C95FF9EA3FEFD49FFC4D2BA0E5645454BE4AFF00CF
            51FF007EA4FF00E268F257FE7A8FFBF527FF00134EE8395915152F92BFF3D47F
            DFA93FF89A3C95FF009EA3FEFD49FF00C4D1741CAC8A8A97C95FF9EA3FEFD49F
            FC4D1E4AFF00CF51FF007EA4FF00E268BA0E5645454BE4AFFCF51FF7EA4FFE26
            8F257FE7A8FF00BF527FF1345D072B22A2A5F257FE7A8FFBF527FF00134792BF
            F3D47FDFA93FF89A2E8395915152F92BFF003D47FDFA93FF0089A3C95FF9EA3F
            EFD49FFC4D1741CAC8A9F17FAC8FFDFF00FD95A9DE4AFF00CF51FF007EA4FF00
            E2695102C91ED6DFF3E4E118606D6F503D6936AC38A772D51451599A85145140
            0514514005145140051451400514514005145140051451400514514005145140
            0514514005145140051451400514514005145140051451400514514005145140
            0514514005145140051451400514514005145140051451400514514005145140
            0514514005145140051451400514514005145140051451400514514005145140
            051451400514514005145140051451401FFFD9}
        end
        object edtEscalaComa: TEdit
          Left = 16
          Top = 58
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'EDTESCALACOMA'
        end
      end
    end
    object TbShAvaliacaoFisica41: TTabSheet
      Caption = '4.1 - Avalia'#231#227'o F'#237'sica'
      ImageIndex = 4
      object PnAtividadeFisica: TPanel
        Left = 16
        Top = 16
        Width = 399
        Height = 257
        BorderStyle = bsSingle
        TabOrder = 0
        object Label68: TLabel
          Left = 133
          Top = 8
          Width = 141
          Height = 18
          Caption = 'ATIVIDADE F'#205'SICA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label69: TLabel
          Left = 24
          Top = 48
          Width = 124
          Height = 13
          Caption = 'For'#231'a Muscular em MMSS:'
        end
        object Label70: TLabel
          Left = 242
          Top = 71
          Width = 85
          Height = 13
          Caption = 'Cadeira de Rodas'
        end
        object Label71: TLabel
          Left = 133
          Top = 71
          Width = 103
          Height = 13
          Caption = 'Deambula com Aux'#237'lio'
        end
        object Label72: TLabel
          Left = 202
          Top = 119
          Width = 50
          Height = 13
          Caption = 'Paraplegia'
        end
        object Label73: TLabel
          Left = 24
          Top = 163
          Width = 54
          Height = 13
          Caption = 'Tetraplegia'
        end
        object Label74: TLabel
          Left = 184
          Top = 32
          Width = 55
          Height = 13
          Caption = 'Preservada'
        end
        object Label75: TLabel
          Left = 258
          Top = 32
          Width = 43
          Height = 13
          Caption = 'Aus'#234'ncia'
        end
        object Label76: TLabel
          Left = 24
          Top = 71
          Width = 103
          Height = 13
          Caption = 'Deambula sem Aux'#237'lio'
        end
        object Label77: TLabel
          Left = 24
          Top = 119
          Width = 40
          Height = 13
          Caption = 'Paresias'
        end
        object Label78: TLabel
          Left = 202
          Top = 163
          Width = 33
          Height = 13
          Caption = 'Plegias'
        end
        object Label79: TLabel
          Left = 24
          Top = 209
          Width = 44
          Height = 13
          Caption = 'Acamado'
        end
        object Label80: TLabel
          Left = 202
          Top = 209
          Width = 128
          Height = 13
          Caption = 'Repouso Absoluto no Leito'
        end
        object CbxDeambulaAuxilio: TComboBox
          Left = 133
          Top = 90
          Width = 103
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'PROTESES'
            'MULETAS'
            'ANDADOR')
        end
        object edtParesias: TEdit
          Left = 24
          Top = 138
          Width = 172
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTPARESIAS'
        end
        object edtParaplegia: TEdit
          Left = 202
          Top = 138
          Width = 172
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          Text = 'EDTPARAPLEGIA'
        end
        object edtTetraplegia: TEdit
          Left = 24
          Top = 182
          Width = 172
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'EDTTETRAPLEGIA'
        end
        object edtPlegias: TEdit
          Left = 202
          Top = 182
          Width = 172
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          Text = 'EDTPLEGIAS'
        end
        object CbxPreservada: TComboBox
          Left = 184
          Top = 48
          Width = 68
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAusencia: TComboBox
          Left = 258
          Top = 48
          Width = 68
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDeambulaSemAuxilio: TComboBox
          Left = 24
          Top = 90
          Width = 103
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 7
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxCadeiraRodas: TComboBox
          Left = 242
          Top = 90
          Width = 85
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 8
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAcamado: TComboBox
          Left = 24
          Top = 223
          Width = 81
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 9
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxRepousoAbsoluto: TComboBox
          Left = 202
          Top = 223
          Width = 128
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 10
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
      end
      object PnPeleAnexos: TPanel
        Left = 421
        Top = 16
        Width = 724
        Height = 361
        BorderStyle = bsSingle
        TabOrder = 1
        object Label81: TLabel
          Left = 229
          Top = 8
          Width = 117
          Height = 18
          Caption = 'PELE E ANEXOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label82: TLabel
          Left = 14
          Top = 59
          Width = 56
          Height = 13
          Caption = 'Colora'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label83: TLabel
          Left = 144
          Top = 40
          Width = 33
          Height = 13
          Caption = 'Palidez'
        end
        object Label84: TLabel
          Left = 223
          Top = 40
          Width = 38
          Height = 13
          Caption = 'Cianose'
        end
        object Label85: TLabel
          Left = 302
          Top = 40
          Width = 47
          Height = 13
          Caption = 'Hiperemia'
        end
        object Label86: TLabel
          Left = 14
          Top = 105
          Width = 117
          Height = 13
          Caption = 'Integridade Cut'#226'nea'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label87: TLabel
          Left = 144
          Top = 88
          Width = 36
          Height = 13
          Caption = #205'ntegra'
        end
        object Label88: TLabel
          Left = 224
          Top = 88
          Width = 48
          Height = 13
          Caption = 'Lesionada'
        end
        object Label89: TLabel
          Left = 304
          Top = 88
          Width = 24
          Height = 13
          Caption = 'Local'
        end
        object Label90: TLabel
          Left = 432
          Top = 88
          Width = 34
          Height = 13
          Caption = 'Prurido'
        end
        object Label91: TLabel
          Left = 507
          Top = 88
          Width = 66
          Height = 13
          Caption = 'Deformidades'
        end
        object Label92: TLabel
          Left = 14
          Top = 152
          Width = 38
          Height = 13
          Caption = 'Turgor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label93: TLabel
          Left = 144
          Top = 132
          Width = 33
          Height = 13
          Caption = 'Normal'
        end
        object Label94: TLabel
          Left = 224
          Top = 132
          Width = 45
          Height = 13
          Caption = 'Diminu'#237'do'
        end
        object Label95: TLabel
          Left = 14
          Top = 199
          Width = 122
          Height = 13
          Caption = 'Presen'#231'a de Manchas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label96: TLabel
          Left = 144
          Top = 184
          Width = 45
          Height = 13
          Caption = 'Equimose'
        end
        object Label97: TLabel
          Left = 223
          Top = 184
          Width = 47
          Height = 13
          Caption = 'Pet'#233'quias'
        end
        object Label98: TLabel
          Left = 304
          Top = 184
          Width = 41
          Height = 13
          Caption = 'Eritemas'
        end
        object Label99: TLabel
          Left = 383
          Top = 184
          Width = 53
          Height = 13
          Caption = 'Exantemas'
        end
        object Label100: TLabel
          Left = 462
          Top = 184
          Width = 56
          Height = 13
          Caption = 'Hematomas'
        end
        object Label101: TLabel
          Left = 144
          Top = 228
          Width = 45
          Height = 13
          Caption = 'Urtic'#225'rias'
        end
        object Label102: TLabel
          Left = 223
          Top = 228
          Width = 37
          Height = 13
          Caption = 'P'#225'pulas'
        end
        object Label103: TLabel
          Left = 303
          Top = 228
          Width = 30
          Height = 13
          Caption = 'Tumor'
        end
        object Label104: TLabel
          Left = 383
          Top = 228
          Width = 38
          Height = 13
          Caption = 'N'#243'dulos'
        end
        object Label105: TLabel
          Left = 463
          Top = 228
          Width = 50
          Height = 13
          Caption = 'Abscessos'
        end
        object Label106: TLabel
          Left = 144
          Top = 270
          Width = 40
          Height = 13
          Caption = 'P'#250'stulas'
        end
        object Label107: TLabel
          Left = 224
          Top = 270
          Width = 31
          Height = 13
          Caption = 'Bolhas'
        end
        object Label108: TLabel
          Left = 304
          Top = 270
          Width = 43
          Height = 13
          Caption = 'Ves'#237'culas'
        end
        object Label109: TLabel
          Left = 144
          Top = 311
          Width = 74
          Height = 13
          Caption = 'Locais Manchas'
        end
        object Label110: TLabel
          Left = 384
          Top = 311
          Width = 89
          Height = 13
          Caption = 'Tamanho Manchas'
        end
        object CbxPalidez: TComboBox
          Left = 144
          Top = 56
          Width = 73
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxCianose: TComboBox
          Left = 223
          Top = 56
          Width = 73
          Height = 21
          Style = csDropDownList
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxHiperemiaPele: TComboBox
          Left = 302
          Top = 56
          Width = 74
          Height = 21
          Style = csDropDownList
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtLocalLesao: TEdit
          Left = 304
          Top = 107
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'EDTLOCALLESAO'
        end
        object CbxIntegra: TComboBox
          Left = 144
          Top = 107
          Width = 74
          Height = 21
          Style = csDropDownList
          TabOrder = 4
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxLesionada: TComboBox
          Left = 224
          Top = 107
          Width = 73
          Height = 21
          Style = csDropDownList
          TabOrder = 5
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPrurido: TComboBox
          Left = 430
          Top = 107
          Width = 73
          Height = 21
          Style = csDropDownList
          TabOrder = 6
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDeformidades: TComboBox
          Left = 506
          Top = 107
          Width = 95
          Height = 21
          Style = csDropDownList
          TabOrder = 7
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxTurgorNormal: TComboBox
          Left = 144
          Top = 150
          Width = 74
          Height = 21
          Style = csDropDownList
          TabOrder = 8
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM'
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxTurgorDiminuido: TComboBox
          Left = 224
          Top = 150
          Width = 73
          Height = 21
          Style = csDropDownList
          TabOrder = 9
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxEquimose: TComboBox
          Left = 144
          Top = 201
          Width = 73
          Height = 21
          Style = csDropDownList
          TabOrder = 10
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPetequias: TComboBox
          Left = 223
          Top = 201
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 11
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxEritemas: TComboBox
          Left = 303
          Top = 201
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 12
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxExantemas: TComboBox
          Left = 383
          Top = 201
          Width = 73
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 13
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxHematomas: TComboBox
          Left = 462
          Top = 201
          Width = 73
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 14
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxUrticarias: TComboBox
          Left = 143
          Top = 243
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 15
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPapulas: TComboBox
          Left = 223
          Top = 243
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 16
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxTumor: TComboBox
          Left = 303
          Top = 243
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 17
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxNodulos: TComboBox
          Left = 383
          Top = 243
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 18
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAbscessos: TComboBox
          Left = 463
          Top = 243
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 19
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPustulas: TComboBox
          Left = 144
          Top = 284
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 20
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxBolhas: TComboBox
          Left = 224
          Top = 284
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 21
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxVesiculas: TComboBox
          Left = 304
          Top = 284
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 22
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtLocalManchas: TEdit
          Left = 143
          Top = 326
          Width = 235
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 23
          Text = 'EDTLOCALMANCHAS'
        end
        object edtTamanhoManchas: TEdit
          Left = 384
          Top = 326
          Width = 217
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 24
          Text = 'EDTTAMANHOMANCHAS'
        end
      end
      object PnCouroCabeludo: TPanel
        Left = 16
        Top = 279
        Width = 399
        Height = 114
        BorderStyle = bsSingle
        TabOrder = 2
        object Label111: TLabel
          Left = 127
          Top = 8
          Width = 142
          Height = 18
          Caption = 'COURO CABELUDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label112: TLabel
          Left = 24
          Top = 27
          Width = 46
          Height = 13
          Caption = 'Seborreia'
        end
        object Label113: TLabel
          Left = 104
          Top = 27
          Width = 52
          Height = 13
          Caption = 'Dermatites'
        end
        object Label114: TLabel
          Left = 184
          Top = 27
          Width = 41
          Height = 13
          Caption = 'Sujidade'
        end
        object Label115: TLabel
          Left = 264
          Top = 27
          Width = 50
          Height = 13
          Caption = 'Pediculose'
        end
        object Label116: TLabel
          Left = 24
          Top = 67
          Width = 51
          Height = 13
          Caption = 'Tipo Les'#227'o'
        end
        object Label117: TLabel
          Left = 194
          Top = 67
          Width = 75
          Height = 13
          Caption = 'Tamanho Les'#227'o'
        end
        object CbxSeborreia: TComboBox
          Left = 24
          Top = 43
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDermatites: TComboBox
          Left = 104
          Top = 43
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxSujidade: TComboBox
          Left = 184
          Top = 43
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPediculose: TComboBox
          Left = 264
          Top = 43
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtTipoLesao: TEdit
          Left = 24
          Top = 83
          Width = 164
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          Text = 'EDTTIPOLESAO'
        end
        object edtTamanhoLesao: TEdit
          Left = 194
          Top = 83
          Width = 191
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
          Text = 'EDTTAMANHOLESAO'
        end
      end
      object PnOlhos: TPanel
        Left = 421
        Top = 383
        Width = 724
        Height = 220
        BorderStyle = bsSingle
        TabOrder = 3
        object Label118: TLabel
          Left = 277
          Top = 3
          Width = 54
          Height = 18
          Caption = 'OLHOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label119: TLabel
          Left = 14
          Top = 45
          Width = 55
          Height = 13
          Caption = 'Acuidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label120: TLabel
          Left = 104
          Top = 27
          Width = 55
          Height = 13
          Caption = 'Preservada'
        end
        object Label121: TLabel
          Left = 176
          Top = 27
          Width = 45
          Height = 13
          Caption = 'Diminuida'
        end
        object Label122: TLabel
          Left = 248
          Top = 27
          Width = 40
          Height = 13
          Caption = 'Ausente'
        end
        object Label123: TLabel
          Left = 320
          Top = 27
          Width = 22
          Height = 13
          Caption = 'Qual'
        end
        object Label124: TLabel
          Left = 14
          Top = 88
          Width = 85
          Height = 13
          Caption = 'Mucosa Ocular:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label125: TLabel
          Left = 105
          Top = 77
          Width = 35
          Height = 13
          Caption = 'Corada'
        end
        object Label126: TLabel
          Left = 176
          Top = 77
          Width = 51
          Height = 13
          Caption = 'Descorada'
        end
        object Label127: TLabel
          Left = 248
          Top = 77
          Width = 47
          Height = 13
          Caption = 'Hiperemia'
        end
        object Label128: TLabel
          Left = 320
          Top = 77
          Width = 38
          Height = 13
          Caption = 'Ictericia'
        end
        object Label129: TLabel
          Left = 391
          Top = 77
          Width = 35
          Height = 13
          Caption = 'Anemia'
        end
        object Label130: TLabel
          Left = 464
          Top = 77
          Width = 41
          Height = 13
          Caption = 'Sujidade'
        end
        object Label131: TLabel
          Left = 533
          Top = 77
          Width = 79
          Height = 13
          Caption = 'Edema Palpebral'
        end
        object Label132: TLabel
          Left = 618
          Top = 77
          Width = 74
          Height = 13
          Caption = 'Ptose Palpebral'
        end
        object Label133: TLabel
          Left = 325
          Top = 118
          Width = 78
          Height = 13
          Caption = 'Sem Fotorea'#231#227'o'
        end
        object Label134: TLabel
          Left = 14
          Top = 131
          Width = 43
          Height = 13
          Caption = 'Pupilas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label135: TLabel
          Left = 104
          Top = 118
          Width = 48
          Height = 13
          Caption = 'Isoc'#243'ricas'
        end
        object Label136: TLabel
          Left = 176
          Top = 118
          Width = 59
          Height = 13
          Caption = 'Anisoc'#243'ricas'
        end
        object Label137: TLabel
          Left = 248
          Top = 118
          Width = 71
          Height = 13
          Caption = 'Fotoreagentes'
        end
        object Label138: TLabel
          Left = 416
          Top = 118
          Width = 33
          Height = 13
          Caption = 'Outros'
        end
        object CbxAcuidadePreservada: TComboBox
          Left = 104
          Top = 40
          Width = 66
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAcuidadeDiminuida: TComboBox
          Left = 176
          Top = 40
          Width = 66
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAcuidadeAusente: TComboBox
          Left = 248
          Top = 40
          Width = 66
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtQualAcuidade: TEdit
          Left = 320
          Top = 40
          Width = 161
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'EDTQUALACUIDADE'
        end
        object CbxCorada: TComboBox
          Left = 104
          Top = 91
          Width = 65
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDescorada: TComboBox
          Left = 176
          Top = 91
          Width = 66
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAnemia: TComboBox
          Left = 391
          Top = 91
          Width = 66
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxIctericia: TComboBox
          Left = 320
          Top = 91
          Width = 65
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 7
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxEdemaPalpebral: TComboBox
          Left = 533
          Top = 91
          Width = 76
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 8
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxSujidadeOlhos: TComboBox
          Left = 463
          Top = 91
          Width = 66
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 9
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPtosePalpebral: TComboBox
          Left = 617
          Top = 91
          Width = 96
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 10
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxHiperemiaOlhos: TComboBox
          Left = 248
          Top = 91
          Width = 66
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 11
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxIsocoricas: TComboBox
          Left = 104
          Top = 135
          Width = 66
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 12
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAnisocoricas: TComboBox
          Left = 176
          Top = 134
          Width = 66
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 13
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxFotoReagentes: TComboBox
          Left = 248
          Top = 134
          Width = 71
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 14
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxSemFotoreacao: TComboBox
          Left = 325
          Top = 134
          Width = 76
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 15
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtOutros: TEdit
          Left = 416
          Top = 135
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 16
          Text = 'EDTOUTROS'
        end
      end
      object PnOuvidos: TPanel
        Left = 16
        Top = 399
        Width = 399
        Height = 204
        BorderStyle = bsSingle
        TabOrder = 4
        object Label139: TLabel
          Left = 161
          Top = 0
          Width = 73
          Height = 18
          Caption = 'OUVIDOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label140: TLabel
          Left = 24
          Top = 35
          Width = 52
          Height = 13
          Caption = 'Acuidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label141: TLabel
          Left = 82
          Top = 19
          Width = 55
          Height = 13
          Caption = 'Preservada'
        end
        object Label142: TLabel
          Left = 151
          Top = 19
          Width = 45
          Height = 13
          Caption = 'Diminu'#237'da'
        end
        object Label143: TLabel
          Left = 24
          Top = 64
          Width = 47
          Height = 13
          Caption = 'Ausente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label144: TLabel
          Left = 152
          Top = 64
          Width = 26
          Height = 13
          Caption = 'Qual:'
        end
        object Label145: TLabel
          Left = 24
          Top = 96
          Width = 33
          Height = 13
          Caption = 'Les'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label146: TLabel
          Left = 82
          Top = 82
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object Label147: TLabel
          Left = 184
          Top = 82
          Width = 55
          Height = 13
          Caption = 'Local Les'#227'o'
        end
        object Label148: TLabel
          Left = 24
          Top = 140
          Width = 52
          Height = 13
          Caption = 'Secre'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label149: TLabel
          Left = 82
          Top = 123
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object Label150: TLabel
          Left = 184
          Top = 123
          Width = 71
          Height = 13
          Caption = 'Local Secre'#231#227'o'
        end
        object Label151: TLabel
          Left = 24
          Top = 173
          Width = 40
          Height = 13
          Caption = 'Otalgia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CbxPreservadaOuvidos: TComboBox
          Left = 82
          Top = 33
          Width = 63
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDiminuidaOuvidos: TComboBox
          Left = 151
          Top = 33
          Width = 63
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxOuvidosAusente: TComboBox
          Left = 82
          Top = 57
          Width = 63
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtQualAusente: TEdit
          Left = 184
          Top = 57
          Width = 201
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'EDTQUALAUSENTE'
        end
        object CbxTipoLesao: TComboBox
          Left = 82
          Top = 96
          Width = 96
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Items.Strings = (
            ''
            'VERIFICAR TIPOS E ALIMENTAR AQUI')
        end
        object edtLocalLesaoOuvidos: TEdit
          Left = 184
          Top = 96
          Width = 201
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
          Text = 'EDTLOCALLESAOOUVIDOS'
        end
        object CbxTipoSecrecao: TComboBox
          Left = 82
          Top = 136
          Width = 96
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Items.Strings = (
            ''
            'VERIFICAR TIPOS DE SECRECAO')
        end
        object edtLocalSecrecao: TEdit
          Left = 184
          Top = 136
          Width = 201
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 7
          Text = 'EDTLOCALSECRECAO'
        end
        object CbxOtalgia: TComboBox
          Left = 82
          Top = 170
          Width = 96
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 8
          Items.Strings = (
            ''
            'VER O QUE COLOCAR AQUI')
        end
      end
    end
    object TbShAvaliacaoFisica42: TTabSheet
      Caption = '4.2 - Avalia'#231#227'o F'#237'sica'
      ImageIndex = 5
      object PnNariz: TPanel
        Left = 8
        Top = 8
        Width = 369
        Height = 137
        BorderStyle = bsSingle
        TabOrder = 0
        object Label152: TLabel
          Left = 158
          Top = 5
          Width = 49
          Height = 18
          Caption = 'NARIZ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label153: TLabel
          Left = 16
          Top = 32
          Width = 44
          Height = 13
          Caption = 'Secre'#231#227'o'
        end
        object Label154: TLabel
          Left = 80
          Top = 32
          Width = 41
          Height = 13
          Caption = 'Sujidade'
        end
        object Label155: TLabel
          Left = 144
          Top = 32
          Width = 41
          Height = 13
          Caption = 'Epistaxe'
        end
        object Label156: TLabel
          Left = 208
          Top = 32
          Width = 43
          Height = 13
          Caption = 'Rinorr'#233'ia'
        end
        object Label157: TLabel
          Left = 272
          Top = 32
          Width = 78
          Height = 13
          Caption = 'Desvio de Septo'
        end
        object Label158: TLabel
          Left = 20
          Top = 80
          Width = 28
          Height = 13
          Caption = 'Les'#227'o'
        end
        object Label159: TLabel
          Left = 80
          Top = 80
          Width = 51
          Height = 13
          Caption = 'Tipo Les'#227'o'
        end
        object CbxSecrecao: TComboBox
          Left = 16
          Top = 51
          Width = 58
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxSujidadeNariz: TComboBox
          Left = 80
          Top = 51
          Width = 58
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxEpistaxe: TComboBox
          Left = 144
          Top = 51
          Width = 58
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxRinorreia: TComboBox
          Left = 208
          Top = 51
          Width = 58
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDesvioSepto: TComboBox
          Left = 272
          Top = 51
          Width = 58
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxLesao: TComboBox
          Left = 16
          Top = 99
          Width = 58
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtTipoLesaoNariz: TEdit
          Left = 80
          Top = 99
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 6
          Text = 'EDTTIPOLESAONARIZ'
        end
      end
      object PnBocaFaringe: TPanel
        Left = 8
        Top = 151
        Width = 369
        Height = 178
        BorderStyle = bsSingle
        TabOrder = 1
        object Label160: TLabel
          Left = 16
          Top = 32
          Width = 83
          Height = 13
          Caption = 'L'#237'ngua Saburrosa'
        end
        object Label161: TLabel
          Left = 112
          Top = 32
          Width = 32
          Height = 13
          Caption = 'Dislalia'
        end
        object Label162: TLabel
          Left = 176
          Top = 32
          Width = 37
          Height = 13
          Caption = 'Disfasia'
        end
        object Label163: TLabel
          Left = 256
          Top = 32
          Width = 38
          Height = 13
          Caption = 'Disfonia'
        end
        object Label164: TLabel
          Left = 16
          Top = 80
          Width = 90
          Height = 13
          Caption = 'L'#225'bios Ressecados'
        end
        object Label165: TLabel
          Left = 16
          Top = 141
          Width = 33
          Height = 13
          Caption = 'Les'#245'es'
        end
        object Label166: TLabel
          Left = 112
          Top = 80
          Width = 68
          Height = 13
          Caption = 'Cianose Labial'
        end
        object Label167: TLabel
          Left = 112
          Top = 125
          Width = 51
          Height = 13
          Caption = 'Tipo Les'#227'o'
        end
        object Label168: TLabel
          Left = 212
          Top = 125
          Width = 55
          Height = 13
          Caption = 'Local Les'#227'o'
        end
        object Label169: TLabel
          Left = 122
          Top = 3
          Width = 128
          Height = 18
          Caption = 'BOCA E FARINGE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CbxLinguaSaburrosa: TComboBox
          Left = 16
          Top = 48
          Width = 83
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDislalia: TComboBox
          Left = 112
          Top = 48
          Width = 58
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDisfasia: TComboBox
          Left = 176
          Top = 48
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDisfonia: TComboBox
          Left = 256
          Top = 48
          Width = 78
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxLesoes: TComboBox
          Left = 16
          Top = 140
          Width = 83
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxTipoLesaoBoca: TComboBox
          Left = 112
          Top = 140
          Width = 94
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxCianoseLabial: TComboBox
          Left = 112
          Top = 97
          Width = 58
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxLabiosRessecados: TComboBox
          Left = 16
          Top = 97
          Width = 83
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 7
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtLocalLesaoBoca: TEdit
          Left = 212
          Top = 140
          Width = 143
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 8
          Text = 'EDTLOCALLESAOBOCA'
        end
      end
      object PnViasAereas: TPanel
        Left = 8
        Top = 335
        Width = 369
        Height = 186
        BorderStyle = bsSingle
        TabOrder = 2
        object Label170: TLabel
          Left = 131
          Top = 4
          Width = 100
          Height = 18
          Caption = 'VIAS A'#201'REAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label171: TLabel
          Left = 14
          Top = 37
          Width = 53
          Height = 13
          Caption = 'Controlado'
        end
        object Label172: TLabel
          Left = 105
          Top = 37
          Width = 42
          Height = 13
          Caption = 'Assistido'
        end
        object Label173: TLabel
          Left = 197
          Top = 37
          Width = 99
          Height = 13
          Caption = 'Assistido-Controlado'
        end
        object Label174: TLabel
          Left = 14
          Top = 80
          Width = 117
          Height = 13
          Caption = 'Mandat'#243'rio Intermitente'
        end
        object Label175: TLabel
          Left = 105
          Top = 122
          Width = 24
          Height = 13
          Caption = 'Peep'
        end
        object Label176: TLabel
          Left = 16
          Top = 122
          Width = 20
          Height = 13
          Caption = 'Fio2'
        end
        object Label177: TLabel
          Left = 196
          Top = 122
          Width = 79
          Height = 13
          Caption = 'Comissura Labial'
        end
        object CbxControlado: TComboBox
          Left = 14
          Top = 53
          Width = 85
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAssistido: TComboBox
          Left = 105
          Top = 53
          Width = 85
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAssistidoControlado: TComboBox
          Left = 196
          Top = 53
          Width = 100
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxMandatorioIntermitente: TComboBox
          Left = 14
          Top = 95
          Width = 117
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtFio2: TEdit
          Left = 14
          Top = 137
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          Text = 'EDTFIO2'
        end
        object edtPeep: TEdit
          Left = 105
          Top = 137
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
          Text = 'EDTPEEP'
        end
        object edtComissuraLabial: TEdit
          Left = 196
          Top = 137
          Width = 100
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 6
          Text = 'EDTCOMISSURALABIAL'
        end
      end
      object PnPescoco: TPanel
        Left = 383
        Top = 8
        Width = 442
        Height = 137
        BorderStyle = bsSingle
        TabOrder = 3
        object Label178: TLabel
          Left = 182
          Top = 5
          Width = 73
          Height = 18
          Caption = 'PESCO'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label179: TLabel
          Left = 8
          Top = 32
          Width = 136
          Height = 13
          Caption = 'G'#226'nglios Linf'#225'ticos Palp'#225'veis'
        end
        object Label180: TLabel
          Left = 247
          Top = 32
          Width = 89
          Height = 13
          Caption = 'Indolor '#224' Palpa'#231#227'o'
        end
        object Label181: TLabel
          Left = 160
          Top = 32
          Width = 72
          Height = 13
          Caption = 'Dor '#224' Palpa'#231#227'o'
        end
        object Label182: TLabel
          Left = 352
          Top = 32
          Width = 41
          Height = 13
          Caption = 'Turgidez'
        end
        object Label183: TLabel
          Left = 8
          Top = 78
          Width = 51
          Height = 13
          Caption = 'Altera'#231#245'es'
        end
        object CbxGangliosLinfaticosPalpaveis: TComboBox
          Left = 8
          Top = 51
          Width = 145
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxIndolorPalpacao: TComboBox
          Left = 247
          Top = 51
          Width = 99
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxTurgidez: TComboBox
          Left = 352
          Top = 51
          Width = 81
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDorPalpacao: TComboBox
          Left = 159
          Top = 51
          Width = 82
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtAlteracoes: TEdit
          Left = 8
          Top = 97
          Width = 425
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          Text = 'EDTALTERACOES'
        end
      end
      object PnTorax: TPanel
        Left = 383
        Top = 151
        Width = 442
        Height = 370
        BorderStyle = bsSingle
        TabOrder = 4
        object Label184: TLabel
          Left = 190
          Top = 3
          Width = 52
          Height = 18
          Caption = 'T'#211'RAX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label185: TLabel
          Left = 8
          Top = 56
          Width = 34
          Height = 13
          Caption = 'Forma:'
        end
        object Label186: TLabel
          Left = 48
          Top = 36
          Width = 33
          Height = 13
          Caption = 'Normal'
        end
        object Label187: TLabel
          Left = 124
          Top = 36
          Width = 41
          Height = 13
          Caption = 'Alterado'
        end
        object Label188: TLabel
          Left = 200
          Top = 36
          Width = 51
          Height = 13
          Caption = 'Altera'#231#245'es'
        end
        object Label189: TLabel
          Left = 8
          Top = 97
          Width = 38
          Height = 13
          Caption = 'Simetria'
        end
        object Label190: TLabel
          Left = 48
          Top = 78
          Width = 43
          Height = 13
          Caption = 'Sim'#233'trico'
        end
        object Label191: TLabel
          Left = 124
          Top = 78
          Width = 54
          Height = 13
          Caption = 'Assim'#233'trico'
        end
        object Label192: TLabel
          Left = 8
          Top = 136
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object Label193: TLabel
          Left = 48
          Top = 121
          Width = 22
          Height = 13
          Caption = 'Funil'
        end
        object Label194: TLabel
          Left = 128
          Top = 121
          Width = 24
          Height = 13
          Caption = 'Barril'
        end
        object Label195: TLabel
          Left = 200
          Top = 120
          Width = 32
          Height = 13
          Caption = 'Pombo'
        end
        object Label196: TLabel
          Left = 280
          Top = 120
          Width = 62
          Height = 13
          Caption = 'Cifoescoliose'
        end
        object Label197: TLabel
          Left = 8
          Top = 182
          Width = 73
          Height = 13
          Caption = 'Expansibilidade'
        end
        object Label198: TLabel
          Left = 87
          Top = 163
          Width = 33
          Height = 13
          Caption = 'Normal'
        end
        object Label199: TLabel
          Left = 167
          Top = 163
          Width = 45
          Height = 13
          Caption = 'Diminu'#237'da'
        end
        object Label200: TLabel
          Left = 247
          Top = 163
          Width = 72
          Height = 13
          Caption = 'Local Diminu'#237'da'
        end
        object Label201: TLabel
          Left = 8
          Top = 211
          Width = 102
          Height = 13
          Caption = 'Pres. Cat'#233't. Centrais'
        end
        object Label202: TLabel
          Left = 8
          Top = 240
          Width = 80
          Height = 13
          Caption = 'Presen'#231'a desde:'
        end
        object CbxFormaNormal: TComboBox
          Left = 48
          Top = 51
          Width = 70
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxFormaAlterado: TComboBox
          Left = 124
          Top = 51
          Width = 70
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtAlteracoesTorax: TEdit
          Left = 200
          Top = 51
          Width = 233
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          Text = 'EDTALTERACOESTORAX'
        end
        object CbxSimetrico: TComboBox
          Left = 48
          Top = 94
          Width = 70
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAssimetrico: TComboBox
          Left = 125
          Top = 94
          Width = 69
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxFunil: TComboBox
          Left = 48
          Top = 136
          Width = 70
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxBarril: TComboBox
          Left = 124
          Top = 136
          Width = 70
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPombo: TComboBox
          Left = 200
          Top = 136
          Width = 74
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 7
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxCifoescoliose: TComboBox
          Left = 280
          Top = 136
          Width = 65
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 8
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxExpNormal: TComboBox
          Left = 87
          Top = 178
          Width = 74
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 9
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxExpDiminuida: TComboBox
          Left = 167
          Top = 178
          Width = 74
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 10
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtLocalDiminuida: TEdit
          Left = 247
          Top = 178
          Width = 186
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 11
          Text = 'EDTLOCALDIMINUIDA'
        end
        object edtPresCatetCentrais: TEdit
          Left = 116
          Top = 208
          Width = 317
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 12
          Text = 'EDTPRESCATETCENTRAIS'
        end
        object edtPresencaDesdeCatetCentrais: TEdit
          Left = 116
          Top = 237
          Width = 133
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 13
          Text = 'EDTPRESENCADESDECATETCENTRAIS'
        end
      end
      object PnAusculaPulmonar: TPanel
        Left = 831
        Top = 8
        Width = 482
        Height = 369
        BorderStyle = bsSingle
        TabOrder = 5
        object Label203: TLabel
          Left = 149
          Top = 8
          Width = 172
          Height = 18
          Caption = 'AUSCULTA PULMONAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label204: TLabel
          Left = 8
          Top = 32
          Width = 38
          Height = 13
          Caption = 'Eupneia'
        end
        object Label205: TLabel
          Left = 88
          Top = 32
          Width = 52
          Height = 13
          Caption = 'Taquipn'#233'ia'
        end
        object Label206: TLabel
          Left = 167
          Top = 32
          Width = 50
          Height = 13
          Caption = 'Bradipn'#233'ia'
        end
        object Label207: TLabel
          Left = 8
          Top = 78
          Width = 105
          Height = 13
          Caption = 'Excurs'#227'o Respirat'#243'ria'
        end
        object Label208: TLabel
          Left = 8
          Top = 124
          Width = 97
          Height = 13
          Caption = 'Fr'#234'mito Toracovocal'
        end
        object Label209: TLabel
          Left = 8
          Top = 190
          Width = 88
          Height = 13
          Caption = 'Ausculta Pulmonar'
        end
        object Label210: TLabel
          Left = 221
          Top = 168
          Width = 42
          Height = 13
          Caption = 'Traqueia'
        end
        object Label211: TLabel
          Left = 103
          Top = 168
          Width = 105
          Height = 13
          Caption = 'Murm'#250'rios Vesiculares'
        end
        object Label212: TLabel
          Left = 8
          Top = 233
          Width = 90
          Height = 13
          Caption = 'Ru'#237'dos Advent'#237'cios'
        end
        object Label213: TLabel
          Left = 104
          Top = 210
          Width = 35
          Height = 13
          Caption = 'Roncos'
        end
        object Label214: TLabel
          Left = 168
          Top = 210
          Width = 29
          Height = 13
          Caption = 'Sibilos'
        end
        object Label215: TLabel
          Left = 231
          Top = 210
          Width = 50
          Height = 13
          Caption = 'Estertores'
        end
        object Label216: TLabel
          Left = 104
          Top = 252
          Width = 56
          Height = 13
          Caption = 'Crepitantes'
        end
        object Label217: TLabel
          Left = 167
          Top = 252
          Width = 132
          Height = 13
          Caption = 'Expectora'#231#227'o Espont'#226'nea  '
        end
        object Label218: TLabel
          Left = 8
          Top = 296
          Width = 51
          Height = 13
          Caption = 'Tipo Tosse'
        end
        object Label219: TLabel
          Left = 8
          Top = 331
          Width = 181
          Height = 13
          Caption = 'Percuss'#227'o Respirat'#243'ria entre costelas'
        end
        object CbxEupneia: TComboBox
          Left = 8
          Top = 51
          Width = 74
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxTaquipneia: TComboBox
          Left = 88
          Top = 51
          Width = 73
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxBradipneia: TComboBox
          Left = 167
          Top = 51
          Width = 73
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtExcursaoRespiratoria: TEdit
          Left = 8
          Top = 97
          Width = 313
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'EDTEXCURSAORESPIRATORIA'
        end
        object edtFremitoToracovocal: TEdit
          Left = 8
          Top = 141
          Width = 313
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          Text = 'EDTFREMITOTORACOVOCAL'
        end
        object edtTraqueia: TEdit
          Left = 294
          Top = 182
          Width = 153
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
          Text = 'EDTTRAQUEIA'
        end
        object CbxMurmuriosVesiculares: TComboBox
          Left = 102
          Top = 183
          Width = 106
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxTraqueia: TComboBox
          Left = 220
          Top = 183
          Width = 69
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 7
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxRoncos: TComboBox
          Left = 104
          Top = 225
          Width = 58
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 8
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxSibilos: TComboBox
          Left = 168
          Top = 225
          Width = 57
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 9
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxEstertores: TComboBox
          Left = 231
          Top = 225
          Width = 58
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 10
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxCrepitantes: TComboBox
          Left = 104
          Top = 266
          Width = 57
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 11
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxExpectoracaoEspontanea: TComboBox
          Left = 167
          Top = 266
          Width = 122
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 12
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxTipoTosse: TComboBox
          Left = 104
          Top = 293
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 13
          Items.Strings = (
            ''
            'PRODUTIVA'
            'IMPRODUTIVA'
            'FREQUENTE'
            'ESPOR'#193'DICA'
            'PRESEN'#199'A DE SANGUE')
        end
        object edtPercussaoRespiratoriaCostelas: TEdit
          Left = 195
          Top = 323
          Width = 270
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 14
          Text = 'EDTPERCUSSAORESPIRATORIACOSTELAS'
        end
      end
      object PnAusculta_Cardiaca_HE: TPanel
        Left = 831
        Top = 383
        Width = 482
        Height = 138
        BorderStyle = bsSingle
        TabOrder = 6
        object Label220: TLabel
          Left = 8
          Top = 32
          Width = 118
          Height = 13
          Caption = 'Palpa'#231#227'o do Ictus Cordis'
        end
        object Label221: TLabel
          Left = 152
          Top = 32
          Width = 59
          Height = 13
          Caption = 'Fr'#234'mito T'#225'til'
        end
        object Label222: TLabel
          Left = 304
          Top = 32
          Width = 101
          Height = 13
          Caption = 'Foco A'#243'rtico (2EICD)'
        end
        object Label223: TLabel
          Left = 8
          Top = 88
          Width = 110
          Height = 13
          Caption = 'Foco Pulmonar (2EICE)'
        end
        object Label224: TLabel
          Left = 152
          Top = 88
          Width = 92
          Height = 13
          Caption = 'Foco Mitral (5EICE)'
        end
        object Label225: TLabel
          Left = 304
          Top = 88
          Width = 164
          Height = 13
          Caption = 'Foco Tric'#250'spide (Ap'#234'ndice xifoide)'
        end
        object Label226: TLabel
          Left = 157
          Top = 8
          Width = 163
          Height = 18
          Caption = 'AUSCULTA CARD'#205'ACA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtPalpacaoIctusCordis: TEdit
          Left = 8
          Top = 51
          Width = 138
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'EDTPALPACAOICTUSCORDIS'
        end
        object edtFremitoTatil: TEdit
          Left = 152
          Top = 51
          Width = 146
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTFREMITOTATIL'
        end
        object edtFocoAortico: TEdit
          Left = 304
          Top = 51
          Width = 161
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          Text = 'EDTFOCOAORTICO'
        end
        object edtFocoPulmonar: TEdit
          Left = 8
          Top = 104
          Width = 138
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'EDTFOCOPULMONAR'
        end
        object edtFocoMitral: TEdit
          Left = 152
          Top = 104
          Width = 146
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          Text = 'EDTFOCOMITRAL'
        end
        object edtFocoTricuspide: TEdit
          Left = 304
          Top = 104
          Width = 161
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
          Text = 'EDTFOCOTRICUSPIDE'
        end
      end
    end
    object TbShTGI: TTabSheet
      Caption = '5 - Avalia'#231#227'o TGI e Renal'
      ImageIndex = 6
      object PnAvaliacaoTGI: TPanel
        Left = 3
        Top = 3
        Width = 446
        Height = 557
        BorderStyle = bsSingle
        TabOrder = 0
        object Label227: TLabel
          Left = 8
          Top = 96
          Width = 58
          Height = 13
          Caption = 'Alimenta'#231#227'o'
        end
        object Label228: TLabel
          Left = 80
          Top = 48
          Width = 57
          Height = 13
          Caption = 'Espont'#226'nea'
        end
        object Label229: TLabel
          Left = 152
          Top = 48
          Width = 66
          Height = 13
          Caption = 'Esp. Assistida'
        end
        object Label230: TLabel
          Left = 224
          Top = 48
          Width = 21
          Height = 13
          Caption = 'NPO'
        end
        object Label231: TLabel
          Left = 296
          Top = 48
          Width = 20
          Height = 13
          Caption = 'SNG'
        end
        object Label232: TLabel
          Left = 367
          Top = 48
          Width = 19
          Height = 13
          Caption = 'SNE'
        end
        object Label233: TLabel
          Left = 80
          Top = 88
          Width = 19
          Height = 13
          Caption = 'NPT'
        end
        object Label234: TLabel
          Left = 152
          Top = 88
          Width = 56
          Height = 13
          Caption = 'SNG Aberta'
        end
        object Label235: TLabel
          Left = 224
          Top = 88
          Width = 63
          Height = 13
          Caption = 'Jejunostomia'
        end
        object Label236: TLabel
          Left = 296
          Top = 88
          Width = 63
          Height = 13
          Caption = 'Gastrostomia'
        end
        object Label237: TLabel
          Left = 8
          Top = 168
          Width = 39
          Height = 13
          Caption = 'Abdome'
        end
        object Label238: TLabel
          Left = 80
          Top = 136
          Width = 38
          Height = 13
          Caption = 'Globoso'
        end
        object Label239: TLabel
          Left = 152
          Top = 136
          Width = 26
          Height = 13
          Caption = 'Plano'
        end
        object Label240: TLabel
          Left = 224
          Top = 136
          Width = 46
          Height = 13
          Caption = 'Escavado'
        end
        object Label241: TLabel
          Left = 296
          Top = 136
          Width = 33
          Height = 13
          Caption = 'Fl'#225'cido'
        end
        object Label242: TLabel
          Left = 368
          Top = 136
          Width = 50
          Height = 13
          Caption = 'Distendido'
        end
        object Label243: TLabel
          Left = 80
          Top = 178
          Width = 47
          Height = 13
          Caption = 'Timp'#226'nico'
        end
        object Label244: TLabel
          Left = 152
          Top = 178
          Width = 36
          Height = 13
          Caption = 'Asc'#237'tico'
        end
        object Label245: TLabel
          Left = 8
          Top = 243
          Width = 44
          Height = 13
          Caption = 'Inspe'#231#227'o'
        end
        object Label246: TLabel
          Left = 152
          Top = 224
          Width = 46
          Height = 13
          Caption = 'Cicatrizes'
        end
        object Label247: TLabel
          Left = 296
          Top = 224
          Width = 77
          Height = 13
          Caption = 'Outros Achados'
        end
        object Label248: TLabel
          Left = 8
          Top = 286
          Width = 21
          Height = 13
          Caption = 'RHA'
        end
        object Label249: TLabel
          Left = 298
          Top = 271
          Width = 81
          Height = 13
          Caption = 'Normais Aud'#237'veis'
        end
        object Label250: TLabel
          Left = 80
          Top = 271
          Width = 45
          Height = 13
          Caption = 'Ausentes'
        end
        object Label251: TLabel
          Left = 154
          Top = 271
          Width = 54
          Height = 13
          Caption = 'Hiperativos'
        end
        object Label252: TLabel
          Left = 226
          Top = 271
          Width = 50
          Height = 13
          Caption = 'Hipoativos'
        end
        object Label253: TLabel
          Left = 8
          Top = 328
          Width = 49
          Height = 13
          Caption = 'Percuss'#227'o'
        end
        object Label254: TLabel
          Left = 152
          Top = 313
          Width = 78
          Height = 13
          Caption = 'Sons Timp'#226'nicos'
        end
        object Label255: TLabel
          Left = 80
          Top = 313
          Width = 63
          Height = 13
          Caption = 'Sons Maci'#231'os'
        end
        object Label256: TLabel
          Left = 8
          Top = 376
          Width = 95
          Height = 13
          Caption = 'Palpa'#231#227'o Abdominal'
        end
        object Label257: TLabel
          Left = 120
          Top = 355
          Width = 34
          Height = 13
          Caption = 'Indolor'
        end
        object Label258: TLabel
          Left = 192
          Top = 355
          Width = 97
          Height = 13
          Caption = 'Doloroso '#224' Palpa'#231#227'o'
        end
        object Label259: TLabel
          Left = 192
          Top = 395
          Width = 177
          Height = 13
          Caption = 'Presen'#231'a de massa Anormal Palp'#225'vel'
        end
        object Label260: TLabel
          Left = 6
          Top = 456
          Width = 93
          Height = 13
          Caption = 'Palpa'#231#227'o do F'#237'gado'
        end
        object Label261: TLabel
          Left = 120
          Top = 438
          Width = 33
          Height = 13
          Caption = 'Normal'
        end
        object Label262: TLabel
          Left = 192
          Top = 438
          Width = 41
          Height = 13
          Caption = 'Alterado'
        end
        object Label263: TLabel
          Left = 6
          Top = 496
          Width = 84
          Height = 13
          Caption = 'Percuss'#227'o F'#237'gado'
        end
        object Label264: TLabel
          Left = 120
          Top = 480
          Width = 33
          Height = 13
          Caption = 'Normal'
        end
        object Label265: TLabel
          Left = 192
          Top = 480
          Width = 41
          Height = 13
          Caption = 'Alterado'
        end
        object Label266: TLabel
          Left = 264
          Top = 480
          Width = 69
          Height = 13
          Caption = 'Medida F'#237'gado'
        end
        object Label267: TLabel
          Left = 170
          Top = 5
          Width = 119
          Height = 18
          Caption = 'AVALIA'#199#195'O TGI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CbxEspontanea: TComboBox
          Left = 80
          Top = 63
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxEspontaneaAssistida: TComboBox
          Left = 152
          Top = 63
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxNPO: TComboBox
          Left = 224
          Top = 63
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxSNE: TComboBox
          Left = 368
          Top = 63
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxSNG: TComboBox
          Left = 296
          Top = 63
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 4
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxJejunostomia: TComboBox
          Left = 224
          Top = 103
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 5
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxNPT: TComboBox
          Left = 80
          Top = 103
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 6
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxSNGAberta: TComboBox
          Left = 152
          Top = 103
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 7
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxGastrostomia: TComboBox
          Left = 296
          Top = 103
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 8
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxGloboso: TComboBox
          Left = 80
          Top = 151
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 9
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPlano: TComboBox
          Left = 152
          Top = 151
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 10
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxEscavado: TComboBox
          Left = 224
          Top = 151
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 11
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDistendido: TComboBox
          Left = 368
          Top = 151
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 12
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxFlacido: TComboBox
          Left = 296
          Top = 151
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 13
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAscitico: TComboBox
          Left = 152
          Top = 191
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 14
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxTimpanico: TComboBox
          Left = 80
          Top = 191
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 15
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxInspecao: TComboBox
          Left = 80
          Top = 240
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 16
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtCicatrizes: TEdit
          Left = 152
          Top = 240
          Width = 138
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 17
          Text = 'EDTCICATRIZES'
        end
        object edtOutrosAchados: TEdit
          Left = 296
          Top = 240
          Width = 138
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 18
          Text = 'EDTOUTROSACHADOS'
        end
        object CbxRHAHiperativos: TComboBox
          Left = 154
          Top = 286
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 19
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxRHAAusentes: TComboBox
          Left = 80
          Top = 286
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 20
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxRHAHipoativos: TComboBox
          Left = 226
          Top = 286
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 21
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxRHANormais: TComboBox
          Left = 298
          Top = 286
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 22
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxSonsTimpanicos: TComboBox
          Left = 152
          Top = 328
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 23
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxSonsMacicos: TComboBox
          Left = 80
          Top = 328
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 24
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPalpacaoIndolor: TComboBox
          Left = 120
          Top = 370
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 25
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtDolorosoPalpacao: TEdit
          Left = 192
          Top = 370
          Width = 242
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 26
          Text = 'EDTDOLOROSOPALPACAO'
        end
        object edtPresencaMassaAnormal: TEdit
          Left = 192
          Top = 411
          Width = 242
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 27
          Text = 'EDTPRESENCAMASSAANORMAL'
        end
        object CbxPalpacaoFigadoNormal: TComboBox
          Left = 120
          Top = 453
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 28
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPalpacaoFigadoAlterado: TComboBox
          Left = 192
          Top = 453
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 29
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPercussaoFigadoNormal: TComboBox
          Left = 120
          Top = 496
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 30
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPercussaoFigadoAlterado: TComboBox
          Left = 192
          Top = 496
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 31
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtMedidaFigado: TEdit
          Left = 264
          Top = 496
          Width = 170
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 32
          Text = 'EDTMEDIDAFIGADO'
        end
      end
      object PnAvaliacao_Renal_HE: TPanel
        Left = 455
        Top = 3
        Width = 446
        Height = 557
        BorderStyle = bsSingle
        TabOrder = 1
        object Label268: TLabel
          Left = 162
          Top = 5
          Width = 143
          Height = 18
          Caption = 'AVALIA'#199#195'O RENAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label269: TLabel
          Left = 8
          Top = 67
          Width = 78
          Height = 13
          Caption = 'Palpa'#231#227'o Rins'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label270: TLabel
          Left = 99
          Top = 47
          Width = 33
          Height = 13
          Caption = 'Normal'
        end
        object Label271: TLabel
          Left = 171
          Top = 47
          Width = 39
          Height = 13
          Caption = 'Anormal'
        end
        object Label272: TLabel
          Left = 8
          Top = 95
          Width = 85
          Height = 13
          Caption = 'Percuss'#227'o Rins'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label273: TLabel
          Left = 170
          Top = 83
          Width = 78
          Height = 13
          Caption = 'Dor '#224' Percuss'#227'o'
        end
        object Label274: TLabel
          Left = 99
          Top = 83
          Width = 40
          Height = 13
          Caption = 'Sem Dor'
        end
        object Label275: TLabel
          Left = 8
          Top = 110
          Width = 34
          Height = 13
          Caption = 'Drenos'
        end
        object Label276: TLabel
          Left = 8
          Top = 147
          Width = 46
          Height = 13
          Caption = 'Curativos'
        end
        object Label277: TLabel
          Left = 8
          Top = 185
          Width = 44
          Height = 13
          Caption = 'Ostomias'
        end
        object Label278: TLabel
          Left = 164
          Top = 221
          Width = 114
          Height = 13
          Caption = 'Elimina'#231#245'es Vesicais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label279: TLabel
          Left = 9
          Top = 235
          Width = 43
          Height = 13
          Caption = 'Presente'
        end
        object Label280: TLabel
          Left = 79
          Top = 235
          Width = 40
          Height = 13
          Caption = 'Ausente'
        end
        object Label281: TLabel
          Left = 154
          Top = 234
          Width = 57
          Height = 13
          Caption = 'Espont'#226'nea'
        end
        object Label282: TLabel
          Left = 8
          Top = 270
          Width = 56
          Height = 13
          Caption = 'SVD Volume'
        end
        object Label283: TLabel
          Left = 79
          Top = 270
          Width = 105
          Height = 13
          Caption = 'Caracter'#237'stica Diurese'
        end
        object Label284: TLabel
          Left = 8
          Top = 306
          Width = 30
          Height = 13
          Caption = 'Fralda'
        end
        object Label285: TLabel
          Left = 79
          Top = 306
          Width = 42
          Height = 13
          Caption = 'Ard'#234'ncia'
        end
        object Label286: TLabel
          Left = 150
          Top = 306
          Width = 36
          Height = 13
          Caption = 'Olig'#250'ria'
        end
        object Label287: TLabel
          Left = 222
          Top = 306
          Width = 32
          Height = 13
          Caption = 'Dis'#250'ria'
        end
        object Label288: TLabel
          Left = 293
          Top = 282
          Width = 31
          Height = 13
          Caption = 'An'#250'ria'
        end
        object Label289: TLabel
          Left = 293
          Top = 306
          Width = 49
          Height = 13
          Caption = 'Hemat'#250'ria'
        end
        object Label290: TLabel
          Left = 8
          Top = 342
          Width = 45
          Height = 13
          Caption = 'Polaci'#250'ria'
        end
        object Label291: TLabel
          Left = 79
          Top = 342
          Width = 122
          Height = 13
          Caption = 'Incontin'#234'ncia Urin'#225'ria      '
        end
        object Label292: TLabel
          Left = 222
          Top = 342
          Width = 62
          Height = 13
          Caption = 'Globo Vesical'
        end
        object Label293: TLabel
          Left = 156
          Top = 376
          Width = 130
          Height = 13
          Caption = 'Elimina'#231#245'es Intestinais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label294: TLabel
          Left = 9
          Top = 391
          Width = 43
          Height = 13
          Caption = 'Presente'
        end
        object Label295: TLabel
          Left = 80
          Top = 391
          Width = 59
          Height = 13
          Caption = 'Constipa'#231#227'o'
        end
        object Label296: TLabel
          Left = 150
          Top = 391
          Width = 34
          Height = 13
          Caption = 'Melena'
        end
        object Label297: TLabel
          Left = 222
          Top = 391
          Width = 37
          Height = 13
          Caption = 'Diarr'#233'ia'
        end
        object Label298: TLabel
          Left = 293
          Top = 341
          Width = 60
          Height = 13
          Caption = 'Enterorragia'
        end
        object Label299: TLabel
          Left = 8
          Top = 426
          Width = 40
          Height = 13
          Caption = 'Ausente'
        end
        object Label300: TLabel
          Left = 8
          Top = 461
          Width = 30
          Height = 13
          Caption = 'Fralda'
        end
        object Label301: TLabel
          Left = 8
          Top = 502
          Width = 55
          Height = 13
          Caption = 'Colostomia '
        end
        object Label302: TLabel
          Left = 80
          Top = 426
          Width = 74
          Height = 13
          Caption = 'Quanto tempo?'
        end
        object Label303: TLabel
          Left = 79
          Top = 461
          Width = 53
          Height = 13
          Caption = 'Tipo Fralda'
        end
        object Label304: TLabel
          Left = 167
          Top = 461
          Width = 56
          Height = 13
          Caption = 'Quantidade'
        end
        object Label305: TLabel
          Left = 231
          Top = 461
          Width = 71
          Height = 13
          Caption = 'Caracter'#237'sticas'
        end
        object Label306: TLabel
          Left = 79
          Top = 502
          Width = 75
          Height = 13
          Caption = 'Tipo Colostomia'
        end
        object Label307: TLabel
          Left = 167
          Top = 502
          Width = 56
          Height = 13
          Caption = 'Quantidade'
        end
        object Label308: TLabel
          Left = 231
          Top = 502
          Width = 71
          Height = 13
          Caption = 'Caracter'#237'sticas'
        end
        object Label309: TLabel
          Left = 364
          Top = 306
          Width = 31
          Height = 13
          Caption = 'An'#250'ria'
        end
        object CbxPalpacaoNormal: TComboBox
          Left = 99
          Top = 61
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPalpacaoAnormal: TComboBox
          Left = 171
          Top = 61
          Width = 73
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPercussaoComDor: TComboBox
          Left = 170
          Top = 97
          Width = 74
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPercussaoSemDor: TComboBox
          Left = 99
          Top = 97
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDrenos: TComboBox
          Left = 8
          Top = 124
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 4
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxCurativos: TComboBox
          Left = 8
          Top = 161
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 5
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxOstomias: TComboBox
          Left = 8
          Top = 199
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 6
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtObsDrenos: TEdit
          Left = 79
          Top = 124
          Width = 218
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 7
          Text = 'EDTOBSDRENOS'
        end
        object edtObsCurativos: TEdit
          Left = 79
          Top = 161
          Width = 218
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 8
          Text = 'EDTOBSCURATIVOS'
        end
        object edtObsOstomias: TEdit
          Left = 79
          Top = 199
          Width = 218
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 9
          Text = 'EDTOBSOSTOMIAS'
        end
        object CbxVesicalPresente: TComboBox
          Left = 8
          Top = 249
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 10
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxVesicalAusente: TComboBox
          Left = 79
          Top = 248
          Width = 69
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 11
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxVesicalEspontanea: TComboBox
          Left = 154
          Top = 248
          Width = 64
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 12
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxSVDVolume: TComboBox
          Left = 8
          Top = 284
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 13
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtCaracteristicaDiurese: TEdit
          Left = 79
          Top = 284
          Width = 246
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 14
          Text = 'EDTCARACTERISTICADIURESE'
        end
        object CbxFralda: TComboBox
          Left = 8
          Top = 320
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 15
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxArdencia: TComboBox
          Left = 79
          Top = 320
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 16
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxOliguria: TComboBox
          Left = 150
          Top = 320
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 17
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxDisuria: TComboBox
          Left = 222
          Top = 319
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 18
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxHematuria: TComboBox
          Left = 293
          Top = 319
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 19
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPolaciuria: TComboBox
          Left = 8
          Top = 355
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 20
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxIncontinenciaUrinaria: TComboBox
          Left = 79
          Top = 355
          Width = 106
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 21
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxGloboVesical: TComboBox
          Left = 222
          Top = 355
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 22
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxIntestinaisPresente: TComboBox
          Left = 8
          Top = 405
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 23
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxEnterorragia: TComboBox
          Left = 293
          Top = 355
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 24
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxIntestinaisConstipacao: TComboBox
          Left = 80
          Top = 405
          Width = 64
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 25
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxIntestinaisMelena: TComboBox
          Left = 150
          Top = 405
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 26
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxIntestinaisDiarreia: TComboBox
          Left = 222
          Top = 405
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 27
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxIntestinaisAusente: TComboBox
          Left = 8
          Top = 440
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 28
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxEliminacaoIntestinal: TComboBox
          Left = 8
          Top = 475
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 29
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxColostomia: TComboBox
          Left = 8
          Top = 516
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 30
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtQuantoTempoAusente: TEdit
          Left = 79
          Top = 440
          Width = 138
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 31
          Text = 'EDTQUANTOTEMPOAUSENTE'
        end
        object edtTipoFralda: TEdit
          Left = 79
          Top = 475
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 32
          Text = 'EDTTIPOFRALDA'
        end
        object edtQuantidadeFralda: TEdit
          Left = 167
          Top = 475
          Width = 58
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 33
          Text = 'EDTQUANTIDADEFRALDA'
        end
        object edtCaracteristicasFralda: TEdit
          Left = 231
          Top = 475
          Width = 194
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 34
          Text = 'EDTCARACTERISTICASFRALDA'
        end
        object edtTipoColostomia: TEdit
          Left = 79
          Top = 516
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 35
          Text = 'EDTTIPOCOLOSTOMIA'
        end
        object edtQuantidadeColostomia: TEdit
          Left = 167
          Top = 516
          Width = 58
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 36
          Text = 'EDTQUANTIDADECOLOSTOMIA'
        end
        object edtCaracteristicasColostomia: TEdit
          Left = 231
          Top = 516
          Width = 194
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 37
          Text = 'EDTCARACTERISTICASCOLOSTOMIA'
        end
        object CbxAnuria: TComboBox
          Left = 364
          Top = 319
          Width = 65
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 38
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
      end
    end
    object TbShGenitaliasExtremidades: TTabSheet
      Caption = '6 - Genit'#225'lias e Extremidades'
      ImageIndex = 7
      OnShow = TbShGenitaliasExtremidadesShow
      object PnGenitais: TPanel
        Left = 3
        Top = 3
        Width = 470
        Height = 189
        BorderStyle = bsSingle
        TabOrder = 0
        object Label310: TLabel
          Left = 195
          Top = 5
          Width = 75
          Height = 18
          Caption = 'GENITAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label311: TLabel
          Left = 8
          Top = 48
          Width = 46
          Height = 13
          Caption = 'Aspecto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label312: TLabel
          Left = 60
          Top = 34
          Width = 33
          Height = 13
          Caption = 'Les'#245'es'
        end
        object Label313: TLabel
          Left = 188
          Top = 34
          Width = 71
          Height = 13
          Caption = 'Dor as Mic'#231#245'es'
        end
        object Label314: TLabel
          Left = 124
          Top = 34
          Width = 24
          Height = 13
          Caption = 'Odor'
        end
        object Label315: TLabel
          Left = 267
          Top = 34
          Width = 34
          Height = 13
          Caption = 'Prurido'
        end
        object Label316: TLabel
          Left = 60
          Top = 72
          Width = 106
          Height = 13
          Caption = 'Presen'#231'a de Secre'#231#227'o'
        end
        object Label317: TLabel
          Left = 188
          Top = 72
          Width = 113
          Height = 13
          Caption = 'Caracter'#237'stica Secre'#231#227'o'
        end
        object Label321: TLabel
          Left = 133
          Top = 114
          Width = 199
          Height = 18
          Caption = 'REGI'#195'O ANAL E PERINEAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label322: TLabel
          Left = 60
          Top = 138
          Width = 32
          Height = 13
          Caption = 'Edema'
        end
        object Label323: TLabel
          Left = 124
          Top = 138
          Width = 52
          Height = 13
          Caption = 'Ulcera'#231#245'es'
        end
        object Label324: TLabel
          Left = 192
          Top = 138
          Width = 60
          Height = 13
          Caption = 'Hemorr'#243'idas'
        end
        object Label325: TLabel
          Left = 267
          Top = 138
          Width = 45
          Height = 13
          Caption = 'Abscesso'
        end
        object Label326: TLabel
          Left = 402
          Top = 138
          Width = 36
          Height = 13
          Caption = 'F'#237'stulas'
        end
        object Label327: TLabel
          Left = 334
          Top = 137
          Width = 39
          Height = 13
          Caption = 'Fissuras'
        end
        object CbxAspectoLesoes: TComboBox
          Left = 60
          Top = 48
          Width = 58
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAspectoOdor: TComboBox
          Left = 124
          Top = 48
          Width = 58
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAspectoMiccoes: TComboBox
          Left = 188
          Top = 48
          Width = 58
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAspectoPrurido: TComboBox
          Left = 265
          Top = 48
          Width = 58
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPresencaSecrecao: TComboBox
          Left = 60
          Top = 87
          Width = 122
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 4
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxCaracteristicaSecrecao: TComboBox
          Left = 188
          Top = 87
          Width = 122
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 5
          Items.Strings = (
            ''
            'ESBRANQUI'#199'ADA'
            'AMARELADA'
            'ESCURECIDA')
        end
        object CbxAnalEdema: TComboBox
          Left = 60
          Top = 153
          Width = 58
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 6
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAnalUlceracoes: TComboBox
          Left = 124
          Top = 153
          Width = 62
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 7
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAnalAbscesso: TComboBox
          Left = 267
          Top = 153
          Width = 61
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 8
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAnalFistulas: TComboBox
          Left = 400
          Top = 153
          Width = 58
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 9
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAnalHemorroidas: TComboBox
          Left = 192
          Top = 153
          Width = 69
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 10
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxAnalFissuras: TComboBox
          Left = 334
          Top = 153
          Width = 62
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 11
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
      end
      object PnGenitaisFemininos: TPanel
        Left = 3
        Top = 198
        Width = 470
        Height = 94
        BorderStyle = bsSingle
        TabOrder = 1
        Visible = False
        object Label320: TLabel
          Left = 148
          Top = 5
          Width = 170
          Height = 18
          Caption = 'GENITAIS FEMININOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label318: TLabel
          Left = 12
          Top = 41
          Width = 78
          Height = 13
          Caption = 'Suspeita de DST'
        end
        object Label319: TLabel
          Left = 140
          Top = 41
          Width = 102
          Height = 13
          Caption = #218'ltima coleta de C.O.'
        end
        object CbxSuspeitaDST: TComboBox
          Left = 12
          Top = 56
          Width = 122
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxUltimaColetaCO: TComboBox
          Left = 140
          Top = 56
          Width = 122
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
      end
      object PnGenitaisMasculinos: TPanel
        Left = 3
        Top = 198
        Width = 470
        Height = 171
        BorderStyle = bsSingle
        TabOrder = 2
        Visible = False
        object Label328: TLabel
          Left = 156
          Top = 5
          Width = 183
          Height = 18
          Caption = 'GENITAIS MASCULINOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label329: TLabel
          Left = 8
          Top = 33
          Width = 71
          Height = 13
          Caption = 'Aten'#231#227'o a DST'
        end
        object Label330: TLabel
          Left = 96
          Top = 33
          Width = 82
          Height = 13
          Caption = 'Uso Preservativo'
        end
        object Label331: TLabel
          Left = 168
          Top = 72
          Width = 47
          Height = 13
          Caption = 'Hiperemia'
        end
        object Label332: TLabel
          Left = 8
          Top = 96
          Width = 66
          Height = 13
          Caption = 'Bolsa Escrotal'
        end
        object Label333: TLabel
          Left = 96
          Top = 72
          Width = 32
          Height = 13
          Caption = 'Edema'
        end
        object Label334: TLabel
          Left = 8
          Top = 130
          Width = 71
          Height = 13
          Caption = 'P'#234'los Pubianos'
        end
        object Label335: TLabel
          Left = 96
          Top = 114
          Width = 106
          Height = 13
          Caption = 'Presen'#231'a de Parasitas'
        end
        object CbxAtencaoDST: TComboBox
          Left = 8
          Top = 49
          Width = 82
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 0
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxUsoPreservativo: TComboBox
          Left = 96
          Top = 49
          Width = 89
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 1
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxBolsaEdema: TComboBox
          Left = 96
          Top = 87
          Width = 66
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxBolsaHiperemia: TComboBox
          Left = 168
          Top = 87
          Width = 65
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPresencaParasitas: TComboBox
          Left = 96
          Top = 130
          Width = 137
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 4
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
      end
      object PnExtremidades: TPanel
        Left = 479
        Top = 3
        Width = 450
        Height = 366
        BorderStyle = bsSingle
        TabOrder = 3
        object Label336: TLabel
          Left = 16
          Top = 34
          Width = 32
          Height = 13
          Caption = 'Edema'
        end
        object Label337: TLabel
          Left = 16
          Top = 64
          Width = 33
          Height = 13
          Caption = 'Les'#245'es'
        end
        object Label338: TLabel
          Left = 16
          Top = 90
          Width = 66
          Height = 13
          Caption = 'Deformidades'
        end
        object Label339: TLabel
          Left = 16
          Top = 126
          Width = 35
          Height = 13
          Caption = 'Unhas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label340: TLabel
          Left = 128
          Top = 109
          Width = 146
          Height = 13
          Caption = 'Sinais de Infec'#231#227'o ou Fungos  '
        end
        object Label341: TLabel
          Left = 280
          Top = 109
          Width = 128
          Height = 13
          Caption = 'Baqueteamento dos dedos'
        end
        object Label342: TLabel
          Left = 16
          Top = 159
          Width = 107
          Height = 13
          Caption = 'Pres. de Cat. Venosos'
        end
        object Label343: TLabel
          Left = 279
          Top = 159
          Width = 30
          Height = 13
          Caption = 'Desde'
        end
        object Label344: TLabel
          Left = 16
          Top = 204
          Width = 107
          Height = 13
          Caption = 'Perfus'#227'o Perif'#233'rica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label345: TLabel
          Left = 280
          Top = 178
          Width = 24
          Height = 13
          Caption = 'Local'
        end
        object Label346: TLabel
          Left = 129
          Top = 178
          Width = 33
          Height = 13
          Caption = 'Normal'
        end
        object Label347: TLabel
          Left = 200
          Top = 178
          Width = 45
          Height = 13
          Caption = 'Diminu'#237'da'
        end
        object Label348: TLabel
          Left = 16
          Top = 236
          Width = 59
          Height = 13
          Caption = 'Edema MMII'
        end
        object Label349: TLabel
          Left = 16
          Top = 263
          Width = 78
          Height = 13
          Caption = #218'lceras Venosas'
        end
        object Label350: TLabel
          Left = 16
          Top = 291
          Width = 78
          Height = 13
          Caption = #218'lceras Arteriais'
        end
        object Label351: TLabel
          Left = 203
          Top = 5
          Width = 119
          Height = 18
          Caption = 'EXTREMIDADES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtEdema: TEdit
          Left = 128
          Top = 28
          Width = 305
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'EDTEDEMA'
        end
        object edtLesoes: TEdit
          Left = 128
          Top = 55
          Width = 305
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTLESOES'
        end
        object edtDeformidades: TEdit
          Left = 128
          Top = 82
          Width = 305
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          Text = 'EDTDEFORMIDADES'
        end
        object CbxSinaisInfeccaoFungos: TComboBox
          Left = 128
          Top = 124
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxBaqueteamentoDedos: TComboBox
          Left = 279
          Top = 124
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtPresCatetVenosas: TEdit
          Left = 129
          Top = 151
          Width = 144
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
          Text = 'EDTPRESCATETVENOSAS'
        end
        object edtDesde: TEdit
          Left = 315
          Top = 151
          Width = 118
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 6
          Text = 'EDTDESDE'
        end
        object CbxPerfusaoNormal: TComboBox
          Left = 129
          Top = 197
          Width = 65
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 7
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object CbxPerfusaoDiminuida: TComboBox
          Left = 200
          Top = 197
          Width = 65
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 8
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object edtLocalPerfusaoDiminuida: TEdit
          Left = 280
          Top = 197
          Width = 153
          Height = 21
          TabOrder = 9
          Text = 'edtLocalPerfusaoDiminuida'
        end
        object edtEdemaMMII: TEdit
          Left = 128
          Top = 230
          Width = 305
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 10
          Text = 'EDTEDEMAMMII'
        end
        object edtUlcerasVenosas: TEdit
          Left = 128
          Top = 257
          Width = 305
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 11
          Text = 'EDTULCERASVENOSAS'
        end
        object edtUlcerasArteriais: TEdit
          Left = 128
          Top = 284
          Width = 305
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 12
          Text = 'EDTULCERASARTERIAIS'
        end
      end
    end
    object TbShDiagnosticos: TTabSheet
      Caption = '7 - Diagn'#243'sticos / Riscos'
      ImageIndex = 8
      object Label352: TLabel
        Left = 24
        Top = 80
        Width = 133
        Height = 13
        Caption = 'Diagn'#243'stico de Enfermagem'
      end
      object Bevel5: TBevel
        Left = 525
        Top = 3
        Width = 5
        Height = 557
      end
      object Label353: TLabel
        Left = 128
        Top = 24
        Width = 255
        Height = 18
        Caption = 'DIAGN'#211'STICOS DE ENFERMAGEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label354: TLabel
        Left = 800
        Top = 24
        Width = 266
        Height = 18
        Caption = 'RISCO PARA '#218'LCERA DE DEC'#218'BITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label355: TLabel
        Left = 552
        Top = 80
        Width = 96
        Height = 13
        Caption = 'Percep'#231#227'o Sensorial'
      end
      object Label356: TLabel
        Left = 703
        Top = 80
        Width = 41
        Height = 13
        Caption = 'Umidade'
      end
      object Label357: TLabel
        Left = 854
        Top = 80
        Width = 45
        Height = 13
        Caption = 'Atividade'
      end
      object Label358: TLabel
        Left = 1005
        Top = 80
        Width = 50
        Height = 13
        Caption = 'Mobilidade'
      end
      object Label359: TLabel
        Left = 1156
        Top = 80
        Width = 40
        Height = 13
        Caption = 'Nutri'#231#227'o'
      end
      object Label360: TLabel
        Left = 552
        Top = 134
        Width = 116
        Height = 13
        Caption = 'Fric'#231#227'o ou Cisalhamento'
      end
      object Label361: TLabel
        Left = 560
        Top = 236
        Width = 106
        Height = 14
        Caption = 'Escala de Braden:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblEscalaBraden: TLabel
        Left = 672
        Top = 236
        Width = 209
        Height = 14
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label363: TLabel
        Left = 560
        Top = 200
        Width = 73
        Height = 14
        Caption = 'Valor Score:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblValorScore: TLabel
        Left = 672
        Top = 200
        Width = 105
        Height = 14
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel6: TBevel
        Left = 536
        Top = 271
        Width = 777
        Height = 5
      end
      object Label362: TLabel
        Left = 868
        Top = 282
        Width = 131
        Height = 18
        Caption = 'RISCO DE QUEDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label364: TLabel
        Left = 552
        Top = 320
        Width = 114
        Height = 13
        Caption = 'Idade Maior de 65 Anos'
      end
      object Label365: TLabel
        Left = 680
        Top = 320
        Width = 119
        Height = 13
        Caption = 'Urg'#234'ncia Urin'#225'ria e Fecal'
      end
      object Label366: TLabel
        Left = 832
        Top = 320
        Width = 150
        Height = 13
        Caption = 'D'#233'ficit Auditivo/Visual/Sensorial'
      end
      object Label367: TLabel
        Left = 994
        Top = 320
        Width = 168
        Height = 13
        Caption = 'Uso de Sedativos ou P'#243's Sedativos'
      end
      object Label368: TLabel
        Left = 552
        Top = 368
        Width = 105
        Height = 13
        Caption = 'Dificuldade de Marcha'
      end
      object Label369: TLabel
        Left = 552
        Top = 416
        Width = 160
        Height = 13
        Caption = 'Hist'#243'rico de Queda no '#218'ltimo Ano'
      end
      object Label370: TLabel
        Left = 680
        Top = 368
        Width = 142
        Height = 13
        Caption = 'Disturbios de Comportamento'
      end
      object Label371: TLabel
        Left = 832
        Top = 368
        Width = 138
        Height = 13
        Caption = 'Mobilidade F'#237'sica Prejudicada'
      end
      object Label372: TLabel
        Left = 994
        Top = 368
        Width = 96
        Height = 13
        Caption = 'Hipotens'#227'o Postural'
      end
      object Label373: TLabel
        Left = 729
        Top = 416
        Width = 94
        Height = 13
        Caption = 'Hip'#243'xia / Hipoxemia'
      end
      object Label374: TLabel
        Left = 552
        Top = 472
        Width = 104
        Height = 16
        Caption = 'Risco de Queda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblRiscoQueda: TLabel
        Left = 672
        Top = 472
        Width = 305
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtDiagnosticoEnfermagem: TEdit
        Left = 24
        Top = 99
        Width = 401
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        Text = 'EDTDIAGNOSTICOENFERMAGEM'
        OnKeyDown = edtDiagnosticoEnfermagemKeyDown
        OnKeyUp = edtDiagnosticoEnfermagemKeyUp
      end
      object BtnAdicionarDiagnosticoEnfermagem: TBitBtn
        Left = 431
        Top = 97
        Width = 75
        Height = 25
        Caption = 'ADICIONAR'
        TabOrder = 1
        OnClick = BtnAdicionarDiagnosticoEnfermagemClick
      end
      object BtnRemoverDiagnosticoEnfermagem: TBitBtn
        Left = 431
        Top = 296
        Width = 75
        Height = 25
        Caption = 'REMOVER'
        TabOrder = 2
        OnClick = BtnRemoverDiagnosticoEnfermagemClick
      end
      object GrdDiagnosticoEnfermagem: TDBGrid
        Left = 24
        Top = 126
        Width = 401
        Height = 195
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = GrdDiagnosticoEnfermagemDblClick
        OnExit = GrdDiagnosticoEnfermagemExit
        OnKeyDown = GrdDiagnosticoEnfermagemKeyDown
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
            Width = 300
            Visible = True
          end>
      end
      object GrdDiagnosticosEnfermagem_HE: TDBGrid
        Left = 24
        Top = 134
        Width = 401
        Height = 187
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'DIAGNOSTICO'
            Title.Alignment = taCenter
            Title.Caption = 'Diagn'#243'stico Enfermagem'
            Width = 358
            Visible = True
          end>
      end
      object CbxPercepcaoSensorial: TComboBox
        Left = 552
        Top = 99
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 5
        OnSelect = CbxPercepcaoSensorialSelect
        Items.Strings = (
          ''
          '1 - Totalmente Limitado'
          '2 - Muito Limitado'
          '3 - Levemente Limitado'
          '4 - Nenhuma Limita'#231#227'o')
      end
      object CbxUmidade: TComboBox
        Left = 703
        Top = 99
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 6
        OnSelect = CbxUmidadeSelect
        Items.Strings = (
          ''
          '1 - Completamente Molhada'
          '2 - Muito Molhada'
          '3 - Ocasionalmente Molhada'
          '4 - Raramente Molhada')
      end
      object CbxAtividade: TComboBox
        Left = 854
        Top = 99
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 7
        OnSelect = CbxAtividadeSelect
        Items.Strings = (
          ''
          '1 - Acamado'
          '2 - Confinado a Cadeira'
          '3 - Anda Ocasionalmente'
          '4 - Anda Frequentemente')
      end
      object CbxMobilidade: TComboBox
        Left = 1005
        Top = 99
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 8
        OnSelect = CbxMobilidadeSelect
        Items.Strings = (
          ''
          '1 - Totalmente Im'#243'vel'
          '2 - Bastante Limitado'
          '3 - Levemente Limitado'
          '4 - Anda Frequentemente')
      end
      object CbxNutricao: TComboBox
        Left = 1156
        Top = 99
        Width = 157
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 9
        OnSelect = CbxNutricaoSelect
        Items.Strings = (
          ''
          '1 - Muito Pobre'
          '2 - Provavelmente Inadequeada'
          '3 - Adequada'
          '4 - Excelente')
      end
      object CbxFriccaoCisalhamento: TComboBox
        Left = 552
        Top = 153
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 10
        OnSelect = CbxFriccaoCisalhamentoSelect
        Items.Strings = (
          ''
          '1 - Problema'
          '2 - Potencial'
          '3 - Nenhum Problema')
      end
      object CbxMaior65: TComboBox
        Left = 552
        Top = 336
        Width = 122
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 11
        OnSelect = CbxMaior65Select
        Items.Strings = (
          ''
          'N'#195'O'
          'SIM')
      end
      object CbxUrgenciaUrinariaFecal: TComboBox
        Left = 680
        Top = 336
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 12
        OnSelect = CbxUrgenciaUrinariaFecalSelect
        Items.Strings = (
          ''
          'N'#195'O'
          'SIM')
      end
      object CbxDeficitAuditivo: TComboBox
        Left = 832
        Top = 336
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 13
        OnSelect = CbxDeficitAuditivoSelect
        Items.Strings = (
          ''
          'N'#195'O'
          'SIM')
      end
      object CbxUsoSedativos: TComboBox
        Left = 994
        Top = 336
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 14
        OnSelect = CbxUsoSedativosSelect
        Items.Strings = (
          ''
          'N'#195'O'
          'SIM')
      end
      object CbxHipotensaoPostural: TComboBox
        Left = 994
        Top = 384
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 15
        OnSelect = CbxHipotensaoPosturalSelect
        Items.Strings = (
          ''
          'N'#195'O'
          'SIM')
      end
      object CbxMobilidadeFisica: TComboBox
        Left = 832
        Top = 384
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 16
        OnSelect = CbxMobilidadeFisicaSelect
        Items.Strings = (
          ''
          'N'#195'O'
          'SIM')
      end
      object CbxDisturbiosComportamento: TComboBox
        Left = 680
        Top = 384
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 17
        OnSelect = CbxDisturbiosComportamentoSelect
        Items.Strings = (
          ''
          'N'#195'O'
          'SIM')
      end
      object CbxDificuldadaMarcha: TComboBox
        Left = 552
        Top = 384
        Width = 122
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 18
        OnSelect = CbxDificuldadaMarchaSelect
        Items.Strings = (
          ''
          'N'#195'O'
          'SIM')
      end
      object CbxHistoricoQuedaUltimoAno: TComboBox
        Left = 552
        Top = 432
        Width = 160
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 19
        OnSelect = CbxHistoricoQuedaUltimoAnoSelect
        Items.Strings = (
          ''
          'N'#195'O'
          'SIM')
      end
      object CbxHipoxia: TComboBox
        Left = 728
        Top = 432
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 20
        OnSelect = CbxHipoxiaSelect
        Items.Strings = (
          ''
          'N'#195'O'
          'SIM')
      end
    end
    object TbShPrescricoes: TTabSheet
      Caption = '8 - Prescri'#231#245'es'
      ImageIndex = 9
      object Label375: TLabel
        Left = 136
        Top = 16
        Width = 243
        Height = 18
        Caption = 'PRESCRI'#199#213'ES DE ENFERMAGEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label377: TLabel
        Left = 16
        Top = 56
        Width = 127
        Height = 13
        Caption = 'Prescri'#231#227'o de Enfermagem'
      end
      object Label378: TLabel
        Left = 16
        Top = 100
        Width = 221
        Height = 13
        Caption = 'Descri'#231#227'o Adicional Prescri'#231#227'o de Enfermagem'
      end
      object Label379: TLabel
        Left = 279
        Top = 100
        Width = 53
        Height = 13
        Caption = 'Frequ'#234'ncia'
      end
      object Label380: TLabel
        Left = 338
        Top = 120
        Width = 31
        Height = 13
        Caption = 'Ao Dia'
      end
      object edtPrescricaoEnfermagem: TEdit
        Left = 16
        Top = 72
        Width = 363
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        Text = 'EDTPRESCRICAOENFERMAGEM'
        OnKeyDown = edtPrescricaoEnfermagemKeyDown
        OnKeyUp = edtPrescricaoEnfermagemKeyUp
      end
      object GrdPrescricoesEnfermagem: TDBGrid
        Left = 16
        Top = 142
        Width = 363
        Height = 147
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = GrdPrescricoesEnfermagemDblClick
        OnKeyDown = GrdPrescricoesEnfermagemKeyDown
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Id'
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 277
            Visible = True
          end>
      end
      object GrdPrescricoesHE: TDBGrid
        Left = 16
        Top = 152
        Width = 599
        Height = 145
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'PRESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Prescri'#231#227'o'
            Width = 319
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o Adicional'
            Width = 249
            Visible = True
          end>
      end
      object BtnAdicionarPrescricao: TBitBtn
        Left = 385
        Top = 113
        Width = 75
        Height = 25
        Caption = 'INCLUIR'
        TabOrder = 3
        OnClick = BtnAdicionarPrescricaoClick
      end
      object BtnRemoverPrescricao: TBitBtn
        Left = 621
        Top = 272
        Width = 75
        Height = 25
        Caption = 'REMOVER'
        TabOrder = 6
        OnClick = BtnRemoverPrescricaoClick
      end
      object edtDescricaoAdicionalPrescricao: TEdit
        Left = 16
        Top = 115
        Width = 257
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        Text = 'EDTDESCRICAOADICIONALPRESCRICAO'
      end
      object CbxFrequenciaPrescricao: TComboBox
        Left = 279
        Top = 115
        Width = 53
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 2
        Items.Strings = (
          ''
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
      end
    end
  end
  object PnBotoes: TPanel
    Left = 0
    Top = 656
    Width = 1324
    Height = 53
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 1
    object BtnVoltar: TBitBtn
      Left = 536
      Top = 8
      Width = 121
      Height = 33
      Caption = '<-- VOLTAR'
      TabOrder = 1
    end
    object BtnProximo: TBitBtn
      Left = 663
      Top = 8
      Width = 121
      Height = 33
      Caption = 'PR'#211'XIMO -->'
      TabOrder = 0
      OnClick = BtnProximoClick
    end
    object BtnSair: TBitBtn
      Left = 1195
      Top = 8
      Width = 97
      Height = 33
      Caption = 'ESC - SAIR'
      TabOrder = 2
      OnClick = BtnSairClick
    end
  end
end