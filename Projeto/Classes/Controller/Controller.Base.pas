unit Controller.Base;

interface

uses Model.Interfaces, Conexao, Data.DB, Lca.Orm.Comp.FireDac;

type
  TControllerBase = class
    private
      FModel     : iModelCadastros;
      FConexao   : TConexao;
      FRegistros : TDataSet;
      FDataSource: TDataSource;
    public
      FDao : TDaoFireDac;
      constructor Create;
      destructor  Destroy; override;
      procedure   Excluir;
  end;

implementation

{ TControllerBase }

constructor TControllerBase.Create;
begin
  FConexao         := TConexao.Create;
  FDataSource      := TDataSource.Create(nil);
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
end;

destructor TControllerBase.Destroy;
begin
  inherited;
  FConexao.Free;
  FDataSource.Free;
  FDao.Free;
end;

procedure TControllerBase.Excluir;
begin
//  Model.Situacao := sINATIVO;
//  FDao.Salvar(FModel);
end;

end.
