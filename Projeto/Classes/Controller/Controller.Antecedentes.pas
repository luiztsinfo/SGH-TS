unit Controller.Antecedentes;

interface

uses
  Lca.Orm.Comp.FireDac, Model.Antecedentes, Conexao, Data.DB,
  unConstantes;

type
  TControllerAntecedente = class(TDaoFireDac)

  private
    FModel: TAntecedentes;
    FConexao: TConexao;
    function GetDataSource: TDataSource;
    procedure SetModel(const Value: TAntecedentes);

  public
    FDao: TDaoFireDac;
    FDsAntecedente: TDataSource;
    FRegistrosAntecedente: TDataSet;

    constructor Create;
    destructor Destroy; override;

    procedure consultar(sCampoWhere, sOrderBy: string);
    procedure mostraDados;
    procedure alimentaCamposModel;

    property Model: TAntecedentes read FModel write SetModel;
    property DataSource: TDataSource read GetDataSource write FDsAntecedente;
  end;

implementation

{ TControllerPaciente }

procedure TControllerAntecedente.alimentaCamposModel;
begin
  Model.Id := FRegistrosAntecedente.FieldByName('id').AsInteger;
  Model.Descricao := FRegistrosAntecedente.FieldByName('descricao').AsString;
  Model.Tipo_antecedente := FRegistrosAntecedente.FieldByName('tipo_antecedente').AsInteger;
  Model.Situacao := FRegistrosAntecedente.FieldByName('situacao').AsString;
end;

procedure TControllerAntecedente.consultar(sCampoWhere, sOrderBy: string);
begin
  try
    FRegistrosAntecedente := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

    FDsAntecedente.DataSet := FRegistrosAntecedente;
    alimentaCamposModel;
  finally

  end;
end;

constructor TControllerAntecedente.Create;
begin
  FConexao    := TConexao.Create;
  FDsAntecedente := TDataSource.Create(nil);
  FRegistrosAntecedente  := TDataSet.Create(nil);
  FModel:= TAntecedentes.Create;

  inherited Create(FConexao.FdCon,FConexao.FdTran);
  FDao        := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
end;

destructor TControllerAntecedente.Destroy;
begin
  FRegistrosAntecedente.Free;
  FDsAntecedente.Free;
  FModel.Free;
  FConexao.Free;
  FDao.Free;
  inherited Destroy;
end;

function TControllerAntecedente.GetDataSource: TDataSource;
begin
  Result := FDsAntecedente;
end;

procedure TControllerAntecedente.mostraDados;
begin
  try
    FModel.Situacao := sATIVO;

    FRegistrosAntecedente  := FDao.ConsultaTab(FModel,['*'],['situacao'],[],semLike);

    FDsAntecedente.DataSet := FRegistrosAntecedente;
    alimentaCamposModel;
  finally

  end;
end;

procedure TControllerAntecedente.SetModel(const Value: TAntecedentes);
begin
  FModel := Value;
end;

end.
