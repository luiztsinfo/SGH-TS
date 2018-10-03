unit Controller.MatMed;

interface

uses Controller.Interfaces, Model.MatMed, Lca.Orm.Comp.Firedac,
  Conexao, Data.DB, unConstantes, Model.Grupos_MatMed, Model.Locais_MatMed,
  Model.Unidades_MatMed;

type
  TControllerMatMed = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TMatMed;
      FConexao               : TConexao;
      FRegistros             : TDataSet;
      FDs                    : TDataSource;
      FGrupo                 : TGrupos_MatMed;
      FLocal                 : TLocais_MatMed;
      FUnidade               : TUnidades_MatMed;
      function GetDataSource : TDataSource;
    public
      FDao: TDaoFireDac;
      constructor Create;
      destructor  Destroy; override;
      procedure   Excluir;
      procedure   Consultar(sCampoWhere, sOrderBy: string);
      procedure   MostraDados;
      procedure   AlimentaCamposModel;
      procedure   Incluir;
      function    ExisteRegistro: Boolean;
      function    GetDescricaoGrupo(AID: Integer;iOperacao: integer): string;
      function    GetDescricaoLocal(AID: Integer;iOperacao: integer): string;
      function    GetDescricaoUnidade(AID: Integer;iOperacao: integer): string;
      property    Model: TMatMed read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

 { TControllerMatMed }

procedure TControllerMatMed.AlimentaCamposModel;
begin
  FModel.Id := FRegistros.FieldByName('id').AsInteger;
  FModel.Cod_Interno := FRegistros.FieldByName('cod_interno').AsInteger;
  FModel.Descricao := FRegistros.FieldByName('descricao').AsString;
  FModel.Id_grupo := FRegistros.FieldByName('id_grupo').AsInteger;
  FModel.Controlado := FRegistros.FieldByName('controlado').AsInteger;
  FModel.Tipo_Apresentacao := FRegistros.FieldByName('tipo_apresentacao').AsInteger;
  FModel.Id_local := FRegistros.FieldByName('id_local').AsInteger;
  FModel.Estoque_minimo := FRegistros.FieldByName('estoque_minimo').AsFloat;
  FModel.Custo_medio := FRegistros.FieldByName('custo_medio').AsFloat;
  TNumericField(FRegistros.FieldByName('custo_medio')).DisplayFormat := ',0.00;-,0.00';
  FModel.Id_unidade := FRegistros.FieldByName('id_unidade').AsInteger;
end;

procedure TControllerMatMed.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerMatMed.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TMatMed.Create;
  FGrupo           := TGrupos_MatMed.Create;
  FUnidade         := TUnidades_MatMed.Create;
  FLocal           := TLocais_MatMed.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerMatMed.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FGrupo.Free;
  FUnidade.Free;
  FLocal.Free;
  FDao.Free;
end;

procedure TControllerMatMed.Excluir;
begin
  Model.Situacao := SINATIVO;
  FDao.Salvar(Model);
end;

function TControllerMatMed.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerMatMed.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

function TControllerMatMed.GetDescricaoGrupo(AID, iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FGrupo,'descricao','id',AID,iOperacao);
end;

function TControllerMatMed.GetDescricaoLocal(AID, iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FLocal,'descricao','id',AID,iOperacao);
end;

function TControllerMatMed.GetDescricaoUnidade(AID, iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FUnidade,'descricao','id',AID,iOperacao);
end;

procedure TControllerMatMed.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerMatMed.MostraDados;
begin
  try
    FModel.Situacao := sATIVO;

    FRegistros := FDao.ConsultaTab(FModel,['*'],['situacao'],[],semLike);

    FDs.DataSet := FRegistros;
    alimentaCamposModel;
  finally

  end;
end;
end.

