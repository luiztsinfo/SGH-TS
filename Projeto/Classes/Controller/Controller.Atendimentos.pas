unit Controller.Atendimentos;

interface

uses Model.Atendimentos, Data.DB, Lca.Orm.Comp.FireDac, Conexao, unConstantes,
  Model.Convenios, Model.Colaboradores, Model.Procedimento, Model.CID,
  Model.Setor, Model.Paciente, Vcl.Controls, Model.Responsavel_Paciente;

type
  TControllerAmbulatorial = class
    private
      FConexao: TConexao;
      FDao: TDaoFireDac;
      FModel: TAtendimento;
      FRegistros: TDataSet;
      FDs: TDataSource;
      FConvenio: TConvenios;
      FColaborador: TColaboradores;
      FProcedimento: TProcedimentos;
      FCID: TCid;
      FSetor: TSetores;
      FPaciente: TPacientes;
      FResponsavel: TResponsavel_Paciente;
    function GetDataSource: TDataSource;
    public
      procedure CleanModel;
      function GetResponsavelPaciente(AID: Integer;iOperacao: integer): string;
      function GetDescricaoSetor(AID: Integer;iOperacao: integer): string;
      function GetDescricaoCID(AID: string; iOperacao: integer): string;
      function GetDescricaoProcedimento(AID: Integer;iOperacao: integer): string;
      function GetNomePaciente(AID: Integer;iOperacao: integer): string;
      function GetNomeMedico(AID: Integer;iOperacao: integer): string;
      function GetNomeConvenio(AID: Integer;iOperacao: integer): string;
      function IncluirAtendimento: boolean;
      function AlterarAtendimento(IDAtendimento: integer): boolean;
      function CancelarAtendimento: boolean;
      function CarregarDadosAtendimento: boolean;

      function ConsultarAtendimento(DataInicial,DataFinal: TDateTime;
        Status: string): integer; overload;

      function ConsultarAtendimento(DataInicial,DataFinal: TDateTime;
        IDPaciente: integer;Status: string): integer; overload;

      function ConsultarAtendimento(IDAtendimento: integer): integer; overload;

      constructor Create;
      destructor Destroy; override;
      property Model: TAtendimento read FModel write FModel;
      property DataSource: TDataSource read GetDataSource;
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ TControllerAmbulatorial }

function TControllerAmbulatorial.AlterarAtendimento(
  IDAtendimento: integer): boolean;
begin
  FModel.Id := IDAtendimento;
  FDao.Salvar(FModel);
end;

function TControllerAmbulatorial.CancelarAtendimento: boolean;
begin
  if MessageDlg('Deseja realmente cancelar o atendimento selecionado?'+#13+#13+
  'Processo irrevers�vel!',mtInformation,[mbYes,mbNo],0)=mrYes then
    begin
      FModel.Status := 'C';
      FDao.Salvar(FModel);
    end;
end;

function TControllerAmbulatorial.CarregarDadosAtendimento: boolean;
begin
  FModel.Id := FRegistros.FieldByName('id').AsInteger;
  FModel.Data_atendimento := FRegistros.FieldByName('data_Atendimento').AsDateTime;
  FModel.Carater := FRegistros.FieldByName('carater').AsInteger;
  FModel.Id_medico_responsavel := FRegistros.FieldByName('id_medico_responsavel').AsInteger;
  FModel.Id_procedimento := FRegistros.FieldByName('id_procedimento').AsInteger;
  FModel.Id_cid_provisorio := FRegistros.FieldByName('id_cid_provisorio').AsString;
  FModel.Id_setor := FRegistros.FieldByName('id_setor').AsInteger;
  FModel.Tipo_clinica := FRegistros.FieldByName('tipo_clinica').AsInteger;
  FModel.Tipo_atendimento := FRegistros.FieldByName('tipo_atendimento').AsInteger;
  FModel.Id_convenio := FRegistros.FieldByName('id_convenio').AsInteger;
  FModel.Id_responsavel := FRegistros.FieldByName('id_responsavel').AsInteger;
  FModel.Responsavel_paciente := FRegistros.FieldByName('responsavel_paciente').AsInteger;
  FModel.Data_alta := FRegistros.FieldByName('data_alta').AsDateTime;
  FModel.Id_cid_definitivo := FRegistros.FieldByName('id_cid_definitivo').AsString;
  FModel.Motivo_alta := FRegistros.FieldByName('motivo_alta').AsInteger;
  FModel.Tipo_saida_tiss := FRegistros.FieldByName('tipo_saida_tiss').AsInteger;
  FModel.Id_encaminhamento := FRegistros.FieldByName('id_encaminhamento').AsInteger;
  FModel.Transferido_para := FRegistros.FieldByName('transferido_para').AsString;
  FModel.Status := FRegistros.FieldByName('status').AsString;
  FModel.Id_paciente := FRegistros.FieldByName('id_paciente').AsInteger;
  FModel.Hora_atendimento := FRegistros.FieldByName('hora_atendimento').AsDateTime;
  FModel.Hora_alta := FRegistros.FieldByName('hora_Alta').AsDateTime;
end;

