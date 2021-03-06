unit Model.Aprazamento_Prescricao_HE;

interface

uses
  Lca.Orm.Atributos, Lca.Orm.Base;

type
  [attTabela('he.aprazamento_prescricao_he')]
  TAprazamento_Prescricao_HE = class(TTabela)
    private
    FHora: TTime;
    FId: integer;
    FId_Prescricao_he: integer;
    procedure SetHora(const Value: TTime);
    procedure SetId(const Value: integer);
    procedure SetId_Prescricao_HE(const Value: integer);

    public
      [attPk]
      property id : integer read FId write SetId;
      [attNotNull('Id Prescrição HE')]
      property id_prescricao_he : integer read FId_Prescricao_he write SetId_Prescricao_HE;
      property hora : TTime read FHora write SetHora;

  end;

implementation

{ TAprazamento_Prescricao_HE }

procedure TAprazamento_Prescricao_HE.SetHora(const Value: TTime);
begin
  FHora := Value;
end;

procedure TAprazamento_Prescricao_HE.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TAprazamento_Prescricao_HE.SetId_Prescricao_HE(const Value: integer);
begin
  FId_Prescricao_he := Value;
end;

end.
