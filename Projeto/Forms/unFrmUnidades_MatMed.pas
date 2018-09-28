unit unFrmUnidades_MatMed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFrmBaseBasico, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Unidade_MatMed, unConstantes, u_FrmBase;

type
  TFrmUnidades_MatMed = class(TFrmBaseBasico)
    edtDescricao: TEdit;
    edtID: TEdit;
    edtAbreviacao: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  FrmUnidades_MatMed: TFrmUnidades_MatMed;

implementation

{$R *.dfm}

procedure TFrmUnidades_MatMed.alimentaModel;
begin
  inherited;
  TControllerUnidade_MatMed(FController).Model.Descricao := edtDescricao.Text;
  TControllerUnidade_MatMed(FController).Model.Abreviacao := edtAbreviacao.Text;
end;

procedure TFrmUnidades_MatMed.alterar;
begin
  inherited;
  TControllerUnidade_MatMed(FController).Model.Id := StrToInt(edtID.Text);
  TControllerUnidade_MatMed(FController).FDao.Salvar(TControllerUnidade_MatMed(FController).Model)
end;

procedure TFrmUnidades_MatMed.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TFrmUnidades_MatMed.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(TControllerUnidade_MatMed(FController).Model.Id);
  edtDescricao.Text := TControllerUnidade_MatMed(FController).Model.Descricao;
  edtAbreviacao.Text := TControllerUnidade_MatMed(FController).Model.Abreviacao;
end;

procedure TFrmUnidades_MatMed.consultar;
begin
  TControllerUnidade_MatMed(FController).Model.Situacao := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      TControllerUnidade_MatMed(FController).Model.Id := StrToInt(trim(edtConsulta.Text));
    iNOME:
      TControllerUnidade_MatMed(FController).Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;
  TControllerUnidade_MatMed(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TFrmUnidades_MatMed.FormCreate(Sender: TObject);
begin
  FController := TControllerUnidade_MatMed.Create;
  inherited;
end;

procedure TFrmUnidades_MatMed.GrdDadosDblClick(Sender: TObject);
begin
  inherited;
  if (FTipoOperacao = toConsulta) then
    begin
      FValueFieldKey := TControllerUnidade_MatMed(FController).Model.Id;
      Self.Close;
    end;
end;

procedure TFrmUnidades_MatMed.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.
