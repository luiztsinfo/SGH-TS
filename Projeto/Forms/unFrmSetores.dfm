inherited frmSetores: TfrmSetores
  Caption = '::. SETORES DO HOSPITAL .::'
  ClientHeight = 300
  OnCreate = FormCreate
  ExplicitHeight = 329
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Height = 245
    ExplicitHeight = 245
    inherited TbShConsulta: TTabSheet
      ExplicitHeight = 217
      inherited PnDados: TPanel
        Height = 150
        ExplicitHeight = 150
        inherited GrdDados: TDBGrid
          Height = 144
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
              Width = 335
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
      ExplicitHeight = 217
      inherited PnCampos: TPanel
        Height = 217
        ExplicitHeight = 217
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 16
          Top = 64
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object edtID: TEdit
          Left = 16
          Top = 32
          Width = 74
          Height = 21
          Enabled = False
          NumbersOnly = True
          TabOrder = 0
          Text = 'edtID'
        end
        object edtDescricao: TEdit
          Left = 16
          Top = 80
          Width = 297
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTDESCRICAO'
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 245
    ExplicitTop = 245
  end
end
