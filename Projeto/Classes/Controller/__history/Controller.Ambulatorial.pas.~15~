unit Controller.Ambulatorial;

interface

uses Model.Ambulatorial, Data.DB, Lca.Orm.Comp.FireDac, Conexao;

type
  TControllerAmbulatorial = class
    private
      FConexao: TConexao;
      FDao: TDaoFireDac;
      FModel: TAmbulatorial;
      FRegistros: TDataSet;
      FDataSource: TDataSource;
    public
      function IncluirAtendimento: boolean;
      function AlterarAtendimento(IDAtendimento: integer): boolean;
      function CancelarAtendimento(IDAtendimento: integer): boolean;
      function CarregarDadosAtendimento(IDAtendimento: integer): boolean;
      function ConsultarAtendimento(DataInicial,DataFinal: TDate): integer; overload;
      function ConsultarAtendimento(DataInicial,DataFinal: TDate;IDPaciente: integer): integer; overload;
      function ConsultarAtendimento(IDAtendimento: integer): integer; overload;

      constructor Create;
      destructor Destroy; override;
      property Model: TAmbulatorial read FModel write FModel;
      property Ds: TDataSource read FDataSource write FDataSource;
  end;

implementation

{ TControllerAmbulatorial }

function TControllerAmbulatorial.AlterarAtendimento(
  IDAtendimento: integer): boolean;
begin

end;

function TControllerAmbulatorial.CancelarAtendimento(
  IDAtendimento: integer): boolean;
begin

end;

function TControllerAmbulatorial.CarregarDadosAtendimento(
  IDAtendimento: integer): boolean;
begin

end;

function TControllerAmbulatorial.ConsultarAtendimento(
  IDAtendimento: integer): integer;
begin
  FRegistros := FDao.ConsultaSql('atendimentos.ambulatoriais','id');
end;

function TControllerAmbulatorial.ConsultarAtendimento(DataInicial,
  DataFinal: TDate; IDPaciente: integer): integer;
begin

end;

function TControllerAmbulatorial.ConsultarAtendimento(DataInicial,
  DataFinal: TDate): integer;
begin

end;

constructor TControllerAmbulatorial.Create;
begin
  FConexao := TConexao.Create;
  FDao := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  FModel := TAmbulatorial.Create;
  FRegistros := TDataSet.Create(nil);
  FDataSource := TDataSource.Create(nil);
  inherited;
end;

destructor TControllerAmbulatorial.Destroy;
begin
  FModel.Free;
  FRegistros.Free;
  FDataSource.Free;
  FConexao.Free;
  FDao.Free;
  inherited;
end;

function TControllerAmbulatorial.IncluirAtendimento: boolean;
begin
  if FDao.Inserir(FModel) > 0 then
    Result := True;
end;

end.
