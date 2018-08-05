inherited frmDiagnosticoEnfermagem: TfrmDiagnosticoEnfermagem
  Caption = 'DIAGN'#211'STICO DE ENFERMAGEM'
  ClientHeight = 310
  ClientWidth = 656
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 662
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 656
    Height = 255
    inherited TbShConsulta: TTabSheet
      inherited PnDados: TPanel
        Width = 648
        Height = 160
        inherited GrdDados: TDBGrid
          Width = 642
          Height = 154
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
              Width = 371
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        Width = 648
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
          Left = 527
          Top = 13
          ExplicitLeft = 527
          ExplicitTop = 13
        end
        inherited CbxOrdenarPor: TComboBox
          Left = 111
          Width = 102
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO')
          ExplicitLeft = 111
          ExplicitWidth = 102
        end
        inherited GrpBxDadoConsulta: TGroupBox
          Left = 211
          Width = 310
          ExplicitLeft = 211
          ExplicitWidth = 310
          inherited edtConsulta: TEdit
            Width = 297
            ExplicitWidth = 297
          end
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      OnShow = TbShCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 814
      ExplicitHeight = 318
      inherited PnCampos: TPanel
        Width = 648
        Height = 227
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 83
          Top = 16
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object edtID: TEdit
          Left = 16
          Top = 35
          Width = 58
          Height = 21
          Enabled = False
          NumbersOnly = True
          TabOrder = 0
          Text = 'edtID'
        end
        object edtDescricao: TEdit
          Left = 80
          Top = 35
          Width = 321
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTDESCRICAO'
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 255
    Width = 656
    inherited BtnNovo: TBitBtn
      Top = 7
      ExplicitTop = 7
    end
    inherited BtnAlterar: TBitBtn
      Top = 7
      ExplicitTop = 7
    end
    inherited BtnRelatorios: TBitBtn
      Left = 340
      Top = 7
      ExplicitLeft = 340
      ExplicitTop = 7
    end
    inherited BtnSair: TBitBtn
      Left = 533
      Top = 7
      ExplicitLeft = 533
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
