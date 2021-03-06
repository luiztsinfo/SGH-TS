unit Controller.TabelaPrecoMatMed;

interface

uses
  Lca.Orm.Comp.FireDac, Model.Tabela_Preco_MatMed, Conexao, Data.DB, unConstantes,
  Controller.Interfaces;

type
  TControllerTabelaPrecoMatMed = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TTabela_preco_matmed;
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
      property    Model: TTabela_preco_matmed read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

{ TControllerGrupoCID }

procedure TControllerTabelaPrecoMatMed.AlimentaCamposModel;
begin
  FModel.Id        := FRegistros.FieldByName('id').AsInteger;
  FModel.Descricao := FRegistros.FieldByName('descricao').AsString;
  FModel.Vigencia_geral := FRegistros.FieldByName('vigencia_geral').AsDateTime;
end;

procedure TControllerTabelaPrecoMatMed.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros  := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerTabelaPrecoMatMed.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TTabela_preco_matmed.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerTabelaPrecoMatMed.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
end;

procedure TControllerTabelaPrecoMatMed.Excluir;
begin
  Model.Situacao := sINATIVO;
  FDao.Salvar(Model);
end;

function TControllerTabelaPrecoMatMed.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerTabelaPrecoMatMed.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

procedure TControllerTabelaPrecoMatMed.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerTabelaPrecoMatMed.MostraDados;
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
