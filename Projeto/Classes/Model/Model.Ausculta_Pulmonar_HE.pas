unit Model.Ausculta_Pulmonar_HE;

interface

uses
  Lca.Orm.Atributos, Lca.Orm.Base;

type
  [attTabela('he.ausculta_pulmonar_he')]
  TAusculta_Pulmonar_HE = class(TTabela)
    private
    FExpectoracao_espontanea: integer;
    FRoncos: integer;
    FEupneia: integer;
    FSibilos: integer;
    FEstertores: integer;
    FBradipneia: integer;
    FTipo_tosse: integer;
    FId: integer;
    FTraqueia: string;
    FFremito_toracovocal: string;
    FId_he: integer;
    FExcursao_respiratoria: string;
    FCrepitantes: integer;
    FTaquipneia: integer;
    FPercussao_respiratoria_costelas: string;
    FMurmurios_vesiculares: integer;
    procedure SetBradipneia(const Value: integer);
    procedure SetCrepitantes(const Value: integer);
    procedure SetEstertores(const Value: integer);
    procedure SetEupneia(const Value: integer);
    procedure SetExcursao_respiratoria(const Value: string);
    procedure SetExpectoracao_espontanea(const Value: integer);
    procedure SetFremito_toracovocal(const Value: string);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetMurmurios_vesiculares(const Value: integer);
    procedure SetPercussao_respiratoria_costelas(const Value: string);
    procedure SetRoncos(const Value: integer);
    procedure SetSibilos(const Value: integer);
    procedure SetTaquipneia(const Value: integer);
    procedure SetTipo_tosse(const Value: integer);
    procedure SetTraqueia(const Value: string);

    public
      [attPk]
      property id : integer read FId write SetId;
      [attNotNull('Id He')]
      property id_he : integer read FId_he write SetId_he;
      property excursao_respiratoria : string read FExcursao_respiratoria write SetExcursao_respiratoria;
      property fremito_toracovocal : string read FFremito_toracovocal write SetFremito_toracovocal;
      property traqueia : string read FTraqueia write SetTraqueia;
      property tipo_tosse : integer read FTipo_tosse write SetTipo_tosse;
      property eupneia : integer read FEupneia write SetEupneia;
      property taquipneia : integer read FTaquipneia write SetTaquipneia;
      property bradipneia : integer read FBradipneia write SetBradipneia;
      property murmurios_vesiculares : integer read FMurmurios_vesiculares write SetMurmurios_vesiculares;
      property roncos : integer read FRoncos write SetRoncos;
      property sibilos : integer read FSibilos write SetSibilos;
      property estertores : integer read FEstertores write SetEstertores;
      property crepitantes : integer read FCrepitantes write SetCrepitantes;
      property expectoracao_espontanea : integer read FExpectoracao_espontanea write SetExpectoracao_espontanea;
      property percussao_respiratoria_costelas : string read FPercussao_respiratoria_costelas write SetPercussao_respiratoria_costelas;

  end;

implementation

{ TAusculta_Pulmonar_HE }

procedure TAusculta_Pulmonar_HE.SetBradipneia(const Value: integer);
begin
  FBradipneia := Value;
end;

procedure TAusculta_Pulmonar_HE.SetCrepitantes(const Value: integer);
begin
  FCrepitantes := Value;
end;

procedure TAusculta_Pulmonar_HE.SetEstertores(const Value: integer);
begin
  FEstertores := Value;
end;

procedure TAusculta_Pulmonar_HE.SetEupneia(const Value: integer);
begin
  FEupneia := Value;
end;

procedure TAusculta_Pulmonar_HE.SetExcursao_respiratoria(const Value: string);
begin
  FExcursao_respiratoria := Value;
end;

procedure TAusculta_Pulmonar_HE.SetExpectoracao_espontanea(
  const Value: integer);
begin
  FExpectoracao_espontanea := Value;
end;

procedure TAusculta_Pulmonar_HE.SetFremito_toracovocal(const Value: string);
begin
  FFremito_toracovocal := Value;
end;

procedure TAusculta_Pulmonar_HE.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TAusculta_Pulmonar_HE.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TAusculta_Pulmonar_HE.SetMurmurios_vesiculares(const Value: integer);
begin
  FMurmurios_vesiculares := Value;
end;

procedure TAusculta_Pulmonar_HE.SetPercussao_respiratoria_costelas(
  const Value: string);
begin
  FPercussao_respiratoria_costelas := Value;
end;

procedure TAusculta_Pulmonar_HE.SetRoncos(const Value: integer);
begin
  FRoncos := Value;
end;

procedure TAusculta_Pulmonar_HE.SetSibilos(const Value: integer);
begin
  FSibilos := Value;
end;

procedure TAusculta_Pulmonar_HE.SetTaquipneia(const Value: integer);
begin
  FTaquipneia := Value;
end;

procedure TAusculta_Pulmonar_HE.SetTipo_tosse(const Value: integer);
begin
  FTipo_tosse := Value;
end;

procedure TAusculta_Pulmonar_HE.SetTraqueia(const Value: string);
begin
  FTraqueia := Value;
end;

end.
