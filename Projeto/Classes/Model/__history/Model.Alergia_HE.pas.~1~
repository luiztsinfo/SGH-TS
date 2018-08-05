unit Model.Alergia_HE;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('alergias_he')]
  TAntecedente_Paciente = class(TTabela)
  private
    FId: Integer;
    FId_he: integer;
    FId_Alergia: integer;
    FTipo_Alergia: integer;
    procedure SetId(const Value: Integer);
    procedure SetId_Antecedente(const Value: integer);
    procedure SetId_he(const Value: integer);
    procedure SetTipo_Antecedente(const Value: integer);

  public

    [attPK]
    property Id: Integer read FId write SetId;
    [AttNotNull('Id Antecedente')]
    property Id_Antecedente: integer read FId_Antecedente write SetId_Antecedente;
    [AttNotNull('Id HE')]
    property Id_he: integer read FId_he write SetId_he;
    [AttNotNull('Tipo Antecedente')]
    property Tipo_antecedente : integer read FTipo_antecedente write SetTipo_Antecedente;

  end;

implementation


{ TAntecedente_Paciente }

procedure TAntecedente_Paciente.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TAntecedente_Paciente.SetId_Antecedente(const Value: integer);
begin
  FId_Antecedente := Value;
end;

procedure TAntecedente_Paciente.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

procedure TAntecedente_Paciente.SetTipo_Antecedente(const Value: integer);
begin
  FTipo_antecedente := Value;
end;

end.

