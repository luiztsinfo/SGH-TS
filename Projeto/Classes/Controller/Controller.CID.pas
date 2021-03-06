unit Controller.CID;

interface

uses
  Lca.Orm.Comp.FireDac, Controller.Interfaces, Model.CID, Conexao, Data.DB,
  unConstantes, System.SysUtils, Model.GrupoCID;

type
  TControllerCID = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TCid;
      FGrupoCID              : TGrupos_cid;
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
      property    Model: TCid read FModel;
      property    DataSource: TDataSource read GetDataSource;
      function    GetDescricaoGrupoCID(AID: integer;iOperacao: integer): string;
  end;

implementation

{ TControllerCID }

procedure TControllerCID.AlimentaCamposModel;
begin
  FModel.Id         := FRegistros.FieldByName('id').AsString;
  FModel.Descricao  := FRegistros.FieldByName('descricao').AsString;
  FModel.Id_grupo_cid := FRegistros.FieldByName('id_grupo_cid').AsInteger;
  FModel.Sexo         := FRegistros.FieldByName('sexo').AsInteger;
  FModel.Causa_obito  := FRegistros.FieldByName('causa_obito').AsInteger
end;

procedure TControllerCID.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros  := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerCID.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TCID.Create;
  FGrupoCID        := TGrupos_cid.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerCID.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
  FGrupoCID.Free;
end;

procedure TControllerCID.Excluir;
begin
  Model.Situacao := sINATIVO;
  FDao.Salvar(Model);
end;

function TControllerCID.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id <> '' then
    Result := True;
end;

function TControllerCID.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

procedure TControllerCID.Incluir;
begin
//  Model.Id :=   FDao.GetID(Model,'id').ToString; // cid nunca ter� autoincremento
  FDao.Inserir(Model);
end;

procedure TControllerCID.MostraDados;
begin
  try
    FModel.Situacao := sATIVO;

    FRegistros := FDao.ConsultaTab(FModel,['*'],['situacao'],[],semLike);

    FDs.DataSet := FRegistros;
    alimentaCamposModel;
  finally

  end;
end;

function TControllerCID.GetDescricaoGrupoCID(AID: integer; iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FGrupoCID,'descricao','id',AID,iOperacao);
end;

end.
