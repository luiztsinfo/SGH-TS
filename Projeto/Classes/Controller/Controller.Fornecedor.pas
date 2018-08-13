unit Controller.Fornecedor;

interface

uses Controller.Interfaces, Model.Fornecedor,  Lca.Orm.Comp.FireDac,
  Conexao, Data.DB, unConstantes;

type
  TControllerFornecedor = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TFornecedores;
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
      property    Model: TFornecedores read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

{ TControllerFornecedor }

procedure TControllerFornecedor.AlimentaCamposModel;
begin
  FModel.Id := FRegistros.FieldByName('id').AsInteger;
  FModel.Razaosocial := FRegistros.FieldByName('razaosocial').AsString;
end;

procedure TControllerFornecedor.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros  := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerFornecedor.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TFornecedores.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerFornecedor.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
end;

procedure TControllerFornecedor.Excluir;
begin
  Model.Situacao := sINATIVO;
  FDao.Salvar(Model);
end;

function TControllerFornecedor.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerFornecedor.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

procedure TControllerFornecedor.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerFornecedor.MostraDados;
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
