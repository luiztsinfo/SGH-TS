inherited frmColaborador: TfrmColaborador
  Caption = 'COLABORADORES'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    inherited TbShConsulta: TTabSheet
      inherited PnDados: TPanel
        inherited GrdDados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Width = 324
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NASCIMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Nascimento'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REGISTRO_PROFISSIONAL'
              Title.Alignment = taCenter
              Title.Caption = 'Registro Profissional'
              Width = 135
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        inherited CbxConsulta: TComboBox
          ItemIndex = 1
          Text = 'NOME'
          Items.Strings = (
            'ID'
            'NOME'
            'CPF'
            'NASCIMENTO')
        end
        inherited CbxOrdenarPor: TComboBox
          ItemIndex = 1
          Text = 'NOME'
          Items.Strings = (
            'ID'
            'NOME')
        end
      end
    end
    inherited TbShCadastro: TTabSheet
      Caption = 'Dados Principais'
      OnShow = TbShCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 814
      ExplicitHeight = 318
      inherited PnCampos: TPanel
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 13
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 94
          Top = 16
          Width = 32
          Height = 13
          Caption = 'Nome'
        end
        object Label3: TLabel
          Left = 504
          Top = 16
          Width = 66
          Height = 13
          Caption = 'Nascimento'
        end
        object Label5: TLabel
          Left = 16
          Top = 72
          Width = 38
          Height = 13
          Caption = 'Cidade'
        end
        object Label7: TLabel
          Left = 595
          Top = 16
          Width = 75
          Height = 13
          Caption = 'Tipo Registro'
        end
        object edtID: TEdit
          Left = 16
          Top = 35
          Width = 72
          Height = 21
          Enabled = False
          TabOrder = 0
          Text = 'edtID'
        end
        object edtNome: TEdit
          Left = 94
          Top = 35
          Width = 395
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTNOME'
        end
        object edtCidade: TEdit
          Left = 16
          Top = 91
          Width = 281
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
          Text = 'EDTCIDADE'
          OnKeyDown = edtCidadeKeyDown
          OnKeyUp = edtCidadeKeyUp
        end
        object CbxTipoRegistro: TComboBox
          Left = 595
          Top = 35
          Width = 75
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 3
          Text = 'COREN'
          Items.Strings = (
            'COREN')
        end
        object mskNascimento: TMaskEdit
          Left = 504
          Top = 35
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 2
          Text = '  /  /    '
        end
        object edtRegistro: TEdit
          Left = 676
          Top = 35
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          Text = 'EDTREGISTRO'
        end
        object GrdCidades: TDBGrid
          Left = 16
          Top = 118
          Width = 281
          Height = 107
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Visible = False
          OnDblClick = GrdCidadesDblClick
          OnKeyDown = GrdCidadesKeyDown
          OnKeyUp = GrdCidadesKeyUp
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Nome'
              Width = 184
              Visible = True
            end>
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    inherited BtnNovo: TBitBtn
      Left = 6
      ExplicitLeft = 6
    end
  end
end
