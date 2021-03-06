unit Model.Avaliacao_Neurologica_He;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [AttTabela('he.avaliacao_neurologica_he')]
  TAvaliacao_Neurologica_he = class(TTabela)

  private
    FOrientado: integer;
    FTorpor: integer;
    FSonolencia: integer;
    FId: integer;
    FAgitado: integer;
    FId_he: integer;
    FEscala_coma: double;
    FDesorientado: integer;
    procedure SetAgitado(const Value: integer);
    procedure SetDesorientado(const Value: integer);
    procedure SetEscala_coma(const Value: double);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetOrientado(const Value: integer);
    procedure SetSonolencia(const Value: integer);
    procedure SetTorpor(const Value: integer);

  public
    [AttPk]
    property id : integer read FId write SetId;
    [AttNotNull('Id He')]
    property id_he : integer read FId_he write SetId_he;
    property escala_coma : double read FEscala_coma write SetEscala_coma;
    property sonolencia : integer read FSonolencia write SetSonolencia;
    property torpor : integer read FTorpor write SetTorpor;
    property agitado : integer read FAgitado write SetAgitado;
    property desorientado : integer read FDesorientado write SetDesorientado;
    property orientado : integer read FOrientado write SetOrientado;

  end;

implementation

{ TAvaliacao_Neurologica_he }

procedure TAvaliacao_Neurologica_he.SetAgitado(const Value: integer);
begin
  FAgitado := Value;
end;

procedure TAvaliacao_Neurologica_he.SetDesorientado(const Value: integer);
begin
  FDesorientado := Value;
end;

procedure TAvaliacao_Neurologica_he.SetEscala_coma(const Value: double);
begin
  FEscala_coma := Value;
end;

procedure TAvaliacao_Neurologica_he.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TAvaliacao_Neurologica_he.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TAvaliacao_Neurologica_he.SetOrientado(const Value: integer);
begin
  FOrientado := Value;
end;

procedure TAvaliacao_Neurologica_he.SetSonolencia(const Value: integer);
begin
  FSonolencia := Value;
end;

procedure TAvaliacao_Neurologica_he.SetTorpor(const Value: integer);
begin
  FTorpor := Value;
end;

end.
