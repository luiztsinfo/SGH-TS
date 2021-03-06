unit Model.Sinais_Vitais_HE;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type

  [attTabela('he.sinais_vitais_he')]
  TSinais_Vitais_HE = class(TTabela)

  private
    FFr: double;
    FPa: double;
    FSpo2: double;
    FID: integer;
    FId_he: integer;
    FFc: double;
    FTemperatura: double;
    procedure SetFc(const Value: double);
    procedure SetFr(const Value: double);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetPa(const Value: double);
    procedure SetSpo2(const Value: double);
    procedure SetTemperatura(const Value: double);

  public
    [attPK]
    property id: integer read FID write SetId;
    [attNotNull('Id HE')]
    property id_he: integer read FId_he write SetId_he;
    property temperatura: double read FTemperatura write SetTemperatura;
    property fc: double read FFc write SetFc;
    property fr: double read FFr write SetFr;
    property pa: double read FPa write SetPa;
    property spo2: double read FSpo2 write SetSpo2;
  end;

implementation

{ TSinais_Vitais_HE }

procedure TSinais_Vitais_HE.SetFc(const Value: double);
begin
  FFc := Value;
end;

procedure TSinais_Vitais_HE.SetFr(const Value: double);
begin
  FFr := Value;
end;

procedure TSinais_Vitais_HE.SetId(const Value: integer);
begin
  FID := Value;
end;

procedure TSinais_Vitais_HE.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TSinais_Vitais_HE.SetPa(const Value: double);
begin
  FPa := Value;
end;

procedure TSinais_Vitais_HE.SetSpo2(const Value: double);
begin
  FSpo2 := Value;
end;

procedure TSinais_Vitais_HE.SetTemperatura(const Value: double);
begin
  FTemperatura := Value;
end;

end.
