object frmNaoCobrar: TfrmNaoCobrar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '::. N'#195'O COBRAN'#199'A DE ATENDIMENTO .::'
  ClientHeight = 135
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnDadosNaoCobranca: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 118
      Height = 13
      Caption = 'Motivo de N'#227'o Cobran'#231'a'
    end
    object CbxMotivo: TComboBox
      Left = 8
      Top = 27
      Width = 321
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Items.Strings = (
        ''
        'MOTIVO 1'
        'MOTIVO 2'
        'MOTIVO 3'
        'MOTIVO 4'
        'MOTIVO 5'
        '** FUTURAMENTO VAI TER UM CADASTRO **')
    end
  end
  object pnBotoes: TPanel
    Left = 0
    Top = 73
    Width = 515
    Height = 56
    Align = alTop
    TabOrder = 1
    object BtnConcluir: TBitBtn
      Left = 165
      Top = 12
      Width = 89
      Height = 33
      Caption = 'CONCLUIR'
      TabOrder = 0
      OnClick = BtnConcluirClick
    end
    object BtnCancelar: TBitBtn
      Left = 260
      Top = 12
      Width = 89
      Height = 33
      Caption = 'CANCELAR - Esc'
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
end
