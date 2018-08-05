unit Model.TGI_HE;

interface

uses
  Lca.Orm.Atributos, Lca.Orm.Base;

type
  [attTabela('he.tgi_he')]
  TTGI_HE = class(TTabela)
    private
    FHipoativos: integer;
    FNpo: integer;
    FHiperativos: integer;
    FMedida_figado: Double;
    FDoloroso_palpacao: string;
    FEspontanea_assistida: integer;
    FSng: integer;
    FCicatrizes: string;
    FPresenca_massa_anormal: string;
    FEspontanea: integer;
    FSons_macicos: integer;
    FSne: integer;
    FAscítico: integer;
    FOutros_achados: string;
    FPalpacao_fig_alterado: integer;
    FEscavado: integer;
    FPercussao_fig_alterado: integer;
    FPlano: integer;
    FId: integer;
    FGastrostomia: integer;
    FId_he: integer;
    FAusentes: integer;
    FPalpacao_fig_normal: integer;
    FDistendido: integer;
    FFlacido: integer;
    FPercussao_fig_normal: integer;
    FIndolor: integer;
    FNormais_audiveis: integer;
    FSng_aberta: integer;
    FTimpanico: integer;
    FNpt: integer;
    FInspecao: integer;
    FSons_timpanicos: integer;
    FGloboso: integer;
    FJejunostomia: integer;
    procedure SetAscítico(const Value: integer);
    procedure SetAusentes(const Value: integer);
    procedure SetCicatrizes(const Value: string);
    procedure SetDistendido(const Value: integer);
    procedure SetDoloroso_palpacao(const Value: string);
    procedure SetEscavado(const Value: integer);
    procedure SetEspontanea(const Value: integer);
    procedure SetEspontanea_assistida(const Value: integer);
    procedure SetFlacido(const Value: integer);
    procedure SetGastrostomia(const Value: integer);
    procedure SetGloboso(const Value: integer);
    procedure SetHiperativos(const Value: integer);
    procedure SetHipoativos(const Value: integer);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetIndolor(const Value: integer);
    procedure SetInspecao(const Value: integer);
    procedure SetJejunostomia(const Value: integer);
    procedure SetMedida_figado(const Value: Double);
    procedure SetNormais_audiveis(const Value: integer);
    procedure SetNpo(const Value: integer);
    procedure SetNpt(const Value: integer);
    procedure SetOutros_achados(const Value: string);
    procedure SetPalpacao_fig_alterado(const Value: integer);
    procedure SetPalpacao_fig_normal(const Value: integer);
    procedure SetPercussao_fig_alterado(const Value: integer);
    procedure SetPercussao_fig_normal(const Value: integer);
    procedure SetPlano(const Value: integer);
    procedure SetPresenca_massa_anormal(const Value: string);
    procedure SetSne(const Value: integer);
    procedure SetSng(const Value: integer);
    procedure SetSng_aberta(const Value: integer);
    procedure SetSons_macicos(const Value: integer);
    procedure SetSons_timpanicos(const Value: integer);
    procedure SetTimpanico(const Value: integer);

    public
      [attPk]
      property id : integer read FId write SetId;
      [attNotNull('Id HE')]
      property id_he : integer read FId_he write SetId_he;
      property cicatrizes : string read FCicatrizes write SetCicatrizes;
      property outros_achados : string read FOutros_achados write SetOutros_achados;
      property medida_figado : Double read FMedida_figado write SetMedida_figado;
      property espontanea : integer read FEspontanea write SetEspontanea;
      property espontanea_assistida : integer read FEspontanea_assistida write SetEspontanea_assistida;
      property npo : integer read FNpo write SetNpo;
      property sng : integer read FSng write SetSng;
      property sne : integer read FSne write SetSne;
      property npt : integer read FNpt write SetNpt;
      property sng_aberta : integer read FSng_aberta write SetSng_aberta;
      property jejunostomia : integer read FJejunostomia write SetJejunostomia;
      property gastrostomia : integer read FGastrostomia write SetGastrostomia;
      property globoso : integer read FGloboso write SetGloboso;
      property plano : integer read FPlano write SetPlano;
      property escavado : integer read FEscavado write SetEscavado;
      property flacido : integer read FFlacido write SetFlacido;
      property distendido : integer read FDistendido write SetDistendido;
      property timpanico : integer read FTimpanico write SetTimpanico;
      property ascitico : integer read FAscítico write SetAscítico;
      property inspecao : integer read FInspecao write SetInspecao;
      property normais_audiveis : integer read FNormais_audiveis write SetNormais_audiveis;
      property ausentes : integer read FAusentes write SetAusentes;
      property hiperativos : integer read FHiperativos write SetHiperativos;
      property hipoativos : integer read FHipoativos write SetHipoativos;
      property sons_timpanicos : integer read FSons_timpanicos write SetSons_timpanicos;
      property sons_macicos : integer read FSons_macicos write SetSons_macicos;
      property indolor : integer read FIndolor write SetIndolor;
      property doloroso_palpacao : string read FDoloroso_palpacao write SetDoloroso_palpacao;
      property presenca_massa_anormal : string read FPresenca_massa_anormal write SetPresenca_massa_anormal;
      property palpacao_fig_normal : integer read FPalpacao_fig_normal write SetPalpacao_fig_normal;
      property palpacao_fig_alterado : integer read FPalpacao_fig_alterado write SetPalpacao_fig_alterado;
      property percussao_fig_normal : integer read FPercussao_fig_normal write SetPercussao_fig_normal;
      property percussao_fig_alterado : integer read FPercussao_fig_alterado write SetPercussao_fig_alterado;
  end;

