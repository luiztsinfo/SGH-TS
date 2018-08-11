unit Controller.Colaborador;

interface
    uses Lca.Orm.Comp.FireDac, Model.Pessoa, Conexao, Data.DB, System.SysUtils, Firedac.Comp.Client, Dialogs,
  Model.Cidades, unConstantes, Controller.Interfaces, Model.Colaboradores;

type
  TControllerColaborador = class(TInterfacedObject, iControllerCadastros)

  private
    FModel                 : TColaboradores;
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
    property    Model: TColaboradores read FModel;
    property    DataSource: TDataSource read GetDataSource;
  end;

implementation

procedure TControllerColaborador.alimentaCamposModel;
begin
  Model.Id   := FRegistros.FieldByName('id').AsInteger;
  Model.Nome := FRegistros.FieldByName('nome').AsString;
end;

procedure TControllerColaborador.consultar(sCampoWhere,sOrderBy: string);
begin
  FRegistros  := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);
  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerColaborador.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TColaboradores.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerColaborador.Destroy;
begin
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
  inherited Destroy;
end;

procedure TControllerColaborador.Excluir;
begin
  Model.Situacao := sINATIVO;
  FDao.Salvar(Model);
end;

function TControllerColaborador.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id <> 0 then
    Result := True;
end;

function TControllerColaborador.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

procedure TControllerColaborador.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerColaborador.mostraDados;
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
