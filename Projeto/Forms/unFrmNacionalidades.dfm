inherited frmNacionalidades: TfrmNacionalidades
  Caption = 'NACIONALIDADES'
  ClientHeight = 320
  ClientWidth = 625
  OnCreate = FormCreate
  ExplicitWidth = 631
  ExplicitHeight = 349
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 625
    Height = 265
    ExplicitWidth = 625
    ExplicitHeight = 265
    inherited TbShConsulta: TTabSheet
      ExplicitWidth = 617
      ExplicitHeight = 237
      inherited PnDados: TPanel
        Width = 617
        Height = 170
        ExplicitWidth = 617
        ExplicitHeight = 170
        inherited GrdDados: TDBGrid
          Width = 611
          Height = 164
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
              Width = 317
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        Width = 617
        ExplicitWidth = 617
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
            'DESCRICAO')
          ExplicitWidth = 87
        end
        inherited BtnConsultar: TBitBtn
          Left = 495
          Top = 13
          ExplicitLeft = 495
          ExplicitTop = 13
        end
        inherited CbxOrdenarPor: TComboBox
          Left = 101
          Width = 94
          ItemIndex = 1
          Text = 'DESCRICAO'
          Items.Strings = (
            'ID'
            'DESCRICAO')
          ExplicitLeft = 101
          ExplicitWidth = 94
        end
        inherited GrpBxDadoConsulta: TGroupBox
          Left = 203
          Width = 286
          ExplicitLeft = 203
          ExplicitWidth = 286
          inherited edtConsulta: TEdit
            Width = 265
            ExplicitWidth = 265
          end
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      OnShow = TbShCadastroShow
      ExplicitWidth = 617
      ExplicitHeight = 237
      inherited PnCampos: TPanel
        Width = 617
        Height = 237
        ExplicitWidth = 617
        ExplicitHeight = 237
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 16
          Top = 48
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object edtId: TEdit
          Left = 16
          Top = 24
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'EDTID'
        end
        object edtDescricao: TEdit
          Left = 16
          Top = 64
          Width = 297
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTDESCRICAO'
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Top = 265
    Width = 625
    ExplicitTop = 265
    ExplicitWidth = 625
    inherited BtnRelatorios: TBitBtn
      Left = 357
      ExplicitLeft = 357
    end
    inherited BtnSair: TBitBtn
      Left = 501
      ExplicitLeft = 501
    end
    inherited BtnSalvar: TBitBtn
      Left = 206
      ExplicitLeft = 206
    end
    inherited BtnCancelar: TBitBtn
      Left = 310
      Top = 4
      ExplicitLeft = 310
      ExplicitTop = 4
    end
  end
end