procedure TControllerAmbulatorial.CleanModel;
begin
  Model.Id := 0;
  Model.Data_atendimento := 0;
  Model.Carater := 0;
  Model.Id_medico_responsavel := 0;
  Model.Id_procedimento := 0;
  Model.Id_cid_provisorio := '';
  Model.Id_setor := 0;
  Model.Tipo_clinica := 0;
  Model.Tipo_atendimento := 0;
  Model.Id_convenio := 0;
  Model.Id_responsavel := 0;
  Model.Responsavel_paciente := 0;
  Model.Data_alta := 0;
  Model.Id_cid_definitivo := '';
  Model.Motivo_alta := 0;
  Model.Tipo_saida_tiss := 0;
  Model.Id_encaminhamento := 0;
  Model.Transferido_para := '';
  Model.Status := '';
  Model.Id_paciente := 0;
  Model.Hora_atendimento := 0;
  Model.Hora_alta := 0;
end;

function TControllerAmbulatorial.ConsultarAtendimento(
  IDAtendimento: integer): integer;
var
  ConsultaSQL: TStringBuilder;
  pParams: array[0..0] of Variant;
begin
  try
    ConsultaSQL := TStringBuilder.Create;

    pParams[0] := IDAtendimento;

    ConsultaSQL.Append(' SELECT amb.*, pac.nome');
    ConsultaSQL.Append(' FROM atendimentos.atendimentos amb');
    ConsultaSQL.Append(' LEFT JOIN pacientes pac');
    ConsultaSQL.Append(' ON pac.id = amb.id_paciente');
    ConsultaSQL.Append(' WHERE amb.ID = :param1');

    FRegistros := FDao.ConsultaSql(ConsultaSQL.ToString,pParams);
    FDs.DataSet := FRegistros;
  finally
    FreeAndNil(ConsultaSQL);
  end;
end;

function TControllerAmbulatorial.ConsultarAtendimento(DataInicial,
  DataFinal: TDateTime; IDPaciente: integer; Status: string): integer;
var
  ConsultaSQL: TStringBuilder;
  pParams: array[0..3] of Variant;
begin
  pParams[0] := IDPaciente;
  pParams[1] := DataInicial;
  pParams[2] := DataFinal;

  try
    ConsultaSQL := TStringBuilder.Create;

    ConsultaSQL.Append(' SELECT amb.*, pac.nome');
    ConsultaSQL.Append(' FROM atendimentos.atendimentos amb');
    ConsultaSQL.Append(' LEFT JOIN pacientes pac');
    ConsultaSQL.Append(' ON pac.id = amb.id_paciente');
    ConsultaSQL.Append(' WHERE amb.id_paciente = :param1');
    ConsultaSQL.Append(' AND amb.data_atendimento BETWEEN :param2 AND :param3');

    if Status <> stTODOS then
      begin
        pParams[3] := Status;
        ConsultaSQL.Append(' AND amb.status = :param4');
      end;

    FRegistros := FDao.ConsultaSql(ConsultaSQL.ToString,pParams);
    FDs.DataSet := FRegistros;
  finally
    ConsultaSQL.Free;
  end;
end;

function TControllerAmbulatorial.ConsultarAtendimento(DataInicial,
  DataFinal: TDateTime; Status: string): integer;
var
  ConsultaSQL: TStringBuilder;
  pParams: array[0..2] of Variant;
begin
  pParams[0] := DataInicial;
  pParams[1] := DataFinal;

  try
    ConsultaSQL := TStringBuilder.Create;

    ConsultaSQL.Append(' SELECT amb.*, pac.nome');
    ConsultaSQL.Append(' FROM atendimentos.atendimentos amb');
    ConsultaSQL.Append(' LEFT JOIN pacientes pac');
    ConsultaSQL.Append(' ON pac.id = amb.id_paciente');

    ConsultaSQL.Append(' WHERE amb.data_atendimento BETWEEN :param1 AND :param2');

    if Status <> stTODOS then
      begin
        pParams[2] := Status;
        ConsultaSQL.Append(' AND amb.status = :param3');
      end;

    FRegistros := FDao.ConsultaSql(ConsultaSQL.ToString,pParams);
    FDs.DataSet := FRegistros;
  finally
    ConsultaSQL.Free;
  end;
end;

constructor TControllerAmbulatorial.Create;
begin
  FConexao := TConexao.Create;
  FDao := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  FModel := TAtendimento.Create;
  FDs := TDataSource.Create(nil);
  FConvenio := TConvenios.Create;
  FColaborador := TColaboradores.Create;
  FProcedimento := TProcedimentos.Create;
  FCID := TCid.Create;
  FSetor := TSetores.Create;
  FPaciente := TPacientes.Create;
  FResponsavel := TResponsavel_Paciente.Create;
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
  FResponsavel.Free;
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

function TControllerAmbulatorial.GetResponsavelPaciente(AID,
  iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FResponsavel,'nome','id',AID,iOperacao);
end;

function TControllerAmbulatorial.IncluirAtendimento: boolean;
begin
  Model.Id := FDao.GetID(Model,'id');
  if FDao.Inserir(FModel,['ConsultaSQL','OrderBySQL','ExisteWhere']) > 0 then
    Result := True;
end;

end.