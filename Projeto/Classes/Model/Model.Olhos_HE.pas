unit Model.Olhos_HE;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('he.olhos_he')]
  TOlhos_he = class(TTabela)

    private
    FHiperemia: integer;
    FIctericia: integer;
    FCorada: integer;
    FEdema_palpebral: integer;
    FSujidade: integer;
    FIsocoricas: integer;
    FAnemia: integer;
    FId: integer;
    FPtose_palpebral: integer;
    FDiminuidade: integer;
    FId_he: integer;
    FFoto_reagentes: integer;
    FSem_fotoreacao: integer;
    FDescorada: integer;
    FPreservada: integer;
    FAnisocoricas: integer;
    FAusente: integer;
    FObs_outros: string;
    procedure SetAnemia(const Value: integer);
    procedure SetAnisocoricas(const Value: integer);
    procedure SetAusente(const Value: integer);
    procedure SetCorada(const Value: integer);
    procedure SetDescorada(const Value: integer);
    procedure SetDiminuidade(const Value: integer);
    procedure SetEdema_palpebral(const Value: integer);
    procedure SetFoto_reagentes(const Value: integer);
    procedure SetHiperemia(const Value: integer);
    procedure SetIctericia(const Value: integer);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetIsocoridas(const Value: integer);
    procedure SetPreservada(const Value: integer);
    procedure SetPtose_palpebral(const Value: integer);
    procedure SetSem_fotoreacao(const Value: integer);
    procedure SetSujidade(const Value: integer);
    procedure SetObs_outros(const Value: string);

    public
      [attPk]
      property id : integer read FId write SetId;
      [attNotNull('Id He')]
      property id_he : integer read FId_he write SetId_he;
      property preservada : integer read FPreservada write SetPreservada;
      property diminuida : integer read FDiminuidade write SetDiminuidade;
      property ausente : integer read FAusente write SetAusente;
      property corada : integer read FCorada write SetCorada;
      property descorada : integer read FDescorada write SetDescorada;
      property hiperemia : integer read FHiperemia write SetHiperemia;
      property ictericia : integer read FIctericia write SetIctericia;
      property anemia : integer read FAnemia write SetAnemia;
      property sujidade : integer read FSujidade write SetSujidade;
      property edema_palpebral : integer read FEdema_palpebral write SetEdema_palpebral;
      property ptose_palpebral : integer read FPtose_palpebral write SetPtose_palpebral;
      property isocoricas : integer read FIsocoricas write SetIsocoridas;
      property anisocoricas : integer read FAnisocoricas write SetAnisocoricas;
      property fotoreagentes : integer read FFoto_reagentes write SetFoto_reagentes;
      property sem_fotoreacao : integer read FSem_fotoreacao write SetSem_fotoreacao;
      property obs_outros : string read FObs_outros write SetObs_outros;
  end;

implementation

{ TOlhos_he }

procedure TOlhos_he.SetAnemia(const Value: integer);
begin
  FAnemia := Value;
end;

procedure TOlhos_he.SetAnisocoricas(const Value: integer);
begin
  FAnisocoricas := Value;
end;

procedure TOlhos_he.SetAusente(const Value: integer);
begin
  FAusente := Value;
end;

procedure TOlhos_he.SetCorada(const Value: integer);
begin
  FCorada := Value;
end;

procedure TOlhos_he.SetDescorada(const Value: integer);
begin
  FDescorada := Value;
end;

procedure TOlhos_he.SetDiminuidade(const Value: integer);
begin
  FDiminuidade := Value;
end;

procedure TOlhos_he.SetEdema_palpebral(const Value: integer);
begin
  FEdema_palpebral := Value;
end;

procedure TOlhos_he.SetFoto_reagentes(const Value: integer);
begin
  FFoto_reagentes := Value;
end;

procedure TOlhos_he.SetHiperemia(const Value: integer);
begin
  FHiperemia := Value;
end;

procedure TOlhos_he.SetIctericia(const Value: integer);
begin
  FIctericia := Value;
end;

procedure TOlhos_he.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TOlhos_he.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TOlhos_he.SetIsocoridas(const Value: integer);
begin
  FIsocoricas := Value;
end;

procedure TOlhos_he.SetObs_outros(const Value: string);
begin
  FObs_outros := Value;
end;

procedure TOlhos_he.SetPreservada(const Value: integer);
begin
  FPreservada := Value;
end;

procedure TOlhos_he.SetPtose_palpebral(const Value: integer);
begin
  FPtose_palpebral := Value;
end;

procedure TOlhos_he.SetSem_fotoreacao(const Value: integer);
begin
  FSem_fotoreacao := Value;
end;

procedure TOlhos_he.SetSujidade(const Value: integer);
begin
  FSujidade := Value;
end;

end.
