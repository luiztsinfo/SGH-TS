unit Model.Boca_Faringe_He;

interface

uses
  Lca.Orm.Atributos, Lca.Orm.Base;

type
  [AttTabela('he.boca_faringe_he')]
  TBoca_Faringe_HE = class(TTabela)
    private
    FDisfasia: integer;
    FDisfonia: integer;
    FLabios_ressecados: integer;
    FDislalia: integer;
    FTipo_lesao: integer;
    FLocal_lesao: string;
    FLingua_Saburrosa: integer;
    FId: integer;
    FId_he: integer;
    FLesoes: integer;
    FCianose_labial: integer;
    procedure SetCianose_labial(const Value: integer);
    procedure SetDisfasia(const Value: integer);
    procedure SetDisfonia(const Value: integer);
    procedure SetDislalia(const Value: integer);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetLabios_ressecados(const Value: integer);
    procedure SetLesoes(const Value: integer);
    procedure SetLingua_Saburrosa(const Value: integer);
    procedure SetLocal_lesao(const Value: string);
    procedure SetTipo_lesao(const Value: integer);

    public
      [attPk]
      property id : integer read FId write SetId;
      [attNotNull('Id HE')]
      property id_he : integer read FId_he write SetId_he;
      property lingua_saburrosa : integer read FLingua_Saburrosa write SetLingua_Saburrosa;
      property dislalia : integer read FDislalia write SetDislalia;
      property disfasia : integer read FDisfasia write SetDisfasia;
      property disfonia : integer read FDisfonia write SetDisfonia;
      property labios_ressecados : integer read FLabios_ressecados write SetLabios_ressecados;
      property cianose_labial : integer read FCianose_labial write SetCianose_labial;
      property lesoes : integer read FLesoes write SetLesoes;
      property tipo_lesao : integer read FTipo_lesao write SetTipo_lesao;
      property local_lesao : string read FLocal_lesao write SetLocal_lesao;

  end;

implementation

{ TBoca_Faringe_HE }

procedure TBoca_Faringe_HE.SetCianose_labial(const Value: integer);
begin
  FCianose_labial := Value;
end;

procedure TBoca_Faringe_HE.SetDisfasia(const Value: integer);
begin
  FDisfasia := Value;
end;

procedure TBoca_Faringe_HE.SetDisfonia(const Value: integer);
begin
  FDisfonia := Value;
end;

procedure TBoca_Faringe_HE.SetDislalia(const Value: integer);
begin
  FDislalia := Value;
end;

procedure TBoca_Faringe_HE.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TBoca_Faringe_HE.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TBoca_Faringe_HE.SetLabios_ressecados(const Value: integer);
begin
  FLabios_ressecados := Value;
end;

procedure TBoca_Faringe_HE.SetLesoes(const Value: integer);
begin
  FLesoes := Value;
end;

procedure TBoca_Faringe_HE.SetLingua_Saburrosa(const Value: integer);
begin
  FLingua_Saburrosa := Value;
end;

procedure TBoca_Faringe_HE.SetLocal_lesao(const Value: string);
begin
  FLocal_lesao := Value;
end;

procedure TBoca_Faringe_HE.SetTipo_lesao(const Value: integer);
begin
  FTipo_lesao := Value;
end;

end.