implementation

{ TTGI_HE }

procedure TTGI_HE.SetAscítico(const Value: integer);
begin
  FAscítico := Value;
end;

procedure TTGI_HE.SetAusentes(const Value: integer);
begin
  FAusentes := Value;
end;

procedure TTGI_HE.SetCicatrizes(const Value: string);
begin
  FCicatrizes := Value;
end;

procedure TTGI_HE.SetDistendido(const Value: integer);
begin
  FDistendido := Value;
end;

procedure TTGI_HE.SetDoloroso_palpacao(const Value: string);
begin
  FDoloroso_palpacao := Value;
end;

procedure TTGI_HE.SetEscavado(const Value: integer);
begin
  FEscavado := Value;
end;

procedure TTGI_HE.SetEspontanea(const Value: integer);
begin
  FEspontanea := Value;
end;

procedure TTGI_HE.SetEspontanea_assistida(const Value: integer);
begin
  FEspontanea_assistida := Value;
end;

procedure TTGI_HE.SetFlacido(const Value: integer);
begin
  FFlacido := Value;
end;

procedure TTGI_HE.SetGastrostomia(const Value: integer);
begin
  FGastrostomia := Value;
end;

procedure TTGI_HE.SetGloboso(const Value: integer);
begin
  FGloboso := Value;
end;

procedure TTGI_HE.SetHiperativos(const Value: integer);
begin
  FHiperativos := Value;
end;

procedure TTGI_HE.SetHipoativos(const Value: integer);
begin
  FHipoativos := Value;
end;

procedure TTGI_HE.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TTGI_HE.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TTGI_HE.SetIndolor(const Value: integer);
begin
  FIndolor := Value;
end;

procedure TTGI_HE.SetInspecao(const Value: integer);
begin
  FInspecao := Value;
end;

procedure TTGI_HE.SetJejunostomia(const Value: integer);
begin
  FJejunostomia := Value;
end;

procedure TTGI_HE.SetMedida_figado(const Value: Double);
begin
  FMedida_figado := Value;
end;

procedure TTGI_HE.SetNormais_audiveis(const Value: integer);
begin
  FNormais_audiveis := Value;
end;

procedure TTGI_HE.SetNpo(const Value: integer);
begin
  FNpo := Value;
end;

procedure TTGI_HE.SetNpt(const Value: integer);
begin
  FNpt := Value;
end;

procedure TTGI_HE.SetOutros_achados(const Value: string);
begin
  FOutros_achados := Value;
end;

procedure TTGI_HE.SetPalpacao_fig_alterado(const Value: integer);
begin
  FPalpacao_fig_alterado := Value;
end;

procedure TTGI_HE.SetPalpacao_fig_normal(const Value: integer);
begin
  FPalpacao_fig_normal := Value;
end;

procedure TTGI_HE.SetPercussao_fig_alterado(const Value: integer);
begin
  FPercussao_fig_alterado := Value;
end;

procedure TTGI_HE.SetPercussao_fig_normal(const Value: integer);
begin
  FPercussao_fig_normal := Value;
end;

procedure TTGI_HE.SetPlano(const Value: integer);
begin
  FPlano := Value;
end;

procedure TTGI_HE.SetPresenca_massa_anormal(const Value: string);
begin
  FPresenca_massa_anormal := Value;
end;

procedure TTGI_HE.SetSne(const Value: integer);
begin
  FSne := Value;
end;

procedure TTGI_HE.SetSng(const Value: integer);
begin
  FSng := Value;
end;

procedure TTGI_HE.SetSng_aberta(const Value: integer);
begin
  FSng_aberta := Value;
end;

procedure TTGI_HE.SetSons_macicos(const Value: integer);
begin
  FSons_macicos := Value;
end;

procedure TTGI_HE.SetSons_timpanicos(const Value: integer);
begin
  FSons_timpanicos := Value;
end;

procedure TTGI_HE.SetTimpanico(const Value: integer);
begin
  FTimpanico := Value;
end;

end.
