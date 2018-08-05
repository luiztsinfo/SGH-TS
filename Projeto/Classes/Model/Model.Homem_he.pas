unit Model.Homem_he;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('he.homem_he')]
  THomem_he = class(TTabela)
    private
      FExame_preventivo_prostata: TDateTime;
      FId: integer;
      FAtividade_sexual: integer;
      FId_he: integer;
      FResultado_exame_prostata: string;
      procedure SetAtividade_sexual(const Value: integer);
      procedure SetExame_preventivo_prostata(const Value: TDateTime);
      procedure SetId(const Value: integer);
      procedure SetId_He(const Value: integer);
      procedure SetResultado_exame_prostata(const Value: string);

    public
      [attPK]
      property id: integer read FId write SetId;
      [AttNotNull('Id HE')]
      property id_he: integer read FId_he write SetId_He;
      property Exame_preventivo_prostata: TDateTime
        read FExame_preventivo_prostata write SetExame_preventivo_prostata;
      property Resultado_exame_prostata: string read FResultado_exame_prostata
        write SetResultado_exame_prostata;
      property Atividade_sexual: integer read FAtividade_sexual
        write SetAtividade_sexual;
  end;

implementation

{ THomem_he }

procedure THomem_he.SetAtividade_sexual(const Value: integer);
begin
  FAtividade_sexual := Value;
end;

procedure THomem_he.SetExame_preventivo_prostata(const Value: TDateTime);
begin
  FExame_preventivo_prostata := Value;
end;

procedure THomem_he.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure THomem_he.SetId_He(const Value: integer);
begin
  FId_he := Value;
end;

procedure THomem_he.SetResultado_exame_prostata(const Value: string);
begin
  FResultado_exame_prostata := Value;
end;

end.
