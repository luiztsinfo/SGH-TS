inherited frmProcedimentos: TfrmProcedimentos
  Caption = '::. PROCEDIMENTOS ,::'
  ClientHeight = 332
  ClientWidth = 737
  OnCreate = FormCreate
  ExplicitWidth = 743
  ExplicitHeight = 361
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 737
    Height = 277
    ExplicitHeight = 277
    inherited TbShConsulta: TTabSheet
      ExplicitHeight = 249
      inherited PnDados: TPanel
        Width = 729
        Height = 182
        ExplicitHeight = 182
        inherited GrdDados: TDBGrid
          Width = 723
          Height = 176
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 301
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VALOR_PADRAO_OPERACIONAL'
              Title.Alignment = taCenter
              Title.Caption = 'Operacional'
              Width = 74
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VALOR_PADRAO_HONORARIOS_MEDICOS'
              Title.Alignment = taCenter
              Title.Caption = 'Honor'#225'rios M'#233'dicos'
              Width = 126
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VALOR_PADRAO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Total'
              Width = 104
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        Width = 729
        inherited CbxConsulta: TComboBox
          ItemIndex = 0
          Text = 'DESCRICAO'
          Items.Strings = (
            'DESCRICAO'
            'COD_AMB_CHPM'
            'COD_TUSS')
        end
        inherited CbxOrdenarPor: TComboBox
          ItemIndex = 0
          Text = 'DESCRICAO'
          Items.Strings = (
            'DESCRICAO'
            'COD_AMB_CHPM'
            'COD_TUSS')
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 639
      ExplicitHeight = 249
      inherited PnCampos: TPanel
        Width = 729
        Height = 249
        ExplicitHeight = 249
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 16
          Top = 59
          Width = 89
          Height = 13
          Caption = 'C'#243'digo AMB/CHPM'
        end
        object Label3: TLabel
          Left = 87
          Top = 16
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label5: TLabel
          Left = 123
          Top = 59
          Width = 61
          Height = 13
          Caption = 'C'#243'digo TUSS'
        end
        object Label6: TLabel
          Left = 16
          Top = 106
          Width = 84
          Height = 13
          Caption = 'Valor Operacional'
        end
        object Label7: TLabel
          Left = 123
          Top = 106
          Width = 87
          Height = 13
          Caption = 'Hoor'#225'rios M'#233'dicos'
        end
        object Label8: TLabel
          Left = 232
          Top = 106
          Width = 119
          Height = 13
          Caption = 'Valor Total Procedimento'
        end
        object edtID: TEdit
          Left = 16
          Top = 32
          Width = 65
          Height = 21
          Enabled = False
          TabOrder = 0
          Text = 'edtID'
        end
        object edtDescricao: TEdit
          Left = 87
          Top = 32
          Width = 442
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTDESCRICAO'
        end
        object edtCodAMBCHPM: TEdit
          Left = 16
          Top = 75
          Width = 89
          Height = 21
          NumbersOnly = True
          TabOrder = 2
          Text = 'edtCodAMBCHPM'
        end
        object edtTUSS: TEdit
          Left = 123
          Top = 75
          Width = 89
          Height = 21
          NumbersOnly = True
          TabOrder = 3
          Text = 'edtTUSS'
        end
        object edtOperacional: TEdit
          Left = 16
          Top = 121
          Width = 89
          Height = 21
          TabOrder = 4
          Text = 'edtOperacional'
          OnExit = edtOperacionalExit
        end
        object edtValorTotal: TEdit
          Left = 232
          Top = 121
          Width = 89
          Height = 21
          TabOrder = 6
          Text = 'edtValorTotal'
          OnEnter = edtValorTotalEnter
          OnExit = edtValorTotalExit
        end
        object edtHonorariosMedicos: TEdit
          Left = 123
          Top = 121
          Width = 89
          Height = 21
          TabOrder = 5
          Text = 'edtHonorariosMedicos'
          OnExit = edtHonorariosMedicosExit
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 277
    Width = 737
    ExplicitTop = 277
  end
end
