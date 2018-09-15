unit Controller.Ambulatorial;

interface

uses Model.Ambulatorial, Data.DB, Lca.Orm.Comp.FireDac, Conexao, unConstantes,
  Model.Convenios, Model.Colaboradores, Model.Procedimento, Model.CID,
  Model.Setor, Model.Paciente;

type
  TControllerAmbulatorial = class
    private
      FConexao: TConexao;
      FDao: TDaoFireDac;
      FModel: TAmbulatorial;
      FRegistros: TDataSet;
      FDs: TDataSource;
      FConvenio: TConvenios;
      FColaborador: TColaboradores;
      FProcedimento: TProcedimentos;
      FCID: TCid;
      FSetor: TSetores;
      FPaciente: TPacientes;
    function GetDataSource: TDataSource;
    public
      function GetDescricaoSetor(AID: Integer;iOperacao: integer): string;
      function GetDescricaoCID(AID: string; iOperacao: integer): string;
      function GetDescricaoProcedimento(AID: Integer;iOperacao: integer): string;
      function GetNomePaciente(AID: Integer;iOperacao: integer): string;
      function GetNomeMedico(AID: Integer;iOperacao: integer): string;
      function GetNomeConvenio(AID: Integer;iOperacao: integer): string;
      function IncluirAtendimento: boolean;
      function AlterarAtendimento(IDAtendimento: integer): boolean;
      function CancelarAtendimento(IDAtendimento: integer): boolean;
      function CarregarDadosAtendimento(IDAtendimento: integer): boolean;
      function ConsultarAtendimento(DataInicial,DataFinal: TDateTime): integer; overload;
      function ConsultarAtendimento(DataInicial,DataFinal: TDateTime;IDPaciente: integer): integer; overload;
      function ConsultarAtendimento(IDAtendimento: integer): integer; overload;

      constructor Create;
      destructor Destroy; override;
      property Model: TAmbulatorial read FModel write FModel;
      property DataSource: TDataSource read GetDataSource;
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;

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
  DataFinal: TDateTime; IDPaciente: integer): integer;
begin

end;

function TControllerAmbulatorial.ConsultarAtendimento(DataInicial,
  DataFinal: TDateTime): integer;
var
  ConsultaSQL: String;
  pParams: array[0..1] of Variant;
begin
  pParams[0] := DataInicial;
  pParams[1] := DataFinal;

  ConsultaSQL := Concat(FModel.ConsultaSQL,
                  FModel.CondicaoBetween('amb.Data_atendimento'),
                    FModel.OrderBySQL);

  FRegistros := FDao.ConsultaSql(ConsultaSQL,pParams);
  FDs.DataSet := FRegistros;
end;

constructor TControllerAmbulatorial.Create;
begin
  FConexao := TConexao.Create;
  FDao := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  FModel := TAmbulatorial.Create;
  FDs := TDataSource.Create(nil);
  FConvenio := TConvenios.Create;
  FColaborador := TColaboradores.Create;
  FProcedimento := TProcedimentos.Create;
  FCID := TCid.Create;
  FSetor := TSetores.Create;
  FPaciente := TPacientes.Create;
  inherited;
end;

destructor TControllerAmbulatorial.Destroy;
begin
  inherited;
  FModel.Free;
  FDs.Free;
  FConexao.Free;
  FDao.Free;
  FConvenio.Free;
  FColaborador.Free;
  FProcedimento.Free;
  FCID.Free;
  FSetor.Free;
  FPaciente.Free;
end;

function TControllerAmbulatorial.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

function TControllerAmbulatorial.GetDescricaoCID(AID: string;
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

function TControllerAmbulatorial.GetNomePaciente(AID,
  iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FPaciente,'nome','id',AID,iOperacao);
end;

function TControllerAmbulatorial.IncluirAtendimento: boolean;
begin
  Model.Id := FDao.GetID(Model,'id');
  if FDao.Inserir(FModel,['ConsultaSQL','OrderBySQL']) > 0 then
    Result := True;
end;

end.
