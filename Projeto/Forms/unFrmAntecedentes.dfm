inherited frmAntecedentes: TfrmAntecedentes
  Caption = 'ANTECEDENTES'
  ClientHeight = 324
  ClientWidth = 649
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 655
  ExplicitHeight = 353
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 649
    Height = 269
    ExplicitWidth = 697
    ExplicitHeight = 269
    inherited TbShConsulta: TTabSheet
      ExplicitWidth = 689
      ExplicitHeight = 241
      inherited PnDados: TPanel
        Width = 641
        Height = 174
        ExplicitWidth = 689
        ExplicitHeight = 174
        inherited GrdDados: TDBGrid
          Width = 635
          Height = 168
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
              Width = 422
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        Width = 641
        ExplicitWidth = 689
        inherited Label4: TLabel
          Left = 119
          Top = 5
          ExplicitLeft = 119
          ExplicitTop = 5
        end
        inherited CbxConsulta: TComboBox
          Width = 105
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO')
          ExplicitWidth = 105
        end
        inherited BtnConsultar: TBitBtn
          Left = 567
          Top = 13
          ExplicitLeft = 567
          ExplicitTop = 13
        end
        inherited CbxOrdenarPor: TComboBox
          Left = 119
          Width = 106
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO')
          ExplicitLeft = 119
          ExplicitWidth = 106
        end
        inherited GrpBxDadoConsulta: TGroupBox
          Left = 231
          Width = 330
          ExplicitLeft = 231
          ExplicitWidth = 330
          inherited edtConsulta: TEdit
            Left = 11
            Top = 20
            Width = 310
            ExplicitLeft = 11
            ExplicitTop = 20
            ExplicitWidth = 310
          end
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      OnShow = TbShCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 689
      ExplicitHeight = 241
      inherited PnCampos: TPanel
        Width = 641
        Height = 241
        ExplicitWidth = 689
        ExplicitHeight = 241
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
        object Label3: TLabel
          Left = 448
          Top = 16
          Width = 85
          Height = 13
          Caption = 'Tipo Antecedente'
        end
        object edtID: TEdit
          Left = 16
          Top = 35
          Width = 74
          Height = 21
          Enabled = False
          TabOrder = 0
          Text = 'edtID'
        end
        object edtDescricao: TEdit
          Left = 96
          Top = 35
          Width = 337
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTDESCRICAO'
        end
        object CbxTipoAntecedente: TComboBox
          Left = 448
          Top = 35
          Width = 105
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Text = 'AMBOS'
          Items.Strings = (
            'AMBOS'
            'FAMILIAR'
            'PESSOAL')
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 269
    Width = 649
    ExplicitTop = 269
    ExplicitWidth = 697
    inherited BtnNovo: TBitBtn
      Top = 6
      ExplicitTop = 6
    end
    inherited BtnAlterar: TBitBtn
      Top = 6
      ExplicitTop = 6
    end
    inherited BtnInativar: TBitBtn
      Top = 6
      ExplicitTop = 6
    end
    inherited BtnRelatorios: TBitBtn
      Left = 381
      Top = 6
      ExplicitLeft = 381
      ExplicitTop = 6
    end
    inherited BtnSair: TBitBtn
      Left = 525
      Top = 6
      ExplicitLeft = 525
      ExplicitTop = 6
    end
    inherited BtnSalvar: TBitBtn
      Left = 218
      Top = 6
      ExplicitLeft = 218
      ExplicitTop = 6
    end
    inherited BtnCancelar: TBitBtn
      Left = 322
      Top = 7
      ExplicitLeft = 322
      ExplicitTop = 7
    end
  end
end