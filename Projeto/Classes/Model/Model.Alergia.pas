unit Model.Alergia;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('he.alergias')]
  TAlergia = class(TTabela)
  private
    FId: Integer;
    FDescricao: string;
    FSituacao: string;
    FTipo_alergia: integer;
    procedure SetDescricao(const Value: string);
    procedure SetId(const Value: Integer);
    procedure SetSituacao(const Value: string);
    procedure SetTipo_alergia(const Value: integer);

  public

    [attPK]
    property Id: Integer read FId write SetId;
    [AttNotNull('Descri��o')]
    property Descricao: string read FDescricao write SetDescricao;
    [AttNotNull('Situa��o')]
    property Situacao: string read FSituacao write SetSituacao;
    [AttNotNull('Tipo Alergia: Alimentar/Medicamentosas')]
    property Tipo_alergia : integer read FTipo_alergia write SetTipo_alergia;
  end;

implementation

{ TReligioes }

procedure TAlergia.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TAlergia.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TAlergia.SetSituacao(const Value: string);
begin
  FSituacao := Value;
end;

procedure TAlergia.SetTipo_alergia(const Value: integer);
begin
  FTipo_alergia := Value;
end;

end.

