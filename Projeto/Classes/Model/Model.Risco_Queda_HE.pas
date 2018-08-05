unit Model.Risco_Queda_HE;

interface

uses
  Lca.Orm.Atributos, Lca.Orm.Base;

type
  [attTabela('he.risco_queda_he')]
  TRisco_Queda_HE = class(TTabela)
    private
    Fdeficit_avs: integer;
    Fuso_sedativos: integer;
    Fhipoxia_hipoxemia: integer;
    Furgencia_urinaria_fecal: integer;
    Fdificuldade_marcha: integer;
    FId: integer;
    FId_he: integer;
    Fmobilidade_prejudicada: integer;
    Fhistorico_queda_ultimo_ano: integer;
    Fdisturbio_comportamentos: integer;
    FMaior_65: integer;
    Fhipotensao_postural: integer;
    procedure Setdeficit_avs(const Value: integer);
    procedure Setdificuldade_marcha(const Value: integer);
    procedure Setdisturbio_comportamentos(const Value: integer);
    procedure Sethipotensao_postural(const Value: integer);
    procedure Sethipoxia_hipoxemia(const Value: integer);
    procedure Sethistorico_queda_ultimo_ano(const Value: integer);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetMaior_65(const Value: integer);
    procedure Setmobilidade_prejudicada(const Value: integer);
    procedure Seturgencia_urinaria_fecal(const Value: integer);
    procedure Setuso_sedativos(const Value: integer);

    public
      [attPk]
      property id : integer read FId write SetId;
      [attNotNull('Id HE')]
      property id_he : integer read FId_he write SetId_he;
      property maior_65 : integer read FMaior_65 write SetMaior_65;
      property urgencia_urinaria_fecal : integer read Furgencia_urinaria_fecal write Seturgencia_urinaria_fecal;
      property deficit_avs : integer read Fdeficit_avs write Setdeficit_avs;
      property uso_sedativos : integer read Fuso_sedativos write Setuso_sedativos;
      property dificuldade_marcha : integer read Fdificuldade_marcha write Setdificuldade_marcha;
      property disturbio_comportamentos : integer read Fdisturbio_comportamentos write Setdisturbio_comportamentos;
      property mobilidade_prejudicada : integer read Fmobilidade_prejudicada write Setmobilidade_prejudicada;
      property hipotensao_postural : integer read Fhipotensao_postural write Sethipotensao_postural;
      property historico_queda_ultimo_ano : integer read Fhistorico_queda_ultimo_ano write Sethistorico_queda_ultimo_ano;
      property hipoxia_hipoxemia : integer read Fhipoxia_hipoxemia write Sethipoxia_hipoxemia;
  end;

implementation

{ TRisco_Queda_HE }

procedure TRisco_Queda_HE.Setdeficit_avs(const Value: integer);
begin
  Fdeficit_avs := Value;
end;

procedure TRisco_Queda_HE.Setdificuldade_marcha(const Value: integer);
begin
  Fdificuldade_marcha := Value;
end;

procedure TRisco_Queda_HE.Setdisturbio_comportamentos(const Value: integer);
begin
  Fdisturbio_comportamentos := Value;
end;

procedure TRisco_Queda_HE.Sethipotensao_postural(const Value: integer);
begin
  Fhipotensao_postural := Value;
end;

procedure TRisco_Queda_HE.Sethipoxia_hipoxemia(const Value: integer);
begin
  Fhipoxia_hipoxemia := Value;
end;

procedure TRisco_Queda_HE.Sethistorico_queda_ultimo_ano(const Value: integer);
begin
  Fhistorico_queda_ultimo_ano := Value;
end;

procedure TRisco_Queda_HE.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TRisco_Queda_HE.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TRisco_Queda_HE.SetMaior_65(const Value: integer);
begin
  FMaior_65 := Value;
end;

procedure TRisco_Queda_HE.Setmobilidade_prejudicada(const Value: integer);
begin
  Fmobilidade_prejudicada := Value;
end;

procedure TRisco_Queda_HE.Seturgencia_urinaria_fecal(const Value: integer);
begin
  Furgencia_urinaria_fecal := Value;
end;

procedure TRisco_Queda_HE.Setuso_sedativos(const Value: integer);
begin
  Fuso_sedativos := Value;
end;

end.
