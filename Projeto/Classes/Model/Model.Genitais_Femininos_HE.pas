unit Model.Genitais_Femininos_HE;

interface

uses
  Lca.Orm.Atributos, Lca.Orm.Base;

type
  [attTabela('genitais_femininos_he')]
  TGenitais_Femininos_HE = class(TTabela)
    private
    Fultima_coleta_co: integer;
    FOdor: integer;
    FId: integer;
    FId_he: integer;
    FSuspeita_DST: integer;
    FLesoes: integer;
    FPresenca_secrecao: integer;
    FPrurido: integer;
    FTipo_secrecao: integer;
    FDor_miccoes: integer;
    procedure SetDor_miccoes(const Value: integer);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetLesoes(const Value: integer);
    procedure SetOdor(const Value: integer);
    procedure SetPresenca_secrecao(const Value: integer);
    procedure SetPrurido(const Value: integer);
    procedure SetSuspeita_dst(const Value: integer);
    procedure SetTipo_secrecao(const Value: integer);
    procedure Setultima_coleta_co(const Value: integer);

    public
      [attPk]
      property id : integer read FId write SetId;
      [attNotNull('Id HE')]
      property id_he : integer read FId_he write SetId_he;
      property tipo_secrecao : integer read FTipo_secrecao write SetTipo_secrecao;
      property lesoes : integer read FLesoes write SetLesoes;
      property odor : integer read FOdor write SetOdor;
      property dor_miccoes : integer read FDor_miccoes write SetDor_miccoes;
      property prurido : integer read FPrurido write SetPrurido;
      property presenca_secrecao : integer read FPresenca_secrecao write SetPresenca_secrecao;
      property suspeita_dst : integer read FSuspeita_DST write SetSuspeita_dst;
      property ultima_coleta_co : integer read Fultima_coleta_co write Setultima_coleta_co;

  end;

implementation

{ TGenitais_Femininos_HE }

procedure TGenitais_Femininos_HE.SetDor_miccoes(const Value: integer);
begin
  FDor_miccoes := Value;
end;

procedure TGenitais_Femininos_HE.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TGenitais_Femininos_HE.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TGenitais_Femininos_HE.SetLesoes(const Value: integer);
begin
  FLesoes := Value;
end;

procedure TGenitais_Femininos_HE.SetOdor(const Value: integer);
begin
  FOdor := Value;
end;

procedure TGenitais_Femininos_HE.SetPresenca_secrecao(const Value: integer);
begin
  FPresenca_secrecao := Value;
end;

procedure TGenitais_Femininos_HE.SetPrurido(const Value: integer);
begin
  FPrurido := Value;
end;

procedure TGenitais_Femininos_HE.SetSuspeita_dst(const Value: integer);
begin
  FSuspeita_DST := Value;
end;

procedure TGenitais_Femininos_HE.SetTipo_secrecao(const Value: integer);
begin
  FTipo_secrecao := Value;
end;

procedure TGenitais_Femininos_HE.Setultima_coleta_co(const Value: integer);
begin
  Fultima_coleta_co := Value;
end;

end.
