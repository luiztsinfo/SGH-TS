unit Model.Couro_Cabeludo_He;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('he.couro_cabeludo_he')]
  TCouro_Cabeludo_HE = class(TTabela)

    private
    FDesmatites: integer;
    FLocal_lesao: string;
    FSujidade: integer;
    FPediculose: integer;
    FTamanho_lesao: string;
    FId: integer;
    FId_he: integer;
    FLesoes: integer;
    FSeborreia: integer;
    procedure SetDesmatites(const Value: integer);
    procedure SetId(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetLesoes(const Value: integer);
    procedure SetLocal_lesao(const Value: string);
    procedure SetPediculose(const Value: integer);
    procedure SetSeborreia(const Value: integer);
    procedure SetSujidade(const Value: integer);
    procedure SetTamanho_lesao(const Value: string);

    public
      [attPK]
      property id : integer read FId write SetId;
      [attNotNull('Id He')]
      property id_he : integer read FId_he write SetId_he;
      property seborreia : integer read FSeborreia write SetSeborreia;
      property desmatites : integer read FDesmatites write SetDesmatites;
      property sujidade : integer read FSujidade write SetSujidade;
      property pediculose : integer read FPediculose write SetPediculose;
      property lesoes : integer read FLesoes write SetLesoes;
      property tipo_lesao : string read FLocal_lesao write SetLocal_lesao;
      property tamanho_lesao : string read FTamanho_lesao write SetTamanho_lesao;
  end;

implementation

{ TCouro_Cabeludo_HE }

procedure TCouro_Cabeludo_HE.SetDesmatites(const Value: integer);
begin
  FDesmatites := Value;
end;

procedure TCouro_Cabeludo_HE.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TCouro_Cabeludo_HE.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TCouro_Cabeludo_HE.SetLesoes(const Value: integer);
begin
  FLesoes := Value;
end;

procedure TCouro_Cabeludo_HE.SetLocal_lesao(const Value: string);
begin
  FLocal_lesao := Value;
end;

procedure TCouro_Cabeludo_HE.SetPediculose(const Value: integer);
begin
  FPediculose := Value;
end;

procedure TCouro_Cabeludo_HE.SetSeborreia(const Value: integer);
begin
  FSeborreia := Value;
end;

procedure TCouro_Cabeludo_HE.SetSujidade(const Value: integer);
begin
  FSujidade := Value;
end;

procedure TCouro_Cabeludo_HE.SetTamanho_lesao(const Value: string);
begin
  FTamanho_lesao := Value;
end;

end.
