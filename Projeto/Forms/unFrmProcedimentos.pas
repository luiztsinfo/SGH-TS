unit unFrmProcedimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFrmBaseBasico, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Procedimento, unConstantes, unFuncoes, u_FrmBase;

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
    edtOperacional: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    edtValorTotal: TEdit;
    edtHonorariosMedicos: TEdit;
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtOperacionalExit(Sender: TObject);
    procedure GrdDadosDblClick(Sender: TObject);
    procedure edtHonorariosMedicosExit(Sender: TObject);
    procedure edtValorTotalExit(Sender: TObject);
    procedure edtValorTotalEnter(Sender: TObject);
  private
    { Private declarations }
  public
    procedure alimentaModel; override;
    procedure carregarCampos; override;
    procedure consultar; override;
    procedure alterar; override;
    procedure CalcularTotal;
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
  TControllerProcedimento(FController).Model.Valor_Padrao_Total    := StrToFloat(edtValorTotal.Text);
  TControllerProcedimento(FController).Model.Valor_Padrao_Operacional := StrToFloat(edtOperacional.Text);
  TControllerProcedimento(FController).Model.Valor_Padrao_Honorarios_Medicos := StrToFloat(edtHonorariosMedicos.Text);
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

procedure TfrmProcedimentos.CalcularTotal;
var
  vHonorarios, vOperacional, vTotal: Double;
begin
  if (TryStrToFloat(edtOperacional.Text,vOperacional))
    and (TryStrToFloat(edtHonorariosMedicos.Text,vHonorarios)) then
    begin
      vTotal := vHonorarios + vOperacional;
      edtValorTotal.Text := FloatToStr(vTotal);
    end;
end;

procedure TfrmProcedimentos.carregarCampos;
begin
  inherited;
  edtID.Text        := IntToStr(TControllerProcedimento(FController).Model.Id);
  edtDescricao.Text := TControllerProcedimento(FController).Model.Descricao;
  edtCodAMBCHPM.Text:= TControllerProcedimento(FController).Model.Codigo_amb_chpm;
  edtTUSS.Text      := TControllerProcedimento(FController).Model.Codigo_tuss;
  edtValorTotal.Text := FloatToStr(TControllerProcedimento(FController).Model.Valor_Padrao_Total);
  edtOperacional.Text:= FloatToStr(TControllerProcedimento(FController).Model.Valor_Padrao_Operacional);
  edtHonorariosMedicos.Text := FloatToStr(TControllerProcedimento(FController).Model.Valor_Padrao_Honorarios_Medicos);
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

procedure TfrmProcedimentos.edtHonorariosMedicosExit(Sender: TObject);
var
  FFuncoes: TFuncoes;
begin
  inherited;
  FFuncoes            := TFuncoes.Create;
  edtHonorariosMedicos.Text := FFuncoes.TrataReal(edtHonorariosMedicos.Text);
  FreeAndNil(FFuncoes);

  CalcularTotal;
end;

procedure TfrmProcedimentos.edtOperacionalExit(Sender: TObject);
var
  FFuncoes: TFuncoes;
begin
  inherited;
  FFuncoes            := TFuncoes.Create;
  edtOperacional.Text := FFuncoes.TrataReal(edtOperacional.Text);
  FreeAndNil(FFuncoes);

  CalcularTotal;
end;

procedure TfrmProcedimentos.edtValorTotalEnter(Sender: TObject);
begin
  inherited;
  CalcularTotal;
end;

procedure TfrmProcedimentos.edtValorTotalExit(Sender: TObject);
var
  FFuncoes: TFuncoes;
begin
  inherited;
  FFuncoes            := TFuncoes.Create;
  edtValorTotal.Text := FFuncoes.TrataReal(edtValorTotal.Text);
  FreeAndNil(FFuncoes);
end;

procedure TfrmProcedimentos.FormCreate(Sender: TObject);
begin
  FController := TControllerProcedimento.Create;
  inherited;
end;

procedure TfrmProcedimentos.GrdDadosDblClick(Sender: TObject);
begin
  inherited;
  if (FTipoOperacao = toConsulta) then
    begin
      FValueFieldKey := TControllerProcedimento(FController).Model.Id;
      Self.Close;
    end;
end;

procedure TfrmProcedimentos.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.

