unit Model.AtividadeReligiosa_HE;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type

  [attTabela('he.religiosas_he')]
  TAtividadeReligiosa_HE = class(TTabela)
  private
    FId: Integer;
    FId_he: Integer;
    FId_atividade_religiosa: Integer;

    procedure SetId(const Value: Integer);
    procedure SetId_atividade_religiosa(const Value: Integer);
    procedure SetId_he(const Value: Integer);

  public
    [attPK]
    [AttNotNull('ID religiosas_he')]
    property Id: Integer read FId write SetId;
    [AttNotNull('Id Atividade Religiosa')]
    property Id_atividade_religiosa: Integer read FId_atividade_religiosa write SetId_atividade_religiosa;
    [AttNotNull('Id HE')]
    property Id_he: Integer read FId_he write SetId_he;
  end;

implementation

{ TAtividadeReligiosa_HE }

procedure TAtividadeReligiosa_HE.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TAtividadeReligiosa_HE.SetId_atividade_religiosa(
  const Value: Integer);
begin
  FId_atividade_religiosa := Value;
end;

procedure TAtividadeReligiosa_HE.SetId_he(const Value: Integer);
begin
  FId_he := Value;
end;

end.
