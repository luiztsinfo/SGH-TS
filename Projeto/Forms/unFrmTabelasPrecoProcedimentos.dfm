inherited frmTabelasPrecoProcedimentos: TfrmTabelasPrecoProcedimentos
  Caption = '::. TABELAS DE PRE'#199'O PARA PROCEDIMENTOS .::'
  ClientHeight = 386
  ClientWidth = 726
  OnCreate = FormCreate
  ExplicitWidth = 732
  ExplicitHeight = 415
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 726
    Height = 331
    ExplicitHeight = 249
    inherited TbShConsulta: TTabSheet
      ExplicitHeight = 221
      inherited PnDados: TPanel
        Width = 718
        Height = 236
        ExplicitHeight = 154
        inherited GrdDados: TDBGrid
          Width = 712
          Height = 230
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
              Width = 346
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VIGENCIA_GERAL'
              Title.Alignment = taCenter
              Title.Caption = 'Vig'#234'ncia'
              Width = 91
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        Width = 718
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
      ExplicitWidth = 718
      ExplicitHeight = 221
      inherited PnCampos: TPanel
        Width = 718
        Height = 303
        ExplicitWidth = 718
        ExplicitHeight = 221
        object Label1: TLabel
          Left = 24
          Top = 24
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 24
          Top = 67
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label3: TLabel
          Left = 24
          Top = 107
          Width = 80
          Height = 13
          Caption = 'Data de Vig'#234'ncia'
        end
        object edtID: TEdit
          Left = 24
          Top = 40
          Width = 66
          Height = 21
          Enabled = False
          NumbersOnly = True
          TabOrder = 0
          Text = 'edtID'
        end
        object edtDescricao: TEdit
          Left = 24
          Top = 80
          Width = 305
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTDESCRICAO'
        end
        object mskDataVigencia: TMaskEdit
          Left = 24
          Top = 123
          Width = 80
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 2
          Text = '  /  /    '
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 331
    Width = 726
    ExplicitTop = 249
    inherited BtnRelatorios: TBitBtn
      Left = 455
      ExplicitLeft = 455
    end
    inherited BtnSair: TBitBtn
      Left = 599
      ExplicitLeft = 599
    end
    inherited BtnCancelar: TBitBtn
      Left = 323
      Top = 4
      ExplicitLeft = 323
      ExplicitTop = 4
    end
    object BtnItens: TBitBtn
      Left = 315
      Top = 4
      Width = 89
      Height = 38
      Caption = 'Itens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BtnItensClick
    end
  end
end
