unit Controller.Competencias;

interface

uses Controller.Interfaces, Model.Competencias, Lca.Orm.Comp.Firedac,
  Conexao, Data.DB, unConstantes, Model.Convenios;

type
  TControllerCompetencias = class(TInterfacedObject, iControllerCadastros)
    private
      FConvenio              : TConvenios;
      FModel                 : TCompetencias;
      FConexao               : TConexao;
      FRegistros             : TDataSet;
      FDs                    : TDataSource;
      function GetDataSource : TDataSource;
    public
      FDao: TDaoFireDac;
      constructor Create;
      destructor  Destroy; override;
      function GetNomeConvenio(AID, iOperacao: integer): string;
      procedure   Excluir;
      procedure   Consultar(sCampoWhere, sOrderBy: string);
      procedure   MostraDados;
      procedure   AlimentaCamposModel;
      procedure   Incluir;
      function    ExisteRegistro: Boolean;
      property    Model: TCompetencias read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

 { TControllerCompetencias }

procedure TControllerCompetencias.AlimentaCamposModel;
begin
  //Preencher com FModel.Campo := FRegistros(campo).AsInteger
  FModel.Id := FRegistros.FieldByName('id').AsInteger;
  FModel.Descricao := FRegistros.FieldByName('descricao').AsString;
  FModel.Status := FRegistros.FieldByName('status').AsInteger;
  FModel.Id_Convenio := FRegistros.FieldByName('id_convenio').AsInteger;
  FModel.Data_Abertura := FRegistros.FieldByName('data_abertura').AsDateTime;
  FModel.Data_Fechamento := FRegistros.FieldByName('data_fechamento').AsDateTime;
end;

procedure TControllerCompetencias.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerCompetencias.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TCompetencias.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  FConvenio        := TConvenios.Create;
  inherited;
end;

destructor TControllerCompetencias.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
  FConvenio.Free;
end;

procedure TControllerCompetencias.Excluir;
begin
  Model.Situacao := SINATIVO;
  FDao.Salvar(Model);
end;

function TControllerCompetencias.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerCompetencias.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

function TControllerCompetencias.GetNomeConvenio(AID,
  iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FConvenio,'nome','id',AID,iOperacao);
end;

procedure TControllerCompetencias.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerCompetencias.MostraDados;
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

