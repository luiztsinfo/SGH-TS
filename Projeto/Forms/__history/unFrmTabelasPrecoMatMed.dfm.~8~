inherited frmTabelasMatMed: TfrmTabelasMatMed
  Caption = '::. Tabelas de Pre'#231'os - MatMed ..::'
  ClientHeight = 322
  OnCreate = FormCreate
  ExplicitHeight = 351
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Height = 267
    ExplicitHeight = 267
    inherited TbShConsulta: TTabSheet
      ExplicitHeight = 239
      inherited PnDados: TPanel
        Height = 172
        ExplicitHeight = 172
        inherited GrdDados: TDBGrid
          Height = 166
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
      ExplicitWidth = 639
      ExplicitHeight = 239
      inherited PnCampos: TPanel
        Height = 239
        ExplicitHeight = 239
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
    Top = 267
    ExplicitTop = 267
  end
end
