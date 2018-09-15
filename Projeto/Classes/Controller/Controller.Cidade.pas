unit Controller.Cidade;

interface

uses Controller.Interfaces, Model.Cidades, Lca.Orm.Comp.Firedac,
  Conexao, Data.DB, unConstantes;

type
  TControllerCidade = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TCidade;
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
      property    Model: TCidade read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

 { TControllerCidade }

procedure TControllerCidade.AlimentaCamposModel;
begin
  FModel.Id        := FRegistros.FieldByName('id').AsInteger;
  FModel.Nome      := FRegistros.FieldByName('nome').AsString;
  FModel.Cep_Unico := FRegistros.FieldByName('cep_unico').AsInteger;
  FModel.Cep       := FRegistros.FieldByName('cep').AsString;
  FModel.Cod_IBGE  := FRegistros.FieldByName('cod_ibge').AsInteger;
  FModel.UF        := FRegistros.FieldByName('uf').AsInteger;
  FModel.Situacao  := FRegistros.FieldByName('situacao').AsString;
end;

procedure TControllerCidade.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerCidade.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TCidade.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerCidade.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
end;

procedure TControllerCidade.Excluir;
begin
  Model.Situacao := SINATIVO;
  FDao.Salvar(Model);
end;

function TControllerCidade.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerCidade.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

procedure TControllerCidade.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerCidade.MostraDados;
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
