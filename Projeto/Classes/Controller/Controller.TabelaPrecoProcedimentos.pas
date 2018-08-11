unit Controller.TabelaPrecoProcedimentos;

interface

uses
  Lca.Orm.Comp.FireDac, Conexao, Data.DB, unConstantes,
  Controller.Interfaces, Model.Tabela_Preco_Procedimentos;

type
  TControllerTabelaPrecoProcedimentos = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TTabela_preco_procedimentos;
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
      property    Model: TTabela_preco_procedimentos read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

{ TControllerGrupoCID }

procedure TControllerTabelaPrecoProcedimentos.AlimentaCamposModel;
begin
  FModel.Id        := FRegistros.FieldByName('id').AsInteger;
  FModel.Descricao := FRegistros.FieldByName('descricao').AsString;
  FModel.Vigencia_geral := FRegistros.FieldByName('vigencia_geral').AsDateTime;
end;

procedure TControllerTabelaPrecoProcedimentos.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros  := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerTabelaPrecoProcedimentos.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TTabela_preco_procedimentos.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerTabelaPrecoProcedimentos.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
end;

procedure TControllerTabelaPrecoProcedimentos.Excluir;
begin
  Model.Situacao := sINATIVO;
  FDao.Salvar(Model);
end;

function TControllerTabelaPrecoProcedimentos.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerTabelaPrecoProcedimentos.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

procedure TControllerTabelaPrecoProcedimentos.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerTabelaPrecoProcedimentos.MostraDados;
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
