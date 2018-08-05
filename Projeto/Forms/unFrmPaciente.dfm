inherited frmPaciente: TfrmPaciente
  Caption = 'PACIENTES'
  ClientWidth = 820
  OnDestroy = FormDestroy
  ExplicitWidth = 826
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCtrlCadastro: TPageControl
    Width = 820
    ExplicitWidth = 820
    inherited TbShConsulta: TTabSheet
      ExplicitWidth = 812
      inherited PnDados: TPanel
        Width = 812
        ExplicitWidth = 812
        inherited GrdDados: TDBGrid
          Width = 806
          Columns = <
            item
              Expanded = False
              FieldName = 'id'
              Title.Alignment = taCenter
              Title.Caption = 'ID'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Width = 482
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nascimento'
              Title.Alignment = taCenter
              Title.Caption = 'Nascimento'
              Width = 97
              Visible = True
            end>
        end
      end
      inherited PnFiltro: TPanel
        Width = 812
        ExplicitWidth = 812
        inherited CbxConsulta: TComboBox
          ItemIndex = 1
          Text = 'NOME'
          Items.Strings = (
            'ID'
            'NOME'
            'CPF'
            'NASCIMENTO')
        end
        inherited BtnConsultar: TBitBtn
          Top = 13
          ExplicitTop = 13
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
      ExplicitWidth = 812
      ExplicitHeight = 318
      inherited PnCampos: TPanel
        Width = 812
        ExplicitWidth = 812
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label2: TLabel
          Left = 104
          Top = 16
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object Label3: TLabel
          Left = 16
          Top = 115
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label5: TLabel
          Left = 504
          Top = 16
          Width = 55
          Height = 13
          Caption = 'Nascimento'
        end
        object Label6: TLabel
          Left = 591
          Top = 16
          Width = 24
          Height = 13
          Caption = 'Sexo'
        end
        object Label7: TLabel
          Left = 679
          Top = 16
          Width = 17
          Height = 13
          Caption = 'Cor'
        end
        object Label8: TLabel
          Left = 16
          Top = 64
          Width = 55
          Height = 13
          Caption = 'Estado Civil'
        end
        object Label9: TLabel
          Left = 127
          Top = 64
          Width = 60
          Height = 13
          Caption = 'Escolaridade'
        end
        object Label10: TLabel
          Left = 303
          Top = 115
          Width = 37
          Height = 13
          Caption = 'Religi'#227'o'
        end
        object edtID: TEdit
          Left = 15
          Top = 35
          Width = 83
          Height = 21
          Enabled = False
          NumbersOnly = True
          TabOrder = 0
          Text = 'edtID'
        end
        object edtNome: TEdit
          Left = 104
          Top = 35
          Width = 390
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDTNOME'
        end
        object mskNascimento: TMaskEdit
          Left = 500
          Top = 35
          Width = 85
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 2
          Text = '  /  /    '
        end
        object GrdCidades: TDBGrid
          Left = 16
          Top = 157
          Width = 281
          Height = 84
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Visible = False
          OnDblClick = GrdCidadesDblClick
          OnKeyDown = GrdCidadesKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Cidade'
              Width = 249
              Visible = True
            end>
        end
        object edtCidade: TEdit
          Left = 16
          Top = 130
          Width = 281
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          Text = 'EDTCIDADE'
          OnKeyDown = edtCidadeKeyDown
          OnKeyUp = edtCidadeKeyUp
        end
        object CbxSexo: TComboBox
          Left = 591
          Top = 35
          Width = 82
          Height = 21
          Style = csDropDownList
          TabOrder = 5
          Items.Strings = (
            ''
            'FEMININO'
            'MASCULINO')
        end
        object CbxCor: TComboBox
          Left = 679
          Top = 35
          Width = 112
          Height = 21
          Style = csDropDownList
          TabOrder = 6
          Items.Strings = (
            ''
            'BRANCO(A)'
            'PARDO(A)'
            'NEGRO(A)')
        end
        object CbxEstadoCivil: TComboBox
          Left = 16
          Top = 83
          Width = 105
          Height = 21
          Style = csDropDownList
          TabOrder = 7
          Items.Strings = (
            ''
            'SOLTEIRO(A)'
            'CASADO(A)'
            'DIVORCIADO(A)'
            'VIUVO(A)')
        end
        object CbxEscolaridade: TComboBox
          Left = 127
          Top = 83
          Width = 170
          Height = 21
          Style = csDropDownList
          TabOrder = 8
          Items.Strings = (
            ''
            'ENSINO FUNDAMENTAL'
            'ENSINO M'#201'DIO COMPLETO'
            'ENSINO M'#201'DIO INCOMPLETO'
            'ENSINO SUPERIOR COMPLETO'
            'ENSINO SUPERIOR INCOMPLETO')
        end
        object edtReligiao: TEdit
          Left = 303
          Top = 130
          Width = 282
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 9
          Text = 'EDTRELIGIAO'
          OnKeyDown = edtReligiaoKeyDown
          OnKeyUp = edtReligiaoKeyUp
        end
        object GrdReligioes: TDBGrid
          Left = 303
          Top = 157
          Width = 282
          Height = 84
          TabOrder = 10
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Visible = False
          OnDblClick = GrdReligioesDblClick
          OnExit = GrdReligioesExit
          OnKeyDown = GrdReligioesKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 253
              Visible = True
            end>
        end
      end
    end
  end
  inherited PnBotoes: TPanel
    Width = 820
    ExplicitWidth = 820
  end
end
