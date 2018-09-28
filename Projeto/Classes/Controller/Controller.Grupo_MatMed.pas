unit Controller.Grupo_MatMed;

interface

uses Controller.Interfaces, Model.Grupos_MatMed, Lca.Orm.Comp.Firedac,
  Conexao, Data.DB, unConstantes;

type
  TControllerGrupo_MatMed = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TGrupos_MatMed;
      FConexao               : TConexao;
      FRegistros             : TDataSet;
      FDs                    : TDataSource;
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
      property    Model: TGrupos_MatMed read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

 { TControllerGrupo_MatMed }

procedure TControllerGrupo_MatMed.AlimentaCamposModel;
begin
  //Preencher com FModel.Campo := FRegistros(campo).AsInteger
  FModel.Id := FRegistros.FieldByName('id').AsInteger;
  FModel.Descricao := FRegistros.FieldByName('descricao').AsString;
end;

procedure TControllerGrupo_MatMed.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerGrupo_MatMed.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TGrupos_MatMed.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerGrupo_MatMed.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
end;

procedure TControllerGrupo_MatMed.Excluir;
begin
  Model.Situacao := SINATIVO;
  FDao.Salvar(Model);
end;

function TControllerGrupo_MatMed.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerGrupo_MatMed.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

procedure TControllerGrupo_MatMed.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerGrupo_MatMed.MostraDados;
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
