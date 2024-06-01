program PharmaServer;

uses
  Vcl.Forms,
  DataModule in 'DataModule.pas' {ServerContainer: TDataModule},
  Main in 'Main.pas' {MainForm},
  AtendimentoModel in '..\Models\AtendimentoModel.pas',
  AtendimentoServicoModel in '..\Models\AtendimentoServicoModel.pas',
  PessoaModel in '..\Models\PessoaModel.pas',
  PessoaTipoModel in '..\Models\PessoaTipoModel.pas',
  ServicoModel in '..\Models\ServicoModel.pas',
  ServicoTipoModel in '..\Models\ServicoTipoModel.pas',
  IAtendimentosService in '..\Services\interfaces\IAtendimentosService.pas',
  AtendimentosService in '..\Services\implementations\AtendimentosService.pas',
  PessoaService in '..\Services\implementations\PessoaService.pas',
  IPessoaService in '..\Services\interfaces\IPessoaService.pas',
  IServicoService in '..\Services\interfaces\IServicoService.pas',
  ServicoService in '..\Services\implementations\ServicoService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServerContainer, ServerContainer);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
