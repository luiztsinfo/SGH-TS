inherited frmTabelasPrecoProcedimentos: TfrmTabelasPrecoProcedimentos
  Caption = '::. TABELAS DE PRE'#199'O PARA PROCEDIMENTOS .::'
  ClientHeight = 304
  OnCreate = FormCreate
  ExplicitHeight = 333
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Height = 249
    ExplicitHeight = 249
    inherited TbShConsulta: TTabSheet
      ExplicitHeight = 221
      inherited PnDados: TPanel
        Height = 154
        ExplicitHeight = 154
        inherited GrdDados: TDBGrid
          Height = 148
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
              Width = 346
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VIGENCIA_GERAL'
              Title.Alignment = taCenter
              Title.Caption = 'Vig'#234'ncia'
              Width = 91
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
      ExplicitHeight = 221
      inherited PnCampos: TPanel
        Height = 221
        ExplicitHeight = 221
        object Label1: TLabel
          Left = 24
          Top = 24
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 24
          Top = 67
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label3: TLabel
          Left = 24
          Top = 107
          Width = 80
          Height = 13
          Caption = 'Data de Vig'#234'ncia'
        end
        object edtID: TEdit
          Left = 24
          Top = 40
          Width = 66
          Height = 21
          Enabled = False
          NumbersOnly = True
          TabOrder = 0
          Text = 'edtID'
        end
        object edtDescricao: TEdit
          Left = 24
          Top = 80
          Width = 305
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTDESCRICAO'
        end
        object mskDataVigencia: TMaskEdit
          Left = 24
          Top = 123
          Width = 80
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
    Top = 249
    ExplicitTop = 249
  end
end