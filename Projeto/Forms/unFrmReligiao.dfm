inherited frmReligiao: TfrmReligiao
  Caption = 'RELIGI'#213'ES'
  ClientHeight = 328
  ClientWidth = 669
  OnCreate = FormCreate
  ExplicitWidth = 675
  ExplicitHeight = 357
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 669
    Height = 273
    ExplicitWidth = 669
    ExplicitHeight = 273
    inherited TbShConsulta: TTabSheet
      ExplicitWidth = 661
      ExplicitHeight = 245
      inherited PnDados: TPanel
        Width = 661
        Height = 178
        ExplicitWidth = 661
        ExplicitHeight = 178
        inherited GrdDados: TDBGrid
          Width = 655
          Height = 172
          Columns = <
            item
              Expanded = False
              FieldName = 'id'
              Title.Alignment = taCenter
              Title.Caption = 'Id'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 379
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        Width = 661
        ExplicitWidth = 661
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
          Left = 544
          Top = 13
          Width = 97
          ExplicitLeft = 544
          ExplicitTop = 13
          ExplicitWidth = 97
        end
        inherited CbxOrdenarPor: TComboBox
          Left = 111
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO')
          ExplicitLeft = 111
        end
        inherited GrpBxDadoConsulta: TGroupBox
          Left = 223
          Top = 4
          Width = 315
          ExplicitLeft = 223
          ExplicitTop = 4
          ExplicitWidth = 315
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
      ExplicitWidth = 661
      ExplicitHeight = 245
      inherited PnCampos: TPanel
        Width = 661
        Height = 245
        ExplicitWidth = 661
        ExplicitHeight = 245
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
          Width = 337
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTDESCRICAO'
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 273
    Width = 669
    ExplicitTop = 273
    ExplicitWidth = 669
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
      Left = 422
      Top = 7
      ExplicitLeft = 422
      ExplicitTop = 7
    end
    inherited BtnSair: TBitBtn
      Left = 549
      Top = 7
      ExplicitLeft = 549
      ExplicitTop = 7
    end
    inherited BtnSalvar: TBitBtn
      Left = 228
      Top = 6
      ExplicitLeft = 228
      ExplicitTop = 6
    end
    inherited BtnCancelar: TBitBtn
      Left = 332
      Top = 7
      ExplicitLeft = 332
      ExplicitTop = 7
    end
  end
end
