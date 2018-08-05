inherited frmAlergia: TfrmAlergia
  Caption = 'ALERGIAS'
  ClientHeight = 326
  ClientWidth = 649
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 655
  ExplicitHeight = 355
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 649
    Height = 271
    ExplicitWidth = 649
    ExplicitHeight = 271
    inherited TbShConsulta: TTabSheet
      ExplicitWidth = 641
      ExplicitHeight = 243
      inherited PnDados: TPanel
        Width = 641
        Height = 176
        ExplicitWidth = 641
        ExplicitHeight = 176
        inherited GrdDados: TDBGrid
          Width = 635
          Height = 170
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
              Width = 342
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        Width = 641
        ExplicitWidth = 641
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
          Width = 98
          ExplicitLeft = 527
          ExplicitTop = 13
          ExplicitWidth = 98
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
          Top = 4
          Width = 298
          ExplicitLeft = 223
          ExplicitTop = 4
          ExplicitWidth = 298
          inherited edtConsulta: TEdit
            Width = 273
            ExplicitWidth = 273
          end
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      OnShow = TbShCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 641
      ExplicitHeight = 243
      inherited PnCampos: TPanel
        Width = 641
        Height = 243
        ExplicitWidth = 641
        ExplicitHeight = 243
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 94
          Top = 24
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label3: TLabel
          Left = 380
          Top = 24
          Width = 56
          Height = 13
          Caption = 'Tipo Alergia'
        end
        object edtID: TEdit
          Left = 16
          Top = 43
          Width = 65
          Height = 21
          Enabled = False
          TabOrder = 0
          Text = 'edtID'
        end
        object edtDescricao: TEdit
          Left = 94
          Top = 43
          Width = 275
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTDESCRICAO'
        end
        object CbxTipoAlergia: TComboBox
          Left = 375
          Top = 43
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Items.Strings = (
            ''
            'ALIMENTAR'
            'MEDICAMENTOSA')
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 271
    Width = 649
    ExplicitTop = 271
    ExplicitWidth = 649
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
      Left = 384
      Top = 7
      ExplicitLeft = 384
      ExplicitTop = 7
    end
    inherited BtnSair: TBitBtn
      Left = 511
      Top = 7
      ExplicitLeft = 511
      ExplicitTop = 7
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
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 412
    Top = 195
  end
  object DataSetProvider1: TDataSetProvider
    Left = 260
    Top = 203
  end
end
