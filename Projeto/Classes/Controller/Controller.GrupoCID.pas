unit Controller.GrupoCID;

interface

uses
  Lca.Orm.Comp.FireDac, Model.GrupoCID, Conexao, Data.DB, unConstantes,
  Controller.Interfaces;

type
  TControllerGrupoCID = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TGrupos_cid;
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
      property    Model: TGrupos_cid read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

{ TControllerGrupoCID }

procedure TControllerGrupoCID.AlimentaCamposModel;
begin
  FModel.Id        := FRegistros.FieldByName('id').AsInteger;
  FModel.Descricao := FRegistros.FieldByName('descricao').AsString;
end;

procedure TControllerGrupoCID.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros  := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerGrupoCID.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TGrupos_cid.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerGrupoCID.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
end;

procedure TControllerGrupoCID.Excluir;
begin
  Model.Situacao := sINATIVO;
  FDao.Salvar(Model);
end;

function TControllerGrupoCID.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerGrupoCID.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

procedure TControllerGrupoCID.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerGrupoCID.MostraDados;
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
