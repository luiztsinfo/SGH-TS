unit Model.Diagnosticos_HE;

interface

uses
  Lca.Orm.Atributos, Lca.Orm.Base;

type
  [attTabela('he.diagnosticos_he')]
  TDiagnosticos_he = class(TTabela)
    private
    FId: integer;
    FId_he: integer;
    FId_diagnostico: integer;
    procedure SetId(const Value: integer);
    procedure SetId_diagnostico(const Value: integer);
    procedure SetId_he(const Value: integer);

    public
      [attPk]
      property Id : integer read FId write SetId;
      [attNotNull('Id Diagnůstico')]
      property id_diagnostico : integer read FId_diagnostico write SetId_diagnostico;
      [attNotNull('Id HE')]
      property id_he : integer read FId_he write SetId_he;
  end;

implementation

{ TDiagnosticos_he }

procedure TDiagnosticos_he.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TDiagnosticos_he.SetId_diagnostico(const Value: integer);
begin
  FId_diagnostico := Value;
end;

procedure TDiagnosticos_he.SetId_he(const Value: integer);
begin
  FId_he := Value;
end;

end.
