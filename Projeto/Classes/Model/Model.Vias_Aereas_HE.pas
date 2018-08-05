unit Model.Vias_Aereas_HE;

interface

uses
  Lca.Orm.Atributos, Lca.Orm.Base;

type
  [AttTabela('he.vias_aereas_he')]
  TVias_Aereas_HE = class(TTabela)
    private
    FMandatorio_intermitente: integer;
    FAssistido: integer;
    FControlado: integer;
    FFio2: string;
    FPeep: string;
    FId: integer;
    FId_he: integer;
    FComissura_labial: string;
    FAssistido_controlado: integer;
    procedure SetAssistido(const Value: integer);
    procedure SetAssistido_Controlado(const Value: integer);
    procedure SetComissura_labial(const Value: string);
    procedure SetControlado(const Value: integer);
    procedure SetFio2(const Value: string);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetMandatorio_intermitente(const Value: integer);
    procedure SetPeep(const Value: string);

    public
      [AttPk]
      property id : integer read FId write SetId;
      [AttNotNull('Id HE')]
      property id_he : integer read FId_he write SetId_he;
      property controlado : integer read FControlado write SetControlado;
      property assistido : integer read FAssistido write SetAssistido;
      property assistido_controlado : integer read FAssistido_controlado write SetAssistido_Controlado;
      property mandatorio_intermitente : integer read FMandatorio_intermitente write SetMandatorio_intermitente;
      property fio2 : string read FFio2 write SetFio2;
      property peep : string read FPeep write SetPeep;
      property comissura_labial : string read FComissura_labial write SetComissura_labial;
  end;

implementation

{ TVias_Aereas_HE }

procedure TVias_Aereas_HE.SetAssistido(const Value: integer);
begin
  FAssistido := Value;
end;

procedure TVias_Aereas_HE.SetAssistido_Controlado(const Value: integer);
begin
  FAssistido_controlado := Value;
end;

procedure TVias_Aereas_HE.SetComissura_labial(const Value: string);
begin
  FComissura_labial := Value;
end;

procedure TVias_Aereas_HE.SetControlado(const Value: integer);
begin
  FControlado := Value;
end;

procedure TVias_Aereas_HE.SetFio2(const Value: string);
begin
  FFio2 := Value;
end;

procedure TVias_Aereas_HE.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TVias_Aereas_HE.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TVias_Aereas_HE.SetMandatorio_intermitente(const Value: integer);
begin
  FMandatorio_intermitente := Value;
end;

procedure TVias_Aereas_HE.SetPeep(const Value: string);
begin
  FPeep := Value;
end;

end.
