unit unFrmLeitos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFrmBaseBasico, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Leito, unConstantes, unFrmQuartos, u_FrmBase;

type
  TFrmLeitos = class(TFrmBaseBasico)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtID: TEdit;
    edtDescricao: TEdit;
    edtIDQuarto: TEdit;
    BtnBuscaQuarto: TBitBtn;
    lblQuarto: TLabel;
    Label5: TLabel;
    CbxStatus: TComboBox;
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtIDQuartoExit(Sender: TObject);
    procedure BtnBuscaQuartoClick(Sender: TObject);
    procedure GrdDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure alimentaModel; override;
    procedure carregarCampos; override;
    procedure consultar; override;
    procedure alterar; override;
  end;

var
  FrmLeitos: TFrmLeitos;

implementation

{$R *.dfm}

procedure TFrmLeitos.alimentaModel;
var
  vQuarto: integer;
begin
  inherited;
  TControllerLeito(FController).Model.Descricao := edtDescricao.Text;

  if TryStrToInt(edtIDQuarto.Text,vQuarto) then
    TControllerLeito(FController).Model.Id_quarto := vQuarto;

  TControllerLeito(FController).Model.Status    := CbxStatus.ItemIndex;
end;

procedure TFrmLeitos.alterar;
begin
  inherited;
  TControllerLeito(FController).Model.Id := StrToInt(edtID.Text);
  TControllerLeito(FController).FDao.Salvar(TControllerLeito(FController).Model)
end;

procedure TFrmLeitos.BtnBuscaQuartoClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    frmQuartos := TFrmQuartos.Create(Self,toConsulta);
    frmQuartos.ShowModal;
  finally
    edtIDQuarto.Text := IntToStr(frmQuartos.FValueFieldKey);

    if TryStrToInt(edtIDQuarto.Text,vValue) then
      lblQuarto.Caption := TControllerLeito(FController).GetDescricaoQuarto(vValue,iINCLUINDO);

    FreeAndNil(frmQuartos);
  end;
end;

procedure TFrmLeitos.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TFrmLeitos.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(TControllerLeito(FController).Model.Id);
  edtDescricao.Text := TControllerLeito(FController).Model.Descricao;

  edtIDQuarto.Text             := IntToStr(TControllerLeito(FController).Model.Id_quarto);

  lblQuarto.Caption             := TControllerLeito(FController).
                                      GetDescricaoQuarto(TControllerLeito(FController).
                                        Model.Id_quarto, iALTERANDO);

  CbxStatus.ItemIndex           := TControllerLeito(FController).Model.Status;
end;

procedure TFrmLeitos.consultar;
begin
  TControllerLeito(FController).Model.Situacao := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      TControllerLeito(FController).Model.Id := StrToInt(trim(edtConsulta.Text));
    iNOME:
      TControllerLeito(FController).Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;
  TControllerLeito(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TFrmLeitos.edtIDQuartoExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtIDQuarto.Text,vValue) then
    lblQuarto.Caption := TControllerLeito(FController).GetDescricaoQuarto(vValue,iINCLUINDO);
end;

procedure TFrmLeitos.FormCreate(Sender: TObject);
begin
  FController := TControllerLeito.Create;
  inherited;
end;

procedure TFrmLeitos.GrdDadosDblClick(Sender: TObject);
begin
  inherited;
  if (FTipoOperacao = toConsulta) then
    begin
      FValueFieldKey := TControllerLeito(FController).Model.Id;
      Self.Close;
    end;
end;

procedure TFrmLeitos.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.

