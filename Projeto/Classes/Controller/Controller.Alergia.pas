unit Controller.Alergia;

interface

uses
  Lca.Orm.Comp.FireDac, Conexao, Data.DB,
  unConstantes, Model.Alergia, Controller.Interfaces, Lca.Orm.Base,
  FireDAC.Comp.Client;

type
  TControllerAlergia = class(TDaoFireDac)
 // TControllerAlergia = class(TInterfacedObject, iControllerCadastros)

  private
    FModel: TAlergia;
    FConexao: TConexao;
    function GetDataSource: TDataSource;
    procedure SetModel(const Value: TAlergia);

  public
    FDao: TDaoFireDac;
    FDsAlergia: TDataSource;
    FRegistrosAlergia: TDataSet;

    constructor Create;
    destructor Destroy; override;

    procedure consultar(sCampoWhere, sOrderBy: string);
    procedure mostraDados;
    procedure alimentaCamposModel;

    property Model: TAlergia read FModel write SetModel;
    property DataSource: TDataSource read GetDataSource write FDsAlergia;
  end;

implementation

{ TControllerPaciente }

procedure TControllerAlergia.alimentaCamposModel;
begin
  Model.Id := FRegistrosAlergia.FieldByName('id').AsInteger;
  Model.Descricao := FRegistrosAlergia.FieldByName('descricao').AsString;
  Model.Tipo_alergia := FRegistrosAlergia.FieldByName('tipo_alergia').AsInteger;
  Model.Situacao := FRegistrosAlergia.FieldByName('situacao').AsString;
end;

procedure TControllerAlergia.consultar(sCampoWhere, sOrderBy: string);
begin
  try
    FRegistrosAlergia := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

    FDsAlergia.DataSet := FRegistrosAlergia;
    alimentaCamposModel;
  finally

  end;
end;

constructor TControllerAlergia.Create;
begin
  FConexao    := TConexao.Create;
  FDsAlergia := TDataSource.Create(nil);
  FRegistrosAlergia  := TDataSet.Create(nil);
  FModel:= TAlergia.Create;

  inherited Create(FConexao.FdCon,FConexao.FdTran);
  FDao        := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
end;

destructor TControllerAlergia.Destroy;
begin
  FRegistrosAlergia.Free;
  FDsAlergia.Free;
  FModel.Free;
  FConexao.Free;
  FDao.Free;
  inherited Destroy;
end;

function TControllerAlergia.GetDataSource: TDataSource;
begin
  Result := FDsAlergia;
end;

procedure TControllerAlergia.mostraDados;
begin
  try
    FModel.Situacao := sATIVO;

    FRegistrosAlergia  := FDao.ConsultaTab(FModel,['*'],['situacao'],[],semLike);

    FDsAlergia.DataSet := FRegistrosAlergia;
    alimentaCamposModel;
  finally

  end;
end;

procedure TControllerAlergia.SetModel(const Value: TAlergia);
begin
  FModel := Value;
end;

end.
