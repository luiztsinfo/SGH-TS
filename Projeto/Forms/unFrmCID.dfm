inherited frmCID: TfrmCID
  Caption = 'CID'
  ClientHeight = 335
  ClientWidth = 602
  ExplicitWidth = 608
  ExplicitHeight = 364
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 602
    Height = 280
    ExplicitWidth = 602
    ExplicitHeight = 280
    inherited TbShConsulta: TTabSheet
      ExplicitWidth = 594
      ExplicitHeight = 252
      inherited PnDados: TPanel
        Width = 594
        Height = 185
        ExplicitWidth = 594
        ExplicitHeight = 185
        inherited GrdDados: TDBGrid
          Width = 588
          Height = 179
        end
      end
      inherited PnFiltro: TPanel
        Width = 594
        ExplicitWidth = 594
        inherited Label4: TLabel
          Left = 101
          ExplicitLeft = 101
        end
        inherited CbxConsulta: TComboBox
          Width = 87
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO'
            'ID_GRUPO_CID')
          ExplicitWidth = 87
        end
        inherited BtnConsultar: TBitBtn
          Left = 484
          Top = 13
          Width = 98
          ExplicitLeft = 484
          ExplicitTop = 13
          ExplicitWidth = 98
        end
        inherited CbxOrdenarPor: TComboBox
          Left = 101
          Width = 94
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO'
            'ID_GRUPO_CID')
          ExplicitLeft = 101
          ExplicitWidth = 94
        end
        inherited GrpBxDadoConsulta: TGroupBox
          Left = 205
          Width = 267
          ExplicitLeft = 205
          ExplicitWidth = 267
          inherited edtConsulta: TEdit
            Width = 249
            ExplicitWidth = 249
          end
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 594
      ExplicitHeight = 252
      inherited PnCampos: TPanel
        Width = 594
        Height = 252
        ExplicitWidth = 594
        ExplicitHeight = 252
        object Label1: TLabel
          Left = 16
          Top = 20
          Width = 18
          Height = 13
          Caption = 'CID'
        end
        object Label2: TLabel
          Left = 16
          Top = 66
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label3: TLabel
          Left = 16
          Top = 107
          Width = 24
          Height = 13
          Caption = 'Sexo'
        end
        object Label5: TLabel
          Left = 304
          Top = 40
          Width = 31
          Height = 13
          Caption = 'Label5'
        end
        object edtCID: TEdit
          Left = 16
          Top = 39
          Width = 89
          Height = 21
          TabOrder = 0
          Text = 'edtCID'
        end
        object edtDescricao: TEdit
          Left = 16
          Top = 80
          Width = 275
          Height = 21
          TabOrder = 1
          Text = 'edtDescricao'
        end
        object CbxSexo: TComboBox
          Left = 16
          Top = 123
          Width = 113
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Text = 'AMBOS'
          Items.Strings = (
            'AMBOS'
            'FEMININO'
            'MASCULINO')
        end
        object ComboBox2: TComboBox
          Left = 344
          Top = 112
          Width = 145
          Height = 21
          TabOrder = 3
          Text = 'ComboBox2'
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 280
    Width = 602
    ExplicitTop = 280
    ExplicitWidth = 602
    inherited BtnRelatorios: TBitBtn
      Left = 373
      ExplicitLeft = 373
    end
    inherited BtnSair: TBitBtn
      Left = 478
      ExplicitLeft = 478
    end
    inherited BtnSalvar: TBitBtn
      Left = 195
      Top = 3
      ExplicitLeft = 195
      ExplicitTop = 3
    end
    inherited BtnCancelar: TBitBtn
      Left = 299
      Top = 4
      ExplicitLeft = 299
      ExplicitTop = 4
    end
  end
end
