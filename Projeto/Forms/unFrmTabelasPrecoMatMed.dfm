inherited frmTabelasMatMed: TfrmTabelasMatMed
  Caption = '::. Tabelas de Pre'#231'os - MatMed ..::'
  ClientHeight = 391
  ClientWidth = 791
  OnCreate = FormCreate
  ExplicitWidth = 797
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 791
    Height = 336
    ExplicitWidth = 791
    ExplicitHeight = 423
    inherited TbShConsulta: TTabSheet
      ExplicitWidth = 783
      ExplicitHeight = 395
      inherited PnDados: TPanel
        Width = 783
        Height = 241
        ExplicitWidth = 783
        ExplicitHeight = 328
        inherited GrdDados: TDBGrid
          Width = 777
          Height = 235
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
              Width = 345
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VIGENCIA_GERAL'
              Title.Alignment = taCenter
              Title.Caption = 'Vig'#234'ncia'
              Width = 87
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        Width = 783
        ExplicitWidth = 783
        inherited CbxConsulta: TComboBox
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO')
        end
        inherited CbxOrdenarPor: TComboBox
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO')
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      OnShow = TbShCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 783
      ExplicitHeight = 395
      inherited PnCampos: TPanel
        Width = 783
        Height = 308
        ExplicitWidth = 783
        ExplicitHeight = 395
        object Label1: TLabel
          Left = 16
          Top = 15
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 16
          Top = 56
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label3: TLabel
          Left = 16
          Top = 94
          Width = 65
          Height = 13
          Caption = 'Data Vig'#234'ncia'
        end
        object edtID: TEdit
          Left = 16
          Top = 31
          Width = 74
          Height = 21
          Enabled = False
          NumbersOnly = True
          TabOrder = 0
          Text = 'edtID'
        end
        object edtDescricao: TEdit
          Left = 16
          Top = 71
          Width = 313
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object mskDataVigencia: TMaskEdit
          Left = 16
          Top = 108
          Width = 74
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 2
          Text = '  /  /    '
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 336
    Width = 791
    ExplicitTop = 423
    ExplicitWidth = 791
    inherited BtnNovo: TBitBtn
      Top = 7
      ExplicitTop = 7
    end
    inherited BtnAlterar: TBitBtn
      Top = 7
      ExplicitTop = 7
    end
    inherited BtnInativar: TBitBtn
      Top = 7
      ExplicitTop = 7
    end
    inherited BtnRelatorios: TBitBtn
      Left = 519
      Top = 7
      ExplicitLeft = 519
      ExplicitTop = 7
    end
    inherited BtnSair: TBitBtn
      Left = 663
      Top = 7
      ExplicitLeft = 663
      ExplicitTop = 7
    end
    inherited BtnSalvar: TBitBtn
      Left = 289
      Top = 7
      ExplicitLeft = 289
      ExplicitTop = 7
    end
    inherited BtnCancelar: TBitBtn
      Left = 393
      Top = 7
      ExplicitLeft = 393
      ExplicitTop = 7
    end
    object BtnItensTabela: TBitBtn
      Left = 312
      Top = 7
      Width = 100
      Height = 38
      Caption = 'I&tens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BtnItensTabelaClick
    end
  end
end
