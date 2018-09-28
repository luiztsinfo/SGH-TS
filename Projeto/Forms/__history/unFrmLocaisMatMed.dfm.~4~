inherited frmLocaisMatMed: TfrmLocaisMatMed
  Caption = '::. LOCAIS DOS MATERIAIS/MEDICAMENTOS .::'
  ClientHeight = 325
  OnCreate = FormCreate
  ExplicitHeight = 354
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Height = 270
    inherited TbShConsulta: TTabSheet
      inherited PnDados: TPanel
        Height = 175
        inherited GrdDados: TDBGrid
          Height = 169
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
              Width = 398
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
        Height = 242
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 80
          Top = 8
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object edtDescricao: TEdit
          Left = 80
          Top = 24
          Width = 329
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'EDTDESCRICAO'
        end
        object edtID: TEdit
          Left = 16
          Top = 24
          Width = 58
          Height = 21
          Enabled = False
          NumbersOnly = True
          TabOrder = 1
          Text = 'edtID'
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 270
  end
end
