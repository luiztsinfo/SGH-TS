inherited frmPrescricaoEnfermagem: TfrmPrescricaoEnfermagem
  Caption = 'PRESCRI'#199#213'ES DE ENFERMAGEM'
  ClientWidth = 684
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 690
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 684
    ExplicitWidth = 684
    inherited TbShConsulta: TTabSheet
      ExplicitWidth = 676
      inherited PnDados: TPanel
        Width = 676
        ExplicitWidth = 676
        inherited GrdDados: TDBGrid
          Width = 670
          Columns = <
            item
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
              Width = 515
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        Width = 676
        ExplicitWidth = 676
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
          Left = 549
          Top = 13
          ExplicitLeft = 549
          ExplicitTop = 13
        end
        inherited CbxOrdenarPor: TComboBox
          Left = 111
          Width = 106
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO')
          ExplicitLeft = 111
          ExplicitWidth = 106
        end
        inherited GrpBxDadoConsulta: TGroupBox
          Left = 223
          Top = 6
          Width = 320
          ExplicitLeft = 223
          ExplicitTop = 6
          ExplicitWidth = 320
          inherited edtConsulta: TEdit
            Top = 20
            Width = 300
            ExplicitTop = 20
            ExplicitWidth = 300
          end
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      OnShow = TbShCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 676
      ExplicitHeight = 318
      inherited PnCampos: TPanel
        Width = 676
        ExplicitWidth = 676
        object Label1: TLabel
          Left = 16
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
        object edtID: TEdit
          Left = 16
          Top = 35
          Width = 74
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 0
          Text = 'EDTID'
        end
        object edtDescricao: TEdit
          Left = 96
          Top = 35
          Width = 353
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTDESCRICAO'
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Width = 684
    ExplicitWidth = 684
    inherited BtnNovo: TBitBtn
      Top = 7
      ExplicitTop = 7
    end
    inherited BtnAlterar: TBitBtn
      Top = 7
      ExplicitTop = 7
    end
    inherited BtnInativar: TBitBtn
      Top = 7
      ExplicitTop = 7
    end
    inherited BtnRelatorios: TBitBtn
      Left = 296
      Top = 7
      ExplicitLeft = 296
      ExplicitTop = 7
    end
    inherited BtnSair: TBitBtn
      Left = 440
      Top = 7
      ExplicitLeft = 440
      ExplicitTop = 7
    end
    inherited BtnSalvar: TBitBtn
      Left = 236
      Top = 6
      ExplicitLeft = 236
      ExplicitTop = 6
    end
    inherited BtnCancelar: TBitBtn
      Left = 340
      Top = 7
      ExplicitLeft = 340
      ExplicitTop = 7
    end
  end
end
