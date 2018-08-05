unit Controller.PrescricaoEnfermagem;

interface

uses
  Lca.Orm.Comp.FireDac, Model.PrescricaoEnfermagem, Conexao, Data.DB,
  unConstantes;

type
  TControllerPrescricaoEnfermagem = class(TDaoFireDac)

  private
    FModel: TPrescricoes_enfermagem;
    FConexao: TConexao;
    function GetFDataSource: TDataSource;

  public
    FDao: TDaoFireDac;
    FPrescricaoEnfermagem: TPrescricoes_enfermagem;
    FDataSourcePrescricaoEnfermagem: TDataSource;
    FRegistrosPrescricaoEnfermagem: TDataSet;

    constructor Create;
    destructor Destroy; override;

    procedure consultar(sCampoWhere, sOrderBy: string);
    procedure mostraDados;
    procedure alimentaCamposModel;

    property Model: TPrescricoes_enfermagem read FModel write FModel;
    property DataSource: TDataSource read GetFDataSource
      write FDataSourcePrescricaoEnfermagem;
  end;

implementation

{ TControllerPaciente }

procedure TControllerPrescricaoEnfermagem.alimentaCamposModel;
begin
  FModel.Id         := FRegistrosPrescricaoEnfermagem.FieldByName('id').AsInteger;
  FModel.Descricao  := FRegistrosPrescricaoEnfermagem.FieldByName('descricao').AsString;
  FModel.Situacao   := FRegistrosPrescricaoEnfermagem.FieldByName('situacao').AsString;
end;

procedure TControllerPrescricaoEnfermagem.consultar(sCampoWhere, sOrderBy: string);
begin
  try
    FRegistrosPrescricaoEnfermagem := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

    FDataSourcePrescricaoEnfermagem.DataSet := FRegistrosPrescricaoEnfermagem;
    alimentaCamposModel;
  finally

  end;
end;

constructor TControllerPrescricaoEnfermagem.Create;
begin
  FConexao    := TConexao.Create;
  FDataSourcePrescricaoEnfermagem := TDataSource.Create(nil);
  FRegistrosPrescricaoEnfermagem  := TDataSet.Create(nil);
  FModel:= TPrescricoes_enfermagem.Create;

  inherited Create(FConexao.FdCon,FConexao.FdTran);
  FDao        := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
end;

destructor TControllerPrescricaoEnfermagem.Destroy;
begin
  FRegistrosPrescricaoEnfermagem.Free;
  FDataSourcePrescricaoEnfermagem.Free;
  FModel.Free;
  FConexao.Free;
  FDao.Free;
  inherited Destroy;
end;

function TControllerPrescricaoEnfermagem.GetFDataSource: TDataSource;
begin
  Result := FDataSourcePrescricaoEnfermagem;
end;

procedure TControllerPrescricaoEnfermagem.mostraDados;
begin
  try
    FModel.Situacao := sATIVO;

    FRegistrosPrescricaoEnfermagem  := FDao.ConsultaTab(FModel,['situacao']);

    FDataSourcePrescricaoEnfermagem.DataSet := FRegistrosPrescricaoEnfermagem;
    alimentaCamposModel;
  finally

  end;
end;

end.
