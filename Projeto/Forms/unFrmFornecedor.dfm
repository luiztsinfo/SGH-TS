inherited frmFornecedores: TfrmFornecedores
  Caption = '::. FORNECEDORES .::'
  ClientHeight = 311
  OnCreate = FormCreate
  ExplicitHeight = 340
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Height = 256
    ExplicitHeight = 256
    inherited TbShConsulta: TTabSheet
      ExplicitHeight = 228
      inherited PnDados: TPanel
        Height = 161
        ExplicitHeight = 161
        inherited GrdDados: TDBGrid
          Height = 155
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
              FieldName = 'RAZAOSOCIAL'
              Title.Alignment = taCenter
              Title.Caption = 'Raz'#227'o Social'
              Width = 510
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        inherited CbxConsulta: TComboBox
          ItemIndex = 1
          Text = 'RAZAOSOCIAL'
          Items.Strings = (
            'ID'
            'RAZAOSOCIAL')
        end
        inherited CbxOrdenarPor: TComboBox
          ItemIndex = 1
          Text = 'RAZAOSOCIAL'
          Items.Strings = (
            'ID'
            'RAZAOSOCIAL')
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      OnShow = TbShCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 814
      ExplicitHeight = 228
      inherited PnCampos: TPanel
        Height = 228
        ExplicitHeight = 228
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 16
          Top = 60
          Width = 60
          Height = 13
          Caption = 'Raz'#227'o Social'
        end
        object edtID: TEdit
          Left = 16
          Top = 33
          Width = 74
          Height = 21
          CharCase = ecUpperCase
          NumbersOnly = True
          TabOrder = 0
          Text = 'EDTID'
        end
        object edtRazaoSocial: TEdit
          Left = 16
          Top = 77
          Width = 345
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTRAZAOSOCIAL'
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 256
    ExplicitTop = 256
  end
end
