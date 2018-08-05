unit Model.Antecedentes;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('he.antecedentes')]
  TAntecedentes = class(TTabela)
  private
    FId: Integer;
    FDescricao: string;
    FSituacao: string;
    FTipo_antecedente: integer;
    procedure SetTipo_antecedente(const Value: integer);
  public

    [attPK]
    property Id: Integer read FId write FId;
    [AttNotNull('Descrição')]
    property Descricao: string read FDescricao write FDescricao;
    [AttNotNull('Situação')]
    property Situacao: string read FSituacao write FSituacao;
    [AttNotNull('Tipo Antecedente: Pessoal ou Familiar')]
    property Tipo_antecedente : integer read FTipo_antecedente write SetTipo_antecedente;
  end;

implementation

{ TReligioes }

procedure TAntecedentes.SetTipo_antecedente(const Value: integer);
begin
  FTipo_antecedente := Value;
end;

end.

