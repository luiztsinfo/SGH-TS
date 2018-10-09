unit Controller.ConsumosAtendimento;

interface

uses
  Conexao, Lca.Orm.Comp.FireDac, Model.Itens_Atendimento, Data.DB, System.SysUtils;

type
  TControllerConsumosAtendimento = class
    private
      FConexao: TConexao;
      FDao: TDaoFireDac;
      FModel: TItens_Atendimento;
      FRegistros: TDataSet;
      FDs: TDataSource;
    public
      constructor Create;
      destructor Destroy;
      function ConsultarDadosAtendimento(pID: integer): string;
  end;

implementation

{ TControllerConsumoAtendimento }

function TControllerConsumoAtendimento.ConsultarDadosAtendimento(
  pID: integer): string;
begin
  try

  except

  end;
end;

constructor TControllerConsumoAtendimento.Create;
begin
  FConexao := TConexao.Create;
  FDao := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  FModel := TItens_Atendimento.Create;
  FDs := TDataSource.Create(nil);
end;

destructor TControllerConsumoAtendimento.Destroy;
begin
  FreeAndNil(FConexao);
  FreeAndNil(FDao);
  FreeAndNil(FModel);
  FreeAndNil(FDs);
  inherited;
end;

end.
