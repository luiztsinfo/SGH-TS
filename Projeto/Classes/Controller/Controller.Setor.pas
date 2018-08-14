unit Controller.Setor;

interface

uses Controller.Interfaces, Model.Setor,  Lca.Orm.Comp.FireDac,
  Conexao, Data.DB, unConstantes;

type
  TControllerSetor = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TSetores;
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
      property    Model: TSetores read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

{ TControllerFornecedor }

procedure TControllerSetor.AlimentaCamposModel;
begin
  FModel.Id := FRegistros.FieldByName('id').AsInteger;
  FModel.Descricao := FRegistros.FieldByName('descricao').AsString;
end;

procedure TControllerSetor.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros  := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerSetor.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TSetores.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerSetor.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
end;

procedure TControllerSetor.Excluir;
begin
  Model.Situacao := sINATIVO;
  FDao.Salvar(Model);
end;

function TControllerSetor.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerSetor.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

procedure TControllerSetor.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerSetor.MostraDados;
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
