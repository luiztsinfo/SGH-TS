unit unFrmOpcaoAtendimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, unConstantes;

type
  TfrmOpcaoAtendimento = class(TForm)
    SpdBtnAmbulatorial: TSpeedButton;
    SpdBtnInternacao: TSpeedButton;
    procedure SpdBtnAmbulatorialClick(Sender: TObject);
    procedure SpdBtnInternacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
//  frmOpcaoAtendimento: TfrmOpcaoAtendimento;

implementation

uses
  unFrmAtendimentos;

{$R *.dfm}

procedure TfrmOpcaoAtendimento.SpdBtnAmbulatorialClick(Sender: TObject);
begin
  frmAtendimentos.iTipoAtendimento := tpAmbulatorial;
  Self.Close;
end;

procedure TfrmOpcaoAtendimento.SpdBtnInternacaoClick(Sender: TObject);
begin
  frmAtendimentos.iTipoAtendimento := tpInternacao;
  Self.Close;
end;

end.
