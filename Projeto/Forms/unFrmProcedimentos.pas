unit unFrmProcedimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFrmBaseBasico, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Procedimento, unConstantes, unFuncoes;

type
  TfrmProcedimentos = class(TFrmBaseBasico)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtID: TEdit;
    edtDescricao: TEdit;
    edtCodAMBCHPM: TEdit;
    edtTUSS: TEdit;
    edtValorPadrao: TEdit;
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtValorPadraoExit(Sender: TObject);
  private
    { Private declarations }
  public
    procedure alimentaModel; override;
    procedure carregarCampos; override;
    procedure consultar; override;
    procedure alterar; override;
  end;

var
  frmProcedimentos: TfrmProcedimentos;

implementation

{$R *.dfm}

procedure TfrmProcedimentos.alimentaModel;
begin
  inherited;
  TControllerProcedimento(FController).Model.Descricao       := edtDescricao.Text;
  TControllerProcedimento(FController).Model.Codigo_amb_chpm := edtCodAMBCHPM.Text;
  TControllerProcedimento(FController).Model.Codigo_tuss     := edtTUSS.Text;
  TControllerProcedimento(FController).Model.Valor_Padrao    := StrToFloat(edtValorPadrao.Text);
end;

procedure TfrmProcedimentos.alterar;
begin
  inherited;
  TControllerProcedimento(FController).Model.Id := StrToInt(edtID.Text);
  TControllerProcedimento(FController).FDao.Salvar(TControllerProcedimento(FController).Model)
end;

procedure TfrmProcedimentos.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TfrmProcedimentos.carregarCampos;
begin
  inherited;
  edtID.Text        := IntToStr(TControllerProcedimento(FController).Model.Id);
  edtDescricao.Text := TControllerProcedimento(FController).Model.Descricao;
  edtCodAMBCHPM.Text:= TControllerProcedimento(FController).Model.Codigo_amb_chpm;
  edtTUSS.Text      := TControllerProcedimento(FController).Model.Codigo_tuss;
  edtValorPadrao.Text := FloatToStr(TControllerProcedimento(FController).Model.Valor_Padrao);
end;

procedure TfrmProcedimentos.consultar;
begin
  TControllerProcedimento(FController).Model.Situacao := sATIVO;

  case CbxConsulta.ItemIndex of
    0:
      TControllerProcedimento(FController).Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;
  TControllerProcedimento(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmProcedimentos.edtValorPadraoExit(Sender: TObject);
var
  FFuncoes: TFuncoes;
begin
  inherited;
  FFuncoes            := TFuncoes.Create;
  edtValorPadrao.Text := FFuncoes.TrataReal(edtValorPadrao.Text);
  FreeAndNil(FFuncoes);
end;

procedure TfrmProcedimentos.FormCreate(Sender: TObject);
begin
  FController := TControllerProcedimento.Create;
  inherited;
end;

procedure TfrmProcedimentos.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.

