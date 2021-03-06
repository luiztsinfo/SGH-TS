unit Model.Alergia_HE;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type

  [attTabela('he.alergias_he')]
  TAlergia_HE = class(TTabela)
  private
    FId: Integer;
    FId_he: Integer;
    FId_Alergia: Integer;

    procedure SetId(const Value: Integer);
    procedure SetId_Alergia(const Value: Integer);
    procedure SetId_he(const Value: Integer);

  public
    [attPK]
    [AttNotNull('ID alergias_he')]
    property Id: Integer read FId write SetId;
    [AttNotNull('Id Alergia')]
    property Id_Alergia: Integer read FId_Alergia write SetId_Alergia;
    [AttNotNull('Id HE')]
    property Id_he: Integer read FId_he write SetId_he;
  end;

implementation

{ TAntecedente_Paciente }

procedure TAlergia_HE.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TAlergia_HE.SetId_Alergia(const Value: Integer);
begin
  FId_Alergia := Value;
end;

procedure TAlergia_HE.SetId_he(const Value: Integer);
begin
  FId_he := Value;
end;

end.
