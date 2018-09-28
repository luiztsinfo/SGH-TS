inherited frmGruposMatMed: TfrmGruposMatMed
  Caption = '::. GRUPOS MATMED .::'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    inherited TbShConsulta: TTabSheet
      inherited PnDados: TPanel
        inherited GrdDados: TDBGrid
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
              Width = 400
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
      ExplicitWidth = 639
      ExplicitHeight = 287
      inherited PnCampos: TPanel
        object Label1: TLabel
          Left = 24
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 96
          Top = 16
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object edtDescricao: TEdit
          Left = 96
          Top = 35
          Width = 326
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'EDTDESCRICAO'
        end
        object edtID: TEdit
          Left = 21
          Top = 35
          Width = 69
          Height = 21
          Enabled = False
          NumbersOnly = True
          TabOrder = 1
          Text = 'edtID'
        end
      end
    end
  end
end
