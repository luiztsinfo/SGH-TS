unit Controller.Colaborador;

interface
    uses Lca.Orm.Comp.FireDac, Model.Pessoa, Conexao, Data.DB, System.SysUtils, Firedac.Comp.Client, Dialogs,
  Model.Cidades, unConstantes;

type
  TControllerColaborador = class(TDaoFireDac)

  private
    FModel: TPessoa;
    FConexao: TConexao;
    function GetFDataSource: TDataSource;

  public
    FDao: TDaoFireDac;
    FPessoa: TPessoa;
    FCidade: TCidade;
    FDataSourceColaborador: TDataSource;
    FDataSourceCidade: TDataSource;
    FRegistrosColaborador: TDataSet;
    FRegistrosCidade: TDataSet;

    constructor Create;
    destructor Destroy; override;

    procedure consultar(sCampoWhere, sOrderBy: string);
    procedure mostraDados;
    procedure alimentaCamposModel;
    function RetornaCidadePorNome: string;
    function RetornaCidadePorID: string;
    function retornaUltimoColaborador: integer;

    property Model: TPessoa read FModel write FModel;
    property DataSource: TDataSource read GetFDataSource
      write FDataSourceColaborador;
  end;

implementation

procedure TControllerColaborador.alimentaCamposModel;
begin
  Model.Id         := FRegistrosColaborador.FieldByName('id').AsInteger;
  Model.Nome       := FRegistrosColaborador.FieldByName('nome').AsString;
  Model.Nascimento := FRegistrosColaborador.FieldByName('nascimento').AsDateTime;
  Model.Id_cidade  := FRegistrosColaborador.FieldByName('id_cidade').AsInteger;
  Model.Situacao   := FRegistrosColaborador.FieldByName('situacao').AsString;
  FCidade.Id       := FRegistrosColaborador.FieldByName('id_cidade').AsInteger;
  Model.Tipo_Registro         := FRegistrosColaborador.FieldByName('tipo_registro').AsInteger;
  Model.Registro_profissional := FRegistrosColaborador.FieldByName('registro_profissional').AsString;
end;

procedure TControllerColaborador.consultar(sCampoWhere,sOrderBy: string);
begin
  try
    FRegistrosColaborador := FDao.ConsultaTab(FModel,['*'],['situacao','tipo_pessoa',sCampoWhere],sOrderBy,comLike);

    FDataSourceColaborador.DataSet := FRegistrosColaborador;
    alimentaCamposModel;
  finally

  end;
end;

constructor TControllerColaborador.Create;
begin
  FConexao                := TConexao.Create;
  FDataSourceColaborador  := TDataSource.Create(nil);
  FDataSourceCidade       := TDataSource.Create(nil);
  FRegistrosColaborador   := TDataSet.Create(nil);
  FRegistrosCidade        := TDataSet.Create(nil);
  FModel                  := TPessoa.Create;

  inherited Create(FConexao.FdCon,FConexao.FdTran);
  FDao        := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  FPessoa     := TPessoa.Create;
  FCidade     := TCidade.Create;
end;

destructor TControllerColaborador.Destroy;
begin
  FRegistrosColaborador.Free;
  FRegistrosCidade.Free;
  FDataSourceColaborador.Free;
  FDataSourceCidade.Free;
  FModel.Free;
  FConexao.Free;
  FDao.Free;
  FPessoa.Free;
  inherited Destroy;
end;

function TControllerColaborador.GetFDataSource: TDataSource;
begin
  Result := FDataSourceColaborador;
end;

procedure TControllerColaborador.mostraDados;
begin
  try
    FModel.Situacao := sATIVO;
    FModel.Tipo_pessoa := sTIPO_PESSOA_COLABORADOR;

    FRegistrosColaborador := FDao.ConsultaTab(FModel,['situacao','tipo_pessoa']);

    FDataSourceColaborador.DataSet := FRegistrosColaborador;
    alimentaCamposModel;
  finally

  end;
end;

function TControllerColaborador.RetornaCidadePorID: string;
begin
  try
    FRegistrosCidade := FDao.ConsultaTab(FCidade,['Id','Nome'],['Id'],['Nome'],false);

    FDataSourceCidade.DataSet := FRegistrosCidade;
    FCidade.Id    := FRegistrosCidade.FieldByName('id').AsInteger;
    FCidade.Nome  := FRegistrosCidade.FieldByName('nome').AsString;

    Result := FRegistrosCidade.FieldByName('nome').AsString;;
  finally

  end;
end;

function TControllerColaborador.RetornaCidadePorNome: string;
begin
  try
    FRegistrosCidade := FDao.ConsultaTab(FCidade,['Id','Nome'],['Nome'],['Nome'],true);

    FDataSourceCidade.DataSet := FRegistrosCidade;
    FCidade.Id    := FRegistrosCidade.FieldByName('id').AsInteger;
    FCidade.Nome  := FRegistrosCidade.FieldByName('nome').AsString;
  finally

  end;
end;

function TControllerColaborador.retornaUltimoColaborador: integer;
begin
  FRegistrosColaborador := ConsultaSql('SELECT * FROM public.pessoas ORDER BY id');
  FRegistrosColaborador.Last;

  Result := FRegistrosColaborador.FieldByName('id').AsInteger + 1;
end;

end.
