inherited frmCidades: TfrmCidades
  Caption = '::. CIDADES .::'
  ClientHeight = 324
  OnCreate = FormCreate
  ExplicitHeight = 353
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Height = 269
    inherited TbShConsulta: TTabSheet
      inherited PnDados: TPanel
        Height = 174
        inherited GrdDados: TDBGrid
          Height = 168
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
              FieldName = 'Nome'
              Title.Alignment = taCenter
              Width = 259
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UF'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CEP'
              Title.Alignment = taCenter
              Width = 103
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        inherited CbxConsulta: TComboBox
          ItemIndex = 1
          Text = 'NOME'
          Items.Strings = (
            'ID'
            'NOME'
            'CEP')
        end
        inherited CbxOrdenarPor: TComboBox
          ItemIndex = 1
          Text = 'NOME'
          Items.Strings = (
            'ID'
            'NOME'
            'CEP')
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      ExplicitWidth = 639
      ExplicitHeight = 287
      inherited PnCampos: TPanel
        Height = 241
        ExplicitLeft = -112
        ExplicitTop = 56
        ExplicitHeight = 241
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 87
          Top = 16
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object Label3: TLabel
          Left = 351
          Top = 16
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object Label5: TLabel
          Left = 16
          Top = 72
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object Label6: TLabel
          Left = 87
          Top = 72
          Width = 49
          Height = 13
          Caption = 'C'#243'd. IBGE'
        end
        object Label7: TLabel
          Left = 200
          Top = 72
          Width = 48
          Height = 13
          Caption = 'CEP '#218'nico'
        end
        object edtID: TEdit
          Left = 16
          Top = 35
          Width = 65
          Height = 21
          Enabled = False
          NumbersOnly = True
          TabOrder = 0
          Text = 'edtID'
        end
        object edtNome: TEdit
          Left = 87
          Top = 35
          Width = 258
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTNOME'
        end
        object edtCodIBGE: TEdit
          Left = 87
          Top = 88
          Width = 107
          Height = 21
          NumbersOnly = True
          TabOrder = 4
          Text = 'edtCodIBGE'
        end
        object CbxUF: TComboBox
          Left = 351
          Top = 35
          Width = 64
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Text = 'SC'
          Items.Strings = (
            'SC'
            'SP'
            'PR'
            'RS'
            'RJ')
        end
        object CbxCEPUnico: TComboBox
          Left = 200
          Top = 88
          Width = 49
          Height = 21
          Style = csDropDownList
          ItemIndex = 2
          TabOrder = 5
          Text = 'SIM'
          Items.Strings = (
            ''
            'N'#195'O'
            'SIM')
        end
        object mskCEP: TMaskEdit
          Left = 16
          Top = 88
          Width = 65
          Height = 21
          EditMask = '99.999-999;1;_'
          MaxLength = 10
          TabOrder = 3
          Text = '  .   -   '
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 269
  end
end
