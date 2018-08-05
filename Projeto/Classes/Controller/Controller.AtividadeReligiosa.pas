unit Controller.AtividadeReligiosa;

interface

uses
  Lca.Orm.Comp.FireDac, Conexao, Data.DB,
  unConstantes, Model.AtividadeReligiosa;

type
  TControllerAtividadeReligiosa = class(TDaoFireDac)

  private
    FModel: TAtividadeReligiosa;
    FConexao: TConexao;
    function GetDataSource: TDataSource;
    procedure SetModel(const Value: TAtividadeReligiosa);

  public
    FDao: TDaoFireDac;
    FDsAtividadeReligiosa: TDataSource;
    FRegistrosAtividadeReligiosa: TDataSet;

    constructor Create;
    destructor Destroy; override;

    procedure consultar(sCampoWhere, sOrderBy: string);
    procedure mostraDados;
    procedure alimentaCamposModel;

    property Model: TAtividadeReligiosa read FModel write SetModel;
    property DataSource: TDataSource read GetDataSource write FDsAtividadeReligiosa;
  end;

implementation

{ TControllerPaciente }

procedure TControllerAtividadeReligiosa.alimentaCamposModel;
begin
  Model.Id := FRegistrosAtividadeReligiosa.FieldByName('id').AsInteger;
  Model.Descricao := FRegistrosAtividadeReligiosa.FieldByName('descricao').AsString;
  Model.Situacao := FRegistrosAtividadeReligiosa.FieldByName('situacao').AsString;
end;

procedure TControllerAtividadeReligiosa.consultar(sCampoWhere, sOrderBy: string);
begin
  try
    FRegistrosAtividadeReligiosa := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

    FDsAtividadeReligiosa.DataSet := FRegistrosAtividadeReligiosa;
    alimentaCamposModel;
  finally

  end;
end;

constructor TControllerAtividadeReligiosa.Create;
begin
  FConexao    := TConexao.Create;
  FDsAtividadeReligiosa := TDataSource.Create(nil);
  FRegistrosAtividadeReligiosa  := TDataSet.Create(nil);
  FModel:= TAtividadeReligiosa.Create;

  inherited Create(FConexao.FdCon,FConexao.FdTran);
  FDao        := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
end;

destructor TControllerAtividadeReligiosa.Destroy;
begin
  FRegistrosAtividadeReligiosa.Free;
  FDsAtividadeReligiosa.Free;
  FModel.Free;
  FConexao.Free;
  FDao.Free;
  inherited Destroy;
end;

function TControllerAtividadeReligiosa.GetDataSource: TDataSource;
begin
  Result := FDsAtividadeReligiosa;
end;

procedure TControllerAtividadeReligiosa.mostraDados;
begin
  try
    FModel.Situacao := sATIVO;

    FRegistrosAtividadeReligiosa  := FDao.ConsultaTab(FModel,['*'],['situacao'],[],semLike);

    FDsAtividadeReligiosa.DataSet := FRegistrosAtividadeReligiosa;
    alimentaCamposModel;
  finally

  end;
end;

procedure TControllerAtividadeReligiosa.SetModel(const Value: TAtividadeReligiosa);
begin
  FModel := Value;
end;

end.
