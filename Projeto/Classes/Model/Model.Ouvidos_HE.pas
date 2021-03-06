unit Model.Ouvidos_HE;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('he.ouvidos_he')]
  TOuvidos_HE = class(TTabela)

    private
    FOtalgia: integer;

    FTipo_lesao: integer;
    FLocal_lesao: string;
    FId: integer;
    FDiminuida: integer;
    FId_he: integer;
    FPreservada: integer;
    FQual_ausente: string;

    FTipo_secrecao: integer;
    FAusente: integer;
    FLocal_Secrecao: string;
    procedure SetAusente(const Value: integer);
    procedure SetDiminuida(const Value: integer);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);

    procedure SetLocal_lesao(const Value: string);
    procedure SetLocal_secrecao(const Value: string);
    procedure SetOtalgia(const Value: integer);
    procedure SetPreservada(const Value: integer);
    procedure SetQual_Ausente(const Value: string);

    procedure SetTipo_lesao(const Value: integer);
    procedure SetTipo_secrecao(const Value: integer);

    public
      [attPk]
      property id : integer read FId write SetId;
      [attNotNull('Id HE')]
      property id_he : integer read FId_he write SetId_he;
      property qual_ausente : string read FQual_ausente write SetQual_Ausente;
      property tipo_lesao : integer read FTipo_lesao write SetTipo_lesao;
      property local_lesao : string read FLocal_lesao write SetLocal_lesao;
      property tipo_secrecao : integer read FTipo_secrecao write SetTipo_secrecao;
      property local_secrecao : string read FLocal_Secrecao write SetLocal_secrecao;
      property preservada : integer read FPreservada write SetPreservada;
      property diminuida : integer read FDiminuida write SetDiminuida;
      property ausente : integer read FAusente write SetAusente;
      property otalgia : integer read FOtalgia write SetOtalgia;

  end;

implementation

{ TOuvidos_HE }

procedure TOuvidos_HE.SetAusente(const Value: integer);
begin
  FAusente := Value;
end;

procedure TOuvidos_HE.SetDiminuida(const Value: integer);
begin
  FDiminuida := Value;
end;

procedure TOuvidos_HE.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TOuvidos_HE.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TOuvidos_HE.SetLocal_lesao(const Value: string);
begin
  FLocal_lesao := Value;
end;

procedure TOuvidos_HE.SetLocal_secrecao(const Value: string);
begin
  FLocal_Secrecao := Value;
end;

procedure TOuvidos_HE.SetOtalgia(const Value: integer);
begin
  FOtalgia := Value;
end;

procedure TOuvidos_HE.SetPreservada(const Value: integer);
begin
  FPreservada := Value;
end;

procedure TOuvidos_HE.SetQual_Ausente(const Value: string);
begin
  FQual_ausente := Value;
end;

procedure TOuvidos_HE.SetTipo_lesao(const Value: integer);
begin
  FTipo_lesao := Value;
end;

procedure TOuvidos_HE.SetTipo_secrecao(const Value: integer);
begin
  FTipo_secrecao := Value;
end;

end.
