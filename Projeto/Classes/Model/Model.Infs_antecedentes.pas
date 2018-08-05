unit Model.Infs_antecedentes;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('he.infs_antecedentes')]
  TInfs_antecedentes = class(TTabela)
  private
    FObs_alteracoes_cardiovasculares: string;
    FMotivo_internacao: string;
    FObs_alteracoes_pulmonares: string;
    FObs_gastrointestinais_hepatobiliares: string;
    FTempo_internacao_anterior: Double;
    FObs_alteracoes_renais_urinarias: string;
    FObs_alteracoes_osseas: string;
    FTempo_transfusaosanguinea_anterior: Double;
    Fid: integer;
    FId_he: integer;
    FData_Registro: TDateTime;
    procedure SetMotivo_internacao(const Value: string);
    procedure SetObs_alteracoes_cardiovasculares(const Value: string);
    procedure SetObs_alteracoes_osseas(const Value: string);
    procedure SetObs_alteracoes_pulmonares(const Value: string);
    procedure SetObs_alteracoes_renais_urinarias(const Value: string);
    procedure SetObs_gastrointestinais_hepatobiliares(const Value: string);
    procedure SetTempo_internacao_anterior(const Value: Double);
    procedure SetTempo_transfusaosanguinea_anterior(const Value: Double);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetData_registro(const Value: TDateTime);

  public
    [attPK]
    property id : integer read Fid write SetId;
    [AttNotNull('Id HE')]
    property id_he : integer read FId_he write SetId_he;
    [AttNotNull('Data Registro')]
    property data_registro : TDateTime read FData_Registro write SetData_registro;
    property Tempo_internacao_anterior: Double read FTempo_internacao_anterior
      write SetTempo_internacao_anterior;
    property Motivo_internacao: string read FMotivo_internacao
      write SetMotivo_internacao;
    property tempo_transfusaosanguinea_anterior: Double
      read Ftempo_transfusaosanguinea_anterior
      write Settempo_transfusaosanguinea_anterior;
    property Obs_gastrointestinais_hepatobiliares: string
      read FObs_gastrointestinais_hepatobiliares
      write SetObs_gastrointestinais_hepatobiliares;
    property Obs_alteracoes_osseas: string read FObs_alteracoes_osseas
      write SetObs_alteracoes_osseas;
    property Obs_alteracoes_renais_urinarias: string
      read FObs_alteracoes_renais_urinarias
      write SetObs_alteracoes_renais_urinarias;
    property Obs_alteracoes_cardiovasculares: string
      read FObs_alteracoes_cardiovasculares
      write SetObs_alteracoes_cardiovasculares;
    property Obs_alteracoes_pulmonares: string read FObs_alteracoes_pulmonares
      write SetObs_alteracoes_pulmonares;
  end;

implementation

{ TAntecedente_Paciente }

procedure TInfs_antecedentes.SetData_registro(const Value: TDateTime);
begin
  FData_Registro := Value;
end;

procedure TInfs_antecedentes.SetId(const Value: integer);
begin
  Fid := Value;
end;

procedure TInfs_antecedentes.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TInfs_antecedentes.SetMotivo_internacao(const Value: string);
begin
  FMotivo_internacao := Value;
end;

procedure TInfs_antecedentes.SetObs_alteracoes_cardiovasculares(
  const Value: string);
begin
  FObs_alteracoes_cardiovasculares := Value;
end;

procedure TInfs_antecedentes.SetObs_alteracoes_osseas(const Value: string);
begin
  FObs_alteracoes_osseas := Value;
end;

procedure TInfs_antecedentes.SetObs_alteracoes_pulmonares(
  const Value: string);
begin
  FObs_alteracoes_pulmonares := Value;
end;

procedure TInfs_antecedentes.SetObs_alteracoes_renais_urinarias(
  const Value: string);
begin
  FObs_alteracoes_renais_urinarias := Value;
end;

procedure TInfs_antecedentes.SetObs_gastrointestinais_hepatobiliares(
  const Value: string);
begin
  FObs_gastrointestinais_hepatobiliares := Value;
end;

procedure TInfs_antecedentes.SetTempo_internacao_anterior(
  const Value: Double);
begin
  FTempo_internacao_anterior := Value;
end;

procedure TInfs_antecedentes.SetTempo_transfusaosanguinea_anterior(
  const Value: Double);
begin
  FTempo_transfusaosanguinea_anterior := Value;
end;

end.
