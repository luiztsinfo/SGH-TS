unit Model.Mulher_he;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type

  [attTabela('he.mulher_he')]
  TMulher_he = class(TTabela)
  private
    FMenopausa_desde: TDateTime;
    FA: integer;
    FG: integer;
    FId: integer;
    FDum: string;
    FId_he: integer;
    Fresultado_ginecologico_preventivo: string;
    FP: integer;
    FContraceptivo: integer;
    FData_ginecologico_preventivo: TDateTime;
    FAutoexame_mama: integer;

    procedure SetA(const Value: integer);
    procedure SetAutoexame_Mama(const Value: integer);
    procedure SetContraceptivo(const Value: integer);
    procedure SetData_ginecologico_preventivo(const Value: TDateTime);
    procedure SetDum(const Value: string);
    procedure SetG(const Value: integer);
    procedure SetId(const Value: integer);
    procedure SetId_He(const Value: integer);
    procedure SetMenoPausa_desde(const Value: TDateTime);
    procedure SetP(const Value: integer);
    procedure Setresultado_ginecologico_preventivo(const Value: string);

  public
    [attPK]
    property id: integer read FId write SetId;
    [AttNotNull('Id HE')]
    property id_he: integer read FId_he write SetId_He;
    property dum: string read FDum write SetDum;
    property Menopausa_desde: TDateTime read FMenopausa_desde
      write SetMenoPausa_desde;
    property Contraceptivo: integer read FContraceptivo write SetContraceptivo;
    property Data_ginecologico_preventivo: TDateTime
      read FData_ginecologico_preventivo write SetData_ginecologico_preventivo;
    property resultado_ginecologico_preventivo: string
      read Fresultado_ginecologico_preventivo
      write Setresultado_ginecologico_preventivo;
    property G: integer read FG write SetG;
    property P: integer read FP write SetP;
    property A: integer read FA write SetA;
    property Autoexame_mama: integer read FAutoexame_mama
      write SetAutoexame_Mama;

  end;

implementation

{ TMulher_he }

procedure TMulher_he.SetA(const Value: integer);
begin
  FA := Value;
end;

procedure TMulher_he.SetAutoexame_Mama(const Value: integer);
begin
  FAutoexame_mama := Value;
end;

procedure TMulher_he.SetContraceptivo(const Value: integer);
begin
  FContraceptivo := Value;
end;

procedure TMulher_he.SetData_ginecologico_preventivo(const Value: TDateTime);
begin
  FData_ginecologico_preventivo := Value;
end;

procedure TMulher_he.SetDum(const Value: string);
begin
  FDum := Value;
end;

procedure TMulher_he.SetG(const Value: integer);
begin
  FG := Value;
end;

procedure TMulher_he.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TMulher_he.SetId_He(const Value: integer);
begin
  FId_he := Value;
end;

procedure TMulher_he.SetMenoPausa_desde(const Value: TDateTime);
begin
  FMenopausa_desde := Value;
end;

procedure TMulher_he.SetP(const Value: integer);
begin
  FP := Value;
end;

procedure TMulher_he.Setresultado_ginecologico_preventivo(const Value: string);
begin
  Fresultado_ginecologico_preventivo := Value;
end;

end.
