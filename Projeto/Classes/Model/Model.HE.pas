unit Model.HE;

interface

uses Lca.Orm.Base, Lca.Orm.Atributos;

type

  [AttTabela('he.he')]
  THE = class(TTabela)
  private
    FID: Integer;
    FData_Admissao: TDateTime;
    FId_paciente: Integer;
    FID_Enfermeiro: Integer;
    FData_Alta: TDateTime;
    FNumero_filhos: integer;
    FIdade: string;
    FLeito: string;
    procedure SetID(const Value: Integer);
    procedure SetData_Admissao(const Value: TDateTime);
    procedure SetId_Paciente(const Value: Integer);
    procedure SetId_Enfermeiro(const Value: Integer);
    procedure SetData_alta(const Value: TDateTime);
    procedure SetIdade(const Value: string);
    procedure SetLeito(const Value: string);
    procedure SetNumero_filhos(const Value: integer);

  public
    [AttPk]
    [AttNotNull('ID HE')]
    property ID: Integer read FID write SetID;
//    [AttNotNull('Data Admissao')]
    property Data_Admissao: TDateTime read FData_Admissao write SetData_Admissao;
    [AttNotNull('ID Paciente')]
    property ID_Paciente: Integer read FId_paciente write SetId_Paciente;
    [AttNotNull('ID Enfermeiro')]
    property ID_Enfermeiro: Integer read FID_Enfermeiro write SetId_Enfermeiro;
    property Data_alta: TDateTime read FData_Alta write SetData_alta;
    property Leito: string read FLeito write SetLeito;
    property Idade: string read FIdade write SetIdade;
    property Numero_filhos: integer read FNumero_filhos write SetNumero_filhos;
  end;

implementation

{ THE }

procedure THE.SetData_Admissao(const Value: TDateTime);
begin
  FData_Admissao := Value;
end;

procedure THE.SetData_alta(const Value: TDateTime);
begin
  FData_Alta := Value;
end;

procedure THE.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure THE.SetIdade(const Value: string);
begin
  FIdade := Value;
end;

procedure THE.SetId_Enfermeiro(const Value: integer);
begin
  FID_Enfermeiro := Value;
end;

procedure THE.SetId_Paciente(const Value: integer);
begin
  FId_paciente := Value;
end;

procedure THE.SetLeito(const Value: string);
begin
  FLeito := Value;
end;

procedure THE.SetNumero_filhos(const Value: integer);
begin
  FNumero_filhos := Value;
end;

end.
