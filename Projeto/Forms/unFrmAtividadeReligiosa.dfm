inherited frmAtividadeReligiosa: TfrmAtividadeReligiosa
  Caption = 'ATIVIDADES RELIGIOSAS'
  ClientHeight = 293
  ClientWidth = 589
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 595
  ExplicitHeight = 322
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 589
    Height = 238
    inherited TbShConsulta: TTabSheet
      inherited PnDados: TPanel
        Width = 581
        Height = 143
        inherited GrdDados: TDBGrid
          Width = 575
          Height = 137
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Title.Caption = 'Id'
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
        Width = 581
        inherited Label4: TLabel
          Left = 111
          ExplicitLeft = 111
        end
        inherited CbxConsulta: TComboBox
          Width = 97
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO')
          ExplicitWidth = 97
        end
        inherited BtnConsultar: TBitBtn
          Left = 470
          Top = 21
          Width = 98
          ExplicitLeft = 470
          ExplicitTop = 21
          ExplicitWidth = 98
        end
        inherited CbxOrdenarPor: TComboBox
          Left = 111
          Width = 94
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO')
          ExplicitLeft = 111
          ExplicitWidth = 94
        end
        inherited GrpBxDadoConsulta: TGroupBox
          Left = 215
          Width = 259
          ExplicitLeft = 215
          ExplicitWidth = 259
          inherited edtConsulta: TEdit
            Width = 241
            ExplicitWidth = 241
          end
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      OnShow = TbShCadastroShow
      inherited PnCampos: TPanel
        Width = 581
        Height = 210
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 10
          Height = 13
          Caption = 'Id'
        end
        object Label2: TLabel
          Left = 79
          Top = 16
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object edtId: TEdit
          Left = 16
          Top = 35
          Width = 57
          Height = 21
          Enabled = False
          TabOrder = 0
          Text = 'edtId'
        end
        object edtDescricao: TEdit
          Left = 79
          Top = 35
          Width = 274
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTDESCRICAO'
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 238
    Width = 589
    inherited BtnRelatorios: TBitBtn
      Left = 320
      ExplicitLeft = 320
    end
    inherited BtnSair: TBitBtn
      Left = 464
      ExplicitLeft = 464
    end
    inherited BtnSalvar: TBitBtn
      Left = 188
      Top = 6
      ExplicitLeft = 188
      ExplicitTop = 6
    end
    inherited BtnCancelar: TBitBtn
      Left = 292
      Top = 7
      ExplicitLeft = 292
      ExplicitTop = 7
    end
  end
end
