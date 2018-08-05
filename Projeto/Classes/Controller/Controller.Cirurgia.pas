unit Controller.Cirurgia;

interface

uses
  Lca.Orm.Comp.FireDac, Conexao, Data.DB,
  unConstantes, Model.Cirurgia;

type
  TControllerCirurgia = class(TDaoFireDac)

  private
    FModel: TCirurgia;
    FConexao: TConexao;
    function GetDataSource: TDataSource;
    procedure SetModel(const Value: TCirurgia);

  public
    FDao: TDaoFireDac;
    FDsCirurgia: TDataSource;
    FRegistrosCirurgia: TDataSet;

    constructor Create;
    destructor Destroy; override;

    procedure consultar(sCampoWhere, sOrderBy: string);
    procedure mostraDados;
    procedure alimentaCamposModel;

    property Model: TCirurgia read FModel write SetModel;
    property DataSource: TDataSource read GetDataSource write FDsCirurgia;
  end;

implementation

{ TControllerPaciente }

procedure TControllerCirurgia.alimentaCamposModel;
begin
  Model.Id := FRegistrosCirurgia.FieldByName('id').AsInteger;
  Model.Descricao := FRegistrosCirurgia.FieldByName('descricao').AsString;
  Model.Situacao := FRegistrosCirurgia.FieldByName('situacao').AsString;
end;

procedure TControllerCirurgia.consultar(sCampoWhere, sOrderBy: string);
begin
  try
    FRegistrosCirurgia := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

    FDsCirurgia.DataSet := FRegistrosCirurgia;
    alimentaCamposModel;
  finally

  end;
end;

constructor TControllerCirurgia.Create;
begin
  FConexao    := TConexao.Create;
  FDsCirurgia := TDataSource.Create(nil);
  FRegistrosCirurgia  := TDataSet.Create(nil);
  FModel:= TCirurgia.Create;

  inherited Create(FConexao.FdCon,FConexao.FdTran);
  FDao        := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
end;

destructor TControllerCirurgia.Destroy;
begin
  FRegistrosCirurgia.Free;
  FDsCirurgia.Free;
  FModel.Free;
  FConexao.Free;
  FDao.Free;
  inherited Destroy;
end;

function TControllerCirurgia.GetDataSource: TDataSource;
begin
  Result := FDsCirurgia;
end;

procedure TControllerCirurgia.mostraDados;
begin
  try
    FModel.Situacao := sATIVO;

    FRegistrosCirurgia  := FDao.ConsultaTab(FModel,['*'],['situacao'],[],semLike);

    FDsCirurgia.DataSet := FRegistrosCirurgia;
    alimentaCamposModel;
  finally

  end;
end;

procedure TControllerCirurgia.SetModel(const Value: TCirurgia);
begin
  FModel := Value;
end;

end.
