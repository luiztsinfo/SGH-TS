unit Model.Genitais_HE;

interface

uses
  Lca.Orm.Atributos, Lca.Orm.Base;

type
  [attTabela('he.genitais_he')]
  TGenitais_HE = class(TTabela)
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
    Fescrotal_edema: integer;
    Fanal_abscesso: integer;
    Fanal_fissuras: integer;
    Fanal_edema: integer;
    Fpresenca_parasitas: integer;
    Fescrotal_hiperemia: integer;
    Fanal_hemorroidas: integer;
    FAtento_DST: integer;
    FUsa_Preservativo: integer;
    Fanal_f�stulas: integer;
    Fanal_ulceracoes: integer;
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
    procedure Setanal_abscesso(const Value: integer);
    procedure Setanal_edema(const Value: integer);
    procedure Setanal_f�stulas(const Value: integer);
    procedure Setanal_fissuras(const Value: integer);
    procedure Setanal_hemorroidas(const Value: integer);
    procedure Setanal_ulceracoes(const Value: integer);
    procedure SetAtento_DST(const Value: integer);
    procedure Setescrotal_edema(const Value: integer);
    procedure Setescrotal_hiperemia(const Value: integer);
    procedure Setpresenca_parasitas(const Value: integer);
    procedure SetUsa_Preservativo(const Value: integer);

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
      property atento_dst : integer read FAtento_DST write SetAtento_DST;
      property usa_preservativo : integer read FUsa_Preservativo write SetUsa_Preservativo;
      property escrotal_edema : integer read Fescrotal_edema write Setescrotal_edema;
      property escrotal_hiperemia : integer read Fescrotal_hiperemia write Setescrotal_hiperemia;
      property presenca_parasitas : integer read Fpresenca_parasitas write Setpresenca_parasitas;
      property anal_edema : integer read Fanal_edema write Setanal_edema;
      property anal_ulceracoes : integer read Fanal_ulceracoes write Setanal_ulceracoes;
      property anal_hemorroidas : integer read Fanal_hemorroidas  write Setanal_hemorroidas;
      property anal_abscesso : integer read Fanal_abscesso write Setanal_abscesso;
      property anal_fissuras : integer read Fanal_fissuras write Setanal_fissuras;
      property anal_fistulas : integer read Fanal_f�stulas write Setanal_f�stulas;

  end;

implementation

{ TGenitais_HE }

procedure TGenitais_HE.Setanal_abscesso(const Value: integer);
begin
  Fanal_abscesso := Value;
end;

procedure TGenitais_HE.Setanal_edema(const Value: integer);
begin
  Fanal_edema := Value;
end;

procedure TGenitais_HE.Setanal_fissuras(const Value: integer);
begin
  Fanal_fissuras := Value;
end;

procedure TGenitais_HE.Setanal_f�stulas(const Value: integer);
begin
  Fanal_f�stulas := Value;
end;

procedure TGenitais_HE.Setanal_hemorroidas(const Value: integer);
begin
  Fanal_hemorroidas := Value;
end;

procedure TGenitais_HE.Setanal_ulceracoes(const Value: integer);
begin
  Fanal_ulceracoes := Value;
end;

procedure TGenitais_HE.SetAtento_DST(const Value: integer);
begin
  FAtento_DST := Value;
end;

procedure TGenitais_HE.SetDor_miccoes(const Value: integer);
begin
  FDor_miccoes := Value;
end;

procedure TGenitais_HE.Setescrotal_edema(const Value: integer);
begin
  Fescrotal_edema := Value;
end;

procedure TGenitais_HE.Setescrotal_hiperemia(const Value: integer);
begin
  Fescrotal_hiperemia := Value;
end;

procedure TGenitais_HE.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TGenitais_HE.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TGenitais_HE.SetLesoes(const Value: integer);
begin
  FLesoes := Value;
end;

procedure TGenitais_HE.SetOdor(const Value: integer);
begin
  FOdor := Value;
end;

procedure TGenitais_HE.Setpresenca_parasitas(const Value: integer);
begin
  Fpresenca_parasitas := Value;
end;

procedure TGenitais_HE.SetPresenca_secrecao(const Value: integer);
begin
  FPresenca_secrecao := Value;
end;

procedure TGenitais_HE.SetPrurido(const Value: integer);
begin
  FPrurido := Value;
end;

procedure TGenitais_HE.SetSuspeita_dst(const Value: integer);
begin
  FSuspeita_DST := Value;
end;

procedure TGenitais_HE.SetTipo_secrecao(const Value: integer);
begin
  FTipo_secrecao := Value;
end;

procedure TGenitais_HE.Setultima_coleta_co(const Value: integer);
begin
  Fultima_coleta_co := Value;
end;

procedure TGenitais_HE.SetUsa_Preservativo(const Value: integer);
begin
  FUsa_Preservativo := Value;
end;

end.
