inherited frmUnidades_MatMed: TfrmUnidades_MatMed
  Caption = '::. UNIDADES DE MEDIDA PARA MATMED .::'
  ClientHeight = 316
  OnCreate = FormCreate
  ExplicitHeight = 345
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Height = 261
    inherited TbShConsulta: TTabSheet
      inherited PnDados: TPanel
        Height = 166
        inherited GrdDados: TDBGrid
          Height = 160
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
              Width = 331
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ABREVIACAO'
              Title.Alignment = taCenter
              Title.Caption = 'Abrevia'#231#227'o'
              Width = 82
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
            'DESCRICAO'
            'ABREVIACAO')
        end
        inherited CbxOrdenarPor: TComboBox
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO'
            'ABREVIACAO')
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      ExplicitWidth = 639
      ExplicitHeight = 287
      inherited PnCampos: TPanel
        Height = 233
        object Label3: TLabel
          Left = 343
          Top = 16
          Width = 54
          Height = 13
          Caption = 'Abrevia'#231#227'o'
        end
        object Label2: TLabel
          Left = 80
          Top = 16
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object edtDescricao: TEdit
          Left = 80
          Top = 35
          Width = 257
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'EDTDESCRICAO'
        end
        object edtID: TEdit
          Left = 16
          Top = 35
          Width = 58
          Height = 21
          Enabled = False
          NumbersOnly = True
          TabOrder = 1
          Text = 'edtID'
        end
        object edtAbreviacao: TEdit
          Left = 343
          Top = 35
          Width = 54
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          Text = 'EDTABREVIACAO'
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 261
  end
end
