unit Controller.Pessoa;

interface
    uses Lca.Orm.Comp.FireDac, Model.Pessoa, Conexao, Data.DB, System.SysUtils, Firedac.Comp.Client, Dialogs,
  Model.Cidades, unConstantes;

    type
       TControllerPaciente = class(TDaoFireDac)

       private
        FModel: TPessoa;
        FConexao: TConexao;
        function GetFDataSource: TDataSource;

       public
        FDao     : TDaoFireDac;
        FPessoa  : TPessoa;
        FCidade  : TCidade;
        FDataSourcePaciente : TDataSource;
        FDataSourceCidade   : TDataSource;
        FRegistrosPaciente : TDataSet;
        FRegistrosCidade   : TDataSet;

        constructor Create;
        destructor Destroy; override;

        procedure consultar(sCampoWhere,sOrderBy: string);
        procedure mostraDados;
        procedure alimentaCamposModel;
        function RetornaCidadePorNome: string;
        function RetornaCidadePorID: string;
        function retornaUltimoCliente: integer;

        property Model: TPessoa read FModel write FModel;
        property DataSource: TDataSource read GetFDataSource write FDataSourcePaciente;
       end;

implementation

{ TControllerGeneric }

procedure TControllerPaciente.alimentaCamposModel;
begin
  Model.Id  := FRegistrosPaciente.FieldByName('id').AsInteger;
  Model.Nome:= FRegistrosPaciente.FieldByName('nome').AsString;
  Model.Nascimento := FRegistrosPaciente.FieldByName('nascimento').AsDateTime;
  Model.Id_cidade  := FRegistrosPaciente.FieldByName('id_cidade').AsInteger;
  Model.Situacao   := FRegistrosPaciente.FieldByName('situacao').AsString;
  FCidade.Id       := FRegistrosPaciente.FieldByName('id_cidade').AsInteger;
end;

procedure TControllerPaciente.consultar(sCampoWhere,sOrderBy: string);
begin
  try
    FRegistrosPaciente := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

    FDataSourcePaciente.DataSet := FRegistrosPaciente;
    alimentaCamposModel;
  finally

  end;
end;

constructor TControllerPaciente.Create;
begin
  FConexao    := TConexao.Create;
  FDataSourcePaciente := TDataSource.Create(nil);
  FDataSourceCidade   := TDataSource.Create(nil);
  FRegistrosPaciente  := TDataSet.Create(nil);
  FRegistrosCidade    := TDataSet.Create(nil);
  FModel:= TPessoa.Create;

  inherited Create(FConexao.FdCon,FConexao.FdTran);
  FDao        := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  FPessoa     := TPessoa.Create;
  FCidade := TCidade.Create;
end;

destructor TControllerPaciente.Destroy;
begin
  FRegistrosPaciente.Free;
  FRegistrosCidade.Free;
  FDataSourcePaciente.Free;
  FDataSourceCidade.Free;
  FModel.Free;
  FConexao.Free;
  FDao.Free;
  FPessoa.Free;
  inherited Destroy;
end;

function TControllerPaciente.GetFDataSource: TDataSource;
begin
  Result := FDataSourcePaciente;
end;

procedure TControllerPaciente.mostraDados;
begin
  try
    FModel.Situacao := sATIVO;
    FModel.Tipo_pessoa := sTIPO_PESSOA_PACIENTE;

    FRegistrosPaciente  := FDao.ConsultaTab(FModel,['situacao','tipo_pessoa']);

    FDataSourcePaciente.DataSet := FRegistrosPaciente;
    alimentaCamposModel;
  finally

  end;
end;

function TControllerPaciente.RetornaCidadePorID: string;
begin
  try
    FRegistrosCidade := FDao.ConsultaTab(FCidade,['Id','Nome'],['Id'],['Nome'],false);  // tava sendo utilizado FDao.ConsultaTab(FCidade,['Id','Nome'],['Id'],[);

    FDataSourceCidade.DataSet := FRegistrosCidade;
    FCidade.Id    := FRegistrosCidade.FieldByName('id').AsInteger;
    FCidade.Nome  := FRegistrosCidade.FieldByName('nome').AsString;

    Result := FRegistrosCidade.FieldByName('nome').AsString;;
  finally

  end;
end;

function TControllerPaciente.RetornaCidadePorNome: string;
begin
  try
    FRegistrosCidade := FDao.ConsultaTab(FCidade,['Id','Nome'],['Nome'],['Nome'],true);// tava sendo utilizado FDao.ConsultaTab(FCidade,['Id','Nome'],['Nome'],true);

    FDataSourceCidade.DataSet := FRegistrosCidade;
    FCidade.Id    := FRegistrosCidade.FieldByName('id').AsInteger;
    FCidade.Nome  := FRegistrosCidade.FieldByName('nome').AsString;
  finally

  end;
end;

function TControllerPaciente.retornaUltimoCliente: integer;
begin
  FRegistrosPaciente := ConsultaSql('SELECT * FROM public.pessoas ORDER BY id');
  FRegistrosPaciente.Last;

  Result := FRegistrosPaciente.FieldByName('id').AsInteger + 1;
end;

end.
