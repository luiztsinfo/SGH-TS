unit Model.Cirurgia_HE;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type

  [attTabela('he.cirurgias_he')]
  TCirurgia_HE = class(TTabela)
  private
    FId: Integer;
    FId_he: Integer;
    FId_Cirurgia: Integer;

    procedure SetId(const Value: Integer);
    procedure SetId_Cirurgia(const Value: Integer);
    procedure SetId_he(const Value: Integer);

  public
    [attPK]
    [AttNotNull('ID cirurgias_he')]
    property Id: Integer read FId write SetId;
    [AttNotNull('Id Cirurgia')]
    property Id_cirurgia: Integer read FId_Cirurgia write SetId_Cirurgia;
    [AttNotNull('Id HE')]
    property Id_he: Integer read FId_he write SetId_he;
  end;

implementation

{ TCirurgia_HE }

procedure TCirurgia_HE.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TCirurgia_HE.SetId_Cirurgia(const Value: Integer);
begin
  FId_Cirurgia := Value;
end;

procedure TCirurgia_HE.SetId_he(const Value: Integer);
begin
  FId_he := Value;
end;

end.
