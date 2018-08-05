unit Model.Pescoco_HE;

interface

uses
  Lca.Orm.Atributos, Lca.Orm.Base;

type
  [attTabela('he.pescoco_he')]
  TPescoco_He = class(TTabela)
    private
    FTurgidez: integer;
    FIndolor_palpacao: integer;
    FAlteracoes: string;
    FId: integer;
    FId_he: integer;
    FDor_palpacao: integer;
    FGanglios_linfaticos: integer;
    procedure SetAlteracoes(const Value: string);
    procedure SetDor_palpacao(const Value: integer);
    procedure SetGanglios_linfaticos(const Value: integer);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetIndolor_palpacao(const Value: integer);
    procedure SetTurgidez(const Value: integer);

    public
      [attPk]
      property id : integer read FId write SetId;
      [attNotNull('Id HE')]
      property id_he : integer read FId_he write SetId_he;
      property ganglios_linfaticos : integer read FGanglios_linfaticos write SetGanglios_linfaticos;
      property dor_palpacao : integer read FDor_palpacao write SetDor_palpacao;
      property indolor_palpacao : integer read FIndolor_palpacao write SetIndolor_palpacao;
      property turgidez : integer read FTurgidez write SetTurgidez;
      property alteracoes : string read FAlteracoes write SetAlteracoes;
  end;

implementation

{ TPescoco_He }

procedure TPescoco_He.SetAlteracoes(const Value: string);
begin
  FAlteracoes := Value;
end;

procedure TPescoco_He.SetDor_palpacao(const Value: integer);
begin
  FDor_palpacao := Value;
end;

procedure TPescoco_He.SetGanglios_linfaticos(const Value: integer);
begin
  FGanglios_linfaticos := Value;
end;

procedure TPescoco_He.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TPescoco_He.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TPescoco_He.SetIndolor_palpacao(const Value: integer);
begin
  FIndolor_palpacao := Value;
end;

procedure TPescoco_He.SetTurgidez(const Value: integer);
begin
  FTurgidez := Value;
end;

end.
