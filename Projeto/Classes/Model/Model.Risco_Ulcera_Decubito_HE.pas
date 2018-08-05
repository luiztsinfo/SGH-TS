unit Model.Risco_Ulcera_Decubito_HE;

interface

uses
  Lca.Orm.Atributos, Lca.Orm.Base;

type
  [attTabela('he.risco_ulcera_decubito_he')]
  TRisco_Ulcera_Decubito_HE = class(TTabela)
    private
    Fvalor_score: Double;
    Fpercepcao_sensorial: integer;
    FBraden: string;
    Ffriccao_cisalhamento: integer;
    Fmobilidade: integer;
    Fnutricao: integer;
    FId: integer;
    FId_he: integer;
    Fatividade: integer;
    Fumidade: integer;
    procedure Setatividade(const Value: integer);
    procedure SetBraden(const Value: string);
    procedure Setfriccao_cisalhamento(const Value: integer);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure Setmobilidade(const Value: integer);
    procedure Setnutricao(const Value: integer);
    procedure Setpercepcao_sensorial(const Value: integer);
    procedure Setumidade(const Value: integer);
    procedure SetValor_score(const Value: Double);

    public
      [attPk]
      property id : integer read FId write SetId;
      [attNotNull('Id HE')]
      property id_he : integer read FId_he write SetId_he;
      property percepcao_sensorial : integer read Fpercepcao_sensorial write Setpercepcao_sensorial;
      property umidade : integer read Fumidade write Setumidade;
      property atividade : integer read Fatividade write Setatividade;
      property mobilidade : integer read Fmobilidade write Setmobilidade;
      property nutricao : integer read Fnutricao write Setnutricao;
      property friccao_cisalhamento : integer read Ffriccao_cisalhamento write Setfriccao_cisalhamento;
      property valor_score : Double read Fvalor_score write SetValor_score;
      property braden : string read FBraden write SetBraden;

  end;

implementation

{ TRisco_Ulcera_Decubito_HE }

procedure TRisco_Ulcera_Decubito_HE.Setatividade(const Value: integer);
begin
  Fatividade := Value;
end;

procedure TRisco_Ulcera_Decubito_HE.SetBraden(const Value: string);
begin
  FBraden := Value;
end;

procedure TRisco_Ulcera_Decubito_HE.Setfriccao_cisalhamento(
  const Value: integer);
begin
  Ffriccao_cisalhamento := Value;
end;

procedure TRisco_Ulcera_Decubito_HE.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TRisco_Ulcera_Decubito_HE.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TRisco_Ulcera_Decubito_HE.Setmobilidade(const Value: integer);
begin
  Fmobilidade := Value;
end;

procedure TRisco_Ulcera_Decubito_HE.Setnutricao(const Value: integer);
begin
  Fnutricao := Value;
end;

procedure TRisco_Ulcera_Decubito_HE.Setpercepcao_sensorial(
  const Value: integer);
begin
  Fpercepcao_sensorial := Value;
end;

procedure TRisco_Ulcera_Decubito_HE.Setumidade(const Value: integer);
begin
  Fumidade := Value;
end;

procedure TRisco_Ulcera_Decubito_HE.SetValor_score(const Value: Double);
begin
  Fvalor_score := Value;
end;

end.
