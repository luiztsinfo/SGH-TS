unit Controller.Ambulatorial;

interface

uses Model.Ambulatorial, Data.DB, Lca.Orm.Comp.FireDac, Conexao, unConstantes,
  Model.Convenios, Model.Colaboradores, Model.Procedimento, Model.CID,
  Model.Setor;

type
  TControllerAmbulatorial = class
    private
      FConexao: TConexao;
      FDao: TDaoFireDac;
      FModel: TAmbulatorial;
      FRegistros: TDataSet;
      FDataSource: TDataSource;
      FConvenio: TConvenios;
      FColaborador: TColaboradores;
      FProcedimento: TProcedimentos;
      FCID: TCid;
      FSetor: TSetores;
    public
      function GetDescricaoSetor(AID: Integer;iOperacao: integer): string;
      function GetDescricaoCID(AID: Integer;iOperacao: integer): string;
      function GetDescricaoProcedimento(AID: Integer;iOperacao: integer): string;
      function GetNomeMedico(AID: Integer;iOperacao: integer): string;
      function GetNomeConvenio(AID: Integer;iOperacao: integer): string;
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
  FConvenio := TConvenios.Create;
  FColaborador := TColaboradores.Create;
  FProcedimento := TProcedimentos.Create;
  FCID := TCid.Create;
  FSetor := TSetores.Create;
  inherited;
end;

destructor TControllerAmbulatorial.Destroy;
begin
  FModel.Free;
  FRegistros.Free;
  FDataSource.Free;
  FConexao.Free;
  FDao.Free;
  FConvenio.Free;
  FColaborador.Free;
  FProcedimento.Free;
  FCID.Free;
  FSetor.Free;
  inherited;
end;

function TControllerAmbulatorial.GetDescricaoCID(AID,
  iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FCID,'descricao','id',AID,iOperacao);
end;

function TControllerAmbulatorial.GetDescricaoProcedimento(AID,
  iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FProcedimento,'descricao','id',AID,iOperacao);
end;

function TControllerAmbulatorial.GetDescricaoSetor(AID,
  iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FSetor,'descricao','id',AID,iOperacao);
end;

function TControllerAmbulatorial.GetNomeConvenio(AID,
  iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FConvenio,'nome','id',AID,iOperacao);
end;

function TControllerAmbulatorial.GetNomeMedico(AID, iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FColaborador,'nome','id',AID,iOperacao);
end;

function TControllerAmbulatorial.IncluirAtendimento: boolean;
begin
  if FDao.Inserir(FModel) > 0 then
    Result := True;
end;

end.
