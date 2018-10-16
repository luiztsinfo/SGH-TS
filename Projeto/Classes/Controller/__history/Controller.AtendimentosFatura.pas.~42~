unit Controller.AtendimentosFatura;

interface

uses
  Lca.Orm.Comp.FireDac, Conexao, Data.DB, Model.Atendimentos,
  Model.Atendimentos_Fatura, Model.Paciente, Vcl.Dialogs;

type
  TControllerAtendimentosFatura = class
    private
      FDao: TDaoFireDac;
      FConexao: TConexao;
      FRegistros: TDataSet;
      FDs: TDataSource;
      FAtendimentos: TAtendimento;
      FAtendimentos_Fatura: TAtendimentos_Fatura;
      FPaciente: TPacientes;
    public
      function GetNomePaciente(AID, iOperacao: integer): string;
      function ReabrirAtendimento(pIDAtendimento: integer): boolean;
      function BuscarAtendimentos(pIDFatura,pIDAtendimento: integer): boolean; overload;
      function BuscarAtendimentos(pIDFatura: integer;pDataInicial,pDataFinal: TDateTime): boolean; overload;
      function BuscarAtendimentos(pIDFatura,pPaciente: integer;pDataInicial,pDataFinal: TDateTime): boolean; overload;

      constructor Create;
      destructor Destroy; override;
      property Ds: TDataSource read FDs write FDs;
      property Registros: TDataSet read FRegistros write FRegistros;
  end;

implementation

uses
  System.SysUtils;

{ TControllerAtendimentosFatura }

{function TControllerAtendimentosFatura.BuscarAtendimentos(
  pIDFatura: integer): boolean;
var
  ConsultaSQL: TStringBuilder;
begin
  ConsultaSQL := TStringBuilder.Create;

  try
    ConsultaSQL.Append(' SELECT af.id_atendimento, p.nome AS Paciente,');
    ConsultaSQL.Append(' SUM(a.valor_total) As TotalGeral, a.valor_total,');
    ConsultaSQL.Append(' CASE WHEN a.tipo = 1 THEN :amb');
    ConsultaSQL.Append(' WHEN a.tipo = 2 THEN :int END AS Tipo');
    ConsultaSQL.Append(' FROM faturamento.atendimentos_fatura af');
    ConsultaSQL.Append(' INNER JOIN atendimentos.atendimentos a');
    ConsultaSQL.Append(' ON a.id = af.id_atendimento');
    ConsultaSQL.Append(' INNER JOIN pacientes p');
    ConsultaSQL.Append(' ON p.id = a.id_paciente');
    ConsultaSQL.Append(' WHERE af.id_fatura = :fatura');
    ConsultaSQL.Append(' AND a.status_faturamento = :status');
    ConsultaSQL.Append(' GROUP BY af.id_atendimento, p.nome, a.valor_total, a.tipo');
    FRegistros := FDao.ConsultaSql(ConsultaSQL.ToString,['Ambulatorial','Internação',pIDFatura,'C']);

    TNumericField(FRegistros.FieldByName('valor_total')).DisplayFormat := ',0.00;-,0.00';
    TNumericField(FRegistros.FieldByName('TotalGeral')).DisplayFormat := ',0.00;-,0.00';

    FDs.DataSet := FRegistros;
    FreeAndNil(ConsultaSQL);
    Result := True;
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro ao buscar atendimentos da fatura!' +#13+ e.Message);
      Result := False;
    end;
  end;
end;          }

function TControllerAtendimentosFatura.BuscarAtendimentos(pIDFatura,pPaciente: integer;pDataInicial,
  pDataFinal: TDateTime): boolean;
var
  ConsultaSQL: TStringBuilder;
begin
  ConsultaSQL := TStringBuilder.Create;

  try
    ConsultaSQL.Append(' SELECT af.id_atendimento, p.nome AS Paciente,');
    ConsultaSQL.Append(' SUM(a.valor_total) As TotalGeral, a.valor_total,');
    ConsultaSQL.Append(' CASE WHEN a.tipo = 1 THEN :amb');
    ConsultaSQL.Append(' WHEN a.tipo = 2 THEN :int END AS Tipo');
    ConsultaSQL.Append(' FROM faturamento.atendimentos_fatura af');
    ConsultaSQL.Append(' INNER JOIN atendimentos.atendimentos a');
    ConsultaSQL.Append(' ON a.id = af.id_atendimento');
    ConsultaSQL.Append(' INNER JOIN pacientes p');
    ConsultaSQL.Append(' ON p.id = a.id_paciente');
    ConsultaSQL.Append(' WHERE af.id_fatura = :fatura');
    ConsultaSQL.Append(' AND a.status_faturamento = :status');
    ConsultaSQL.Append(' AND a.id_paciente = :paciente');
    ConsultaSQL.Append(' AND a.data_alta BETWEEN :dtIni AND :dtFin');
    ConsultaSQL.Append(' GROUP BY af.id_atendimento, p.nome, a.valor_total, a.tipo');

    FRegistros := FDao.ConsultaSql(ConsultaSQL.ToString,['Ambulatorial','Internação',
      pIDFatura,'C',pPaciente,pDataInicial,pDataFinal]);

    TNumericField(FRegistros.FieldByName('valor_total')).DisplayFormat := ',0.00;-,0.00';
    TNumericField(FRegistros.FieldByName('TotalGeral')).DisplayFormat := ',0.00;-,0.00';

    FDs.DataSet := FRegistros;
    FreeAndNil(ConsultaSQL);
    Result := True;
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro ao buscar atendimentos do paciente na data informada!' +#13+ e.Message);
      Result := False;
    end;
  end;
end;

