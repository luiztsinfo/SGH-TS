unit Model.Prescricao_Enfermagem_HE;

interface

uses
  Lca.Orm.Atributos, Lca.Orm.Base;

type
  [attTabela('he.prescricao_enfermagem_he')]
  TPrescricao_enfermagem_HE = class(TTabela)
    private
    FDescricao: string;
    FFrequencia: integer;
    FId: integer;
    FId_he: integer;
    FId_Prescricao_Enfermagem: integer;
    procedure SetDescricao(const Value: string);
    procedure SetFrequencia(const Value: integer);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetId_Prescricao_Enfermagem(const Value: integer);

    public
      [attPk]
      property id : integer read FId write SetId;
      [attNotNull('Id HE')]
      property id_he : integer read FId_he write SetId_he;
      [attNotNull('Id Prescrição')]
      property id_prescricao_enfermagem : integer read FId_Prescricao_Enfermagem write SetId_Prescricao_Enfermagem;
      property frequencia : integer read FFrequencia write SetFrequencia;
      property descricao : string read FDescricao write SetDescricao;
  end;

implementation

{ TPrescricao_enfermagem_HE }

procedure TPrescricao_enfermagem_HE.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TPrescricao_enfermagem_HE.SetFrequencia(const Value: integer);
begin
  FFrequencia := Value;
end;

procedure TPrescricao_enfermagem_HE.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TPrescricao_enfermagem_HE.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TPrescricao_enfermagem_HE.SetId_Prescricao_Enfermagem(
  const Value: integer);
begin
  FId_Prescricao_Enfermagem := Value;
end;

end.
