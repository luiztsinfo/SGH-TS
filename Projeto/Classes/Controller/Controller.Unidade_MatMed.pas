
unit Controller.Unidade_MatMed;

interface

uses Controller.Interfaces, Model.Unidades_MatMed, Lca.Orm.Comp.Firedac,
  Conexao, Data.DB, unConstantes;

type
  TControllerUnidade_MatMed = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TUnidades_MatMed;
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
      property    Model: TUnidades_MatMed read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

 { TControllerUnidade_MatMed }

procedure TControllerUnidade_MatMed.AlimentaCamposModel;
begin
  FModel.Id := FRegistros.FieldByName('id').AsInteger;
  FModel.Descricao := FRegistros.FieldByName('descricao').AsString;
  FModel.Abreviacao := FRegistros.FieldByName('abreviacao').AsString;
end;

procedure TControllerUnidade_MatMed.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerUnidade_MatMed.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TUnidades_MatMed.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerUnidade_MatMed.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
end;

procedure TControllerUnidade_MatMed.Excluir;
begin
  Model.Situacao := SINATIVO;
  FDao.Salvar(Model);
end;

function TControllerUnidade_MatMed.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerUnidade_MatMed.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

procedure TControllerUnidade_MatMed.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerUnidade_MatMed.MostraDados;
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


