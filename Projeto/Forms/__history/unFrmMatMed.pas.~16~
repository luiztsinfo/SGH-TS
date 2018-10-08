unit unFrmMatMed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFrmBaseBasico, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.MatMed, unConstantes, unFrmUnidades_MatMed, u_FrmBase,
  unFrmGrupos_MatMed, unFrmLocaisMatMed;

type
  TFrmMatMeds = class(TfrmBaseBasico)
    Label1: TLabel;
    Label2: TLabel;
    edtID: TEdit;
    edtDescricao: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblUnidadeMedida: TLabel;
    Label11: TLabel;
    lblGrupo: TLabel;
    Label13: TLabel;
    lblLocal: TLabel;
    edtEstoqueMinimo: TEdit;
    edtCodInterno: TEdit;
    edtCustoMedio: TEdit;
    edtUnidadeMedida: TEdit;
    edtGrupo: TEdit;
    edtLocal: TEdit;
    CbxControlado: TComboBox;
    CbxTipoApresentacao: TComboBox;
    BtnBuscaUnidadeMedida: TBitBtn;
    BtnBuscaGrupo: TBitBtn;
    BtnBuscaLocal: TBitBtn;
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtUnidadeMedidaExit(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure edtLocalExit(Sender: TObject);
    procedure BtnBuscaUnidadeMedidaClick(Sender: TObject);
    procedure BtnBuscaGrupoClick(Sender: TObject);
    procedure BtnBuscaLocalClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure alimentaModel; override;
    procedure carregarCampos; override;
    procedure consultar; override;
    procedure alterar; override;
  end;

var
  TFrmMatMed: TFrmMatMeds;

implementation

{$R *.dfm}

procedure TFrmMatMeds.alimentaModel;
var
  vGrupo, vUnidade, vLocal: integer;
begin
  inherited;
  TControllerMatMed(FController).Model.Descricao := edtDescricao.Text;
  TControllerMatMed(FController).Model.Cod_Interno := StrToInt(edtCodInterno.Text);
  TControllerMatMed(FController).Model.Estoque_minimo := StrToFloat(edtEstoqueMinimo.Text);
  TControllerMatMed(FController).Model.Custo_medio := StrToFloat(edtCustoMedio.Text);
  TControllerMatMed(FController).Model.Controlado := CbxControlado.ItemIndex;
  TControllerMatMed(FController).Model.Tipo_Apresentacao := CbxTipoApresentacao.ItemIndex;

  if TryStrToInt(edtLocal.Text,vLocal) then
    TControllerMatMed(FController).Model.Id_local := vLocal;

  if TryStrToInt(edtUnidadeMedida.Text,vUnidade) then
    TControllerMatMed(FController).Model.Id_unidade := vUnidade;

  if TryStrToInt(edtGrupo.Text,vGrupo) then
    TControllerMatMed(FController).Model.Id_grupo := vGrupo;
end;

procedure TFrmMatMeds.alterar;
begin
  inherited;
  TControllerMatMed(FController).Model.Id := StrToInt(edtID.Text);
  TControllerMatMed(FController).FDao.Salvar(TControllerMatMed(FController).Model)
end;

procedure TFrmMatMeds.BtnBuscaGrupoClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    frmGruposMatMed := TfrmGruposMatMed.Create(Self,toConsulta);
    frmGruposMatMed.ShowModal;
  finally
    edtGrupo.Text := IntToStr(frmGruposMatMed.FValueFieldKey);

    if TryStrToInt(edtGrupo.Text,vValue) then
      lblGrupo.Caption := TControllerMatMed(FController).GetDescricaoGrupo(vValue,iINCLUINDO);

    FreeAndNil(frmGruposMatMed);
  end;
end;

procedure TFrmMatMeds.BtnBuscaLocalClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    FrmLocaisMatMed := TFrmLocaisMatMed.Create(Self,toConsulta);
    FrmLocaisMatMed.ShowModal;
  finally
    edtLocal.Text := IntToStr(FrmLocaisMatMed.FValueFieldKey);

    if TryStrToInt(edtLocal.Text,vValue) then
      lblLocal.Caption := TControllerMatMed(FController).GetDescricaoLocal(vValue,iINCLUINDO);

    FreeAndNil(FrmLocaisMatMed);
  end;
end;

procedure TFrmMatMeds.BtnBuscaUnidadeMedidaClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    FrmUnidades_MatMed := TFrmUnidades_MatMed.Create(Self,toConsulta);
    FrmUnidades_MatMed.ShowModal;
  finally
    edtUnidadeMedida.Text := IntToStr(FrmUnidades_MatMed.FValueFieldKey);

    if TryStrToInt(edtUnidadeMedida.Text,vValue) then
      lblUnidadeMedida.Caption := TControllerMatMed(FController).GetDescricaoUnidade(vValue,iINCLUINDO);

    FreeAndNil(FrmUnidades_MatMed);
  end;
end;

procedure TFrmMatMeds.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TFrmMatMeds.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(TControllerMatMed(FController).Model.Id);
  edtDescricao.Text := TControllerMatMed(FController).Model.Descricao;
  edtCodInterno.Text := IntToStr(TControllerMatMed(FController).Model.Cod_Interno);
  CbxControlado.ItemIndex := TControllerMatMed(FController).Model.Controlado;
  CbxTipoApresentacao.ItemIndex := TControllerMatMed(FController).Model.Tipo_Apresentacao;
  edtEstoqueMinimo.Text := FloatToStr(TControllerMatMed(FController).Model.Estoque_minimo);
  edtCustoMedio.Text := FloatToStr(TControllerMatMed(FController).Model.Custo_medio);

  edtUnidadeMedida.Text := IntToStr(TControllerMatMed(FController).Model.Id_unidade);
  lblUnidadeMedida.Caption := TControllerMatMed(FController).
                            GetDescricaoUnidade(TControllerMatMed(FController).
                              Model.Id_unidade, iALTERANDO);

  edtGrupo.Text := IntToStr(TControllerMatMed(FController).Model.Id_grupo);
  lblGrupo.Caption := TControllerMatMed(FController).
                            GetDescricaoGrupo(TControllerMatMed(FController).
                              Model.Id_grupo, iALTERANDO);

  edtLocal.Text := IntToStr(TControllerMatMed(FController).Model.Id_local);
  lblLocal.Caption := TControllerMatMed(FController).
                            GetDescricaoLocal(TControllerMatMed(FController).
                              Model.Id_unidade, iALTERANDO);
end;

procedure TFrmMatMeds.consultar;
begin
  TControllerMatMed(FController).Model.Situacao := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      TControllerMatMed(FController).Model.Id := StrToInt(trim(edtConsulta.Text));
    iNOME:
      TControllerMatMed(FController).Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;
  TControllerMatMed(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TFrmMatMeds.edtGrupoExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtGrupo.Text,vValue) then
    lblGrupo.Caption := TControllerMatMed(FController).GetDescricaoGrupo(vValue,iINCLUINDO);
end;

procedure TFrmMatMeds.edtLocalExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtLocal.Text,vValue) then
    lblLocal.Caption := TControllerMatMed(FController).GetDescricaoLocal(vValue,iINCLUINDO);
end;

procedure TFrmMatMeds.edtUnidadeMedidaExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtUnidadeMedida.Text,vValue) then
    lblUnidadeMedida.Caption := TControllerMatMed(FController).GetDescricaoUnidade(vValue,iINCLUINDO);
end;

procedure TFrmMatMeds.FormCreate(Sender: TObject);
begin
  FController := TControllerMatMed.Create;
  inherited;
end;

procedure TFrmMatMeds.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.

