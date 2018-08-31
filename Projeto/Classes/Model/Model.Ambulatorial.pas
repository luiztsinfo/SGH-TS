unit Model.Ambulatorial;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('atendimentos.AMBULATORIAL')]
  TAmbulatorial = class(TTabela)
  private
    FId: Integer;
    FDataHora_atendimento: TDateTime;
    FCarater: Integer;
    FId_medico_responsavel: Integer;
    FId_procedimento: Integer;
    FId_cid_provisorio: string;
    FId_setor: Integer;
    FTipo_clinica: Integer;
    FTipo_atendimento: Integer;
    FId_convenio: Integer;
    FId_responsavel: Integer;
    FResponsavel_paciente: Integer;
    FDataHora_alta: TDateTime;
    FId_cid_definitivo: string;
    FMotivo_alta: Integer;
    FTipo_saida_tiss: Integer;
    FId_encaminhamento: Integer;
    FTransferido_para: string;
    FStatus: string;
    FID_paciente: integer;
  public
    [attPK]
    property Id: Integer read FId write FId;
    property DataHora_atendimento: TDateTime read FDataHora_atendimento write FDataHora_atendimento;
    property Carater: Integer read FCarater write FCarater;
    property Id_medico_responsavel: Integer read FId_medico_responsavel write FId_medico_responsavel;
    property Id_procedimento: Integer read FId_procedimento write FId_procedimento;
    property Id_cid_provisorio: string read FId_cid_provisorio write FId_cid_provisorio;
    property Id_setor: Integer read FId_setor write FId_setor;
    property Tipo_clinica: Integer read FTipo_clinica write FTipo_clinica;
    property Tipo_atendimento: Integer read FTipo_atendimento write FTipo_atendimento;
    property Id_convenio: Integer read FId_convenio write FId_convenio;
    property Id_responsavel: Integer read FId_responsavel write FId_responsavel;
    property Responsavel_paciente: Integer read FResponsavel_paciente write FResponsavel_paciente;
    property DataHora_alta: TDateTime read FDataHora_alta write FDataHora_alta;
    property Id_cid_definitivo: string read FId_cid_definitivo write FId_cid_definitivo;
    property Motivo_alta: Integer read FMotivo_alta write FMotivo_alta;
    property Tipo_saida_tiss: Integer read FTipo_saida_tiss write FTipo_saida_tiss;
    property Id_encaminhamento: Integer read FId_encaminhamento write FId_encaminhamento;
    property Transferido_para: string read FTransferido_para write FTransferido_para;
    property Status: string read FStatus write FStatus;
    property Id_paciente: integer read FID_paciente write FID_Paciente;
  end;

implementation

end.

