unit Model.Antecedente_Paciente;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('he.antecedentes_paciente')]
  TAntecedente_Paciente = class(TTabela)
  private
    FId: Integer;
    FId_he: integer;
    FId_Antecedente: integer;
    FTipo_antecedente: integer;

    FTempoQuimioterapia: Double;

    FFrequencia: integer;
    FTempoRadioterapia: Double;
    FData_Registro: TDateTime;
    FTratado: integer;
    FQuantidade: integer;
    FObs_geral: string;

    FTratamento: integer;
    FTempoconsumo: Double;

    procedure SetId(const Value: Integer);
    procedure SetId_Antecedente(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetTipo_Antecedente(const Value: integer);
    procedure SetData_Registro(const Value: TDateTime);
    procedure SetFrequencia(const Value: integer);
    procedure SetObs_geral(const Value: string);
    procedure SetQuantidade(const Value: integer);
    procedure SetTempoConsumo(const Value: Double);
    procedure SetTempoQuimioterapia(const Value: Double);
    procedure SetTempoRadioterapia(const Value: Double);
    procedure SetTratado(const Value: integer);
    procedure SetTratamento(const Value: integer);

  public
    [attPK]
    property Id: Integer read FId write SetId;
    [AttNotNull('Id Antecedente')]
    property Id_Antecedente: integer read FId_Antecedente write SetId_Antecedente;
    [AttNotNull('Id HE')]
    property Id_he: integer read FId_he write SetId_he;
    [AttNotNull('Tipo Antecedente')]
    property Tipo_antecedente : integer read FTipo_antecedente write SetTipo_Antecedente;
    property Quantidade: Integer read FQuantidade write SetQuantidade;
    property Frequencia: Integer read FFrequencia write SetFrequencia;
    property Tempoconsumo: Double read FTempoconsumo write SetTempoConsumo;
    property Tratamento: Integer read FTratamento write SetTratamento;
    property Tratado: Integer read FTratado write SetTratado;
    property TempoQuimioterapia: Double read FTempoQuimioterapia
      write SetTempoQuimioterapia;
    property Data_Registro: TDateTime read FData_Registro
      write SetData_Registro;
    property TempoRadioterapia: Double read FTempoRadioterapia
      write SetTempoRadioterapia;
    property Obs_geral: string read FObs_geral write SetObs_geral;

  end;

implementation


{ TAntecedente_Paciente }

procedure TAntecedente_Paciente.SetData_Registro(const Value: TDateTime);
begin
  FData_Registro := Value;
end;

procedure TAntecedente_Paciente.SetFrequencia(const Value: integer);
begin
  FFrequencia := Value;
end;

procedure TAntecedente_Paciente.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TAntecedente_Paciente.SetId_Antecedente(const Value: integer);
begin
  FId_Antecedente := Value;
end;

procedure TAntecedente_Paciente.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TAntecedente_Paciente.SetObs_geral(const Value: string);
begin
  FObs_geral := Value;
end;

procedure TAntecedente_Paciente.SetQuantidade(const Value: integer);
begin
  FQuantidade := Value;
end;

procedure TAntecedente_Paciente.SetTempoConsumo(const Value: Double);
begin
  FTempoconsumo := Value;
end;

procedure TAntecedente_Paciente.SetTempoQuimioterapia(const Value: Double);
begin
  FTempoQuimioterapia := Value;
end;

procedure TAntecedente_Paciente.SetTempoRadioterapia(const Value: Double);
begin
  FTempoRadioterapia := Value;
end;

procedure TAntecedente_Paciente.SetTipo_Antecedente(const Value: integer);
begin
  FTipo_antecedente := Value;
end;

procedure TAntecedente_Paciente.SetTratado(const Value: integer);
begin
  FTratado := Value;
end;

procedure TAntecedente_Paciente.SetTratamento(const Value: integer);
begin
  FTratamento := Value;
end;

end.
