program Server;

uses
  Vcl.Forms,
  unServer in 'unServer.pas' {frmServer},
  unDM in 'unDM.pas' {DM: TDataModule},
  unPessoa in '..\Comum\unPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServer, frmServer);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.