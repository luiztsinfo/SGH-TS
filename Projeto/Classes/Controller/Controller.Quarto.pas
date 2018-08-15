unit Controller.Quarto;

interface

uses Controller.Interfaces, Model.Quarto, Lca.Orm.Comp.Firedac,
  Conexao, Data.DB, unConstantes, Model.Setor;

type
  TControllerQuarto = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TQuartos;
      FSetor                 : TSetores;
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
      function    GetDescricaoSetor(AID: Integer;iOperacao: integer): string;
      function    ExisteRegistro: Boolean;
      property    Model: TQuartos read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

 { TControllerQuarto }

procedure TControllerQuarto.AlimentaCamposModel;
begin
  FModel.Id := FRegistros.FieldByName('id').AsInteger;
  FModel.Descricao := FRegistros.FieldByName('descricao').AsString;
  FModel.Id_setor := FRegistros.FieldByName('id_setor').AsInteger;
end;

procedure TControllerQuarto.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerQuarto.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TQuartos.Create;
  FSetor           := TSetores.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerQuarto.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FSetor.Free;
  FDao.Free;
end;

procedure TControllerQuarto.Excluir;
begin
  Model.Situacao := SINATIVO;
  FDao.Salvar(Model);
end;

function TControllerQuarto.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerQuarto.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

function TControllerQuarto.GetDescricaoSetor(AID, iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FSetor,'descricao','id',AID,iOperacao);
end;

procedure TControllerQuarto.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerQuarto.MostraDados;
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
