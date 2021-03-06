unit Controller.Religiao;

interface

uses Controller.Interfaces, Model.Religiao, Lca.Orm.Comp.Firedac,
  Conexao, Data.DB, unConstantes;

type
  TControllerReligiao = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TReligioes;
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
      property    Model: TReligioes read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

 { TControllerReligiao }

procedure TControllerReligiao.AlimentaCamposModel;
begin
  FModel.Id         := FRegistros.FieldByName('id').AsInteger;
  FModel.Descricao  := FRegistros.FieldByName('descricao').AsString;
  FModel.Situacao   := FRegistros.FieldByName('situacao').AsString;
end;

procedure TControllerReligiao.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerReligiao.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TReligioes.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerReligiao.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
end;

procedure TControllerReligiao.Excluir;
begin
  Model.Situacao := SINATIVO;
  FDao.Salvar(Model);
end;

function TControllerReligiao.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerReligiao.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

procedure TControllerReligiao.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerReligiao.MostraDados;
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