function TControllerAtendimentosFatura.BuscarAtendimentos(pIDFatura,
  pIDAtendimento: integer): boolean;
var
  ConsultaSQL: TStringBuilder;
begin
  ConsultaSQL := TStringBuilder.Create;

  try
    ConsultaSQL.Append(' SELECT af.id_atendimento, p.nome AS Paciente,');
    ConsultaSQL.Append(' SUM(a.valor_total) As TotalGeral, a.valor_total,');
    ConsultaSQL.Append(' CASE WHEN a.tipo = 1 THEN :amb');
    ConsultaSQL.Append(' WHEN a.tipo = 2 THEN :int END AS Tipo');
    ConsultaSQL.Append(' FROM faturamento.atendimentos_fatura af');
    ConsultaSQL.Append(' INNER JOIN atendimentos.atendimentos a');
    ConsultaSQL.Append(' ON a.id = af.id_atendimento');
    ConsultaSQL.Append(' INNER JOIN pacientes p');
    ConsultaSQL.Append(' ON p.id = a.id_paciente');
    ConsultaSQL.Append(' WHERE af.id_fatura = :fatura');
    ConsultaSQL.Append(' AND a.status_faturamento = :status');
    ConsultaSQL.Append(' AND a.id = :atendimento');
    ConsultaSQL.Append(' GROUP BY af.id_atendimento, p.nome, a.valor_total, a.tipo');

    FRegistros := FDao.ConsultaSql(ConsultaSQL.ToString,['Ambulatorial','Internação',
      pIDFatura,'C',pIDAtendimento]);

    TNumericField(FRegistros.FieldByName('valor_total')).DisplayFormat := ',0.00;-,0.00';
    TNumericField(FRegistros.FieldByName('TotalGeral')).DisplayFormat := ',0.00;-,0.00';

    FDs.DataSet := FRegistros;
    FreeAndNil(ConsultaSQL);
    Result := True;
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro ao buscar atendimentos do paciente na data informada!' +#13+ e.Message);
      Result := False;
    end;
  end;
end;

function TControllerAtendimentosFatura.BuscarAtendimentos(pIDFatura: integer;pDataInicial,
  pDataFinal: TDateTime): boolean;
var
  ConsultaSQL: TStringBuilder;
begin
  ConsultaSQL := TStringBuilder.Create;

  try
    ConsultaSQL.Append(' SELECT af.id_atendimento, p.nome AS Paciente,');
    ConsultaSQL.Append(' SUM(a.valor_total) As TotalGeral, a.valor_total,');
    ConsultaSQL.Append(' CASE WHEN a.tipo = 1 THEN :amb');
    ConsultaSQL.Append(' WHEN a.tipo = 2 THEN :int END AS Tipo');
    ConsultaSQL.Append(' FROM faturamento.atendimentos_fatura af');
    ConsultaSQL.Append(' INNER JOIN atendimentos.atendimentos a');
    ConsultaSQL.Append(' ON a.id = af.id_atendimento');
    ConsultaSQL.Append(' INNER JOIN pacientes p');
    ConsultaSQL.Append(' ON p.id = a.id_paciente');
    ConsultaSQL.Append(' WHERE af.id_fatura = :fatura');
    ConsultaSQL.Append(' AND a.status_faturamento = :status');
    ConsultaSQL.Append(' AND a.data_alta BETWEEN :dtIni AND :dtFin');
    ConsultaSQL.Append(' GROUP BY af.id_atendimento, p.nome, a.valor_total, a.tipo');

    ShowMessage(ConsultaSQL.ToString);
    FRegistros := FDao.ConsultaSql(ConsultaSQL.ToString,['Ambulatorial','Internação',
      pIDFatura,'C',pDataInicial,pDataFinal]);

    TNumericField(FRegistros.FieldByName('valor_total')).DisplayFormat := ',0.00;-,0.00';
    TNumericField(FRegistros.FieldByName('TotalGeral')).DisplayFormat := ',0.00;-,0.00';

    FDs.DataSet := FRegistros;
    FreeAndNil(ConsultaSQL);
    Result := True;
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro ao buscar atendimentos do paciente na data informada!' +#13+ e.Message);
      Result := False;
    end;
  end;
end;

constructor TControllerAtendimentosFatura.Create;
begin
  FConexao := TConexao.Create;
  FDao := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  FDs := TDataSource.Create(nil);
  FAtendimentos := TAtendimento.Create;
  FAtendimentos_Fatura := TAtendimentos_Fatura.Create;
  FPaciente := TPacientes.Create;
  inherited;
end;

destructor TControllerAtendimentosFatura.Destroy;
begin
  inherited;
  FConexao.Free;
  FDao.Free;
  FDs.Free;
  FAtendimentos.Free;
  FAtendimentos_Fatura.Free;
  FPaciente.Free;
end;

function TControllerAtendimentosFatura.GetNomePaciente(AID,
  iOperacao: integer): string;
begin
  Result := FDao.GetValueForeignKey(FPaciente,'nome','id',AID,iOperacao);
end;

function TControllerAtendimentosFatura.ReabrirAtendimento(
  pIDAtendimento: integer): boolean;
begin
  try
    FAtendimentos.Id := pIDAtendimento;
    FAtendimentos.Status_Faturamento := '';
    FAtendimentos.Valor_Total := 0;
    FDao.Salvar(FAtendimentos,['status_faturamento','valor_total']);

    FAtendimentos_Fatura.Id_Atendimento := pIDAtendimento;
    FDao.Excluir(FAtendimentos_Fatura,['id_atendimento']);

    Result := True;
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro ao re-abrir atendimento!' +#13+ e.Message);
      Result := False;
    end;
  end;
end;

end.
