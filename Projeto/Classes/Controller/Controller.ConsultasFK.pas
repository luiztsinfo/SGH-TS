unit Controller.ConsultasFK;

interface

uses Model.Faturas, Conexao, Lca.Orm.Comp.FireDac;

type
  TControllerConsultasFK = class
    private
      FFatura : TFaturas;
      FDao : TDaoFireDac;
      FConexao : TConexao;
    public
      function GetDescricaoFatura(AID,iOperacao: integer): string;
      constructor Create;
      destructor Destroy; override;
  end;

implementation

{ TControllerConsultasFK }

constructor TControllerConsultasFK.Create;
begin
  FFatura := TFaturas.Create;
  FConexao := TConexao.Create;
  FDao := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
end;

destructor TControllerConsultasFK.Destroy;
begin
  FFatura.Free;
  FConexao.Free;
  FDao.Free;
  inherited;
end;

function TControllerConsultasFK.GetDescricaoFatura(AID,
  iOperacao: integer): string;
begin
  Result := FDao.GetValueForeignKey(FFatura,'descricao','id',AID,iOperacao);
end;

end.
