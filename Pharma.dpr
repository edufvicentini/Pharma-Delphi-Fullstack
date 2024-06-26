program Pharma;

uses
  Vcl.Forms,
  ConsultaMestre in 'ConsultaMestre.pas' {ConsM},
  AtendimentoModel in 'Models\AtendimentoModel.pas',
  AtendimentoServicoModel in 'Models\AtendimentoServicoModel.pas',
  PessoaModel in 'Models\PessoaModel.pas',
  PessoaTipoModel in 'Models\PessoaTipoModel.pas',
  ServicoModel in 'Models\ServicoModel.pas',
  ServicoTipoModel in 'Models\ServicoTipoModel.pas',
  Main in 'Main.pas' {Principal},
  ConsultaPessoas in 'ConsultaPessoas.pas' {ConPessoas},
  CadMestre in 'CadMestre.pas' {CadM},
  CadPessoas in 'CadPessoas.pas' {FrmPessoas},
  CadServicos in 'CadServicos.pas' {FrmServicos},
  PessoasController in 'Controllers\PessoasController.pas',
  PessoasTipoController in 'Controllers\PessoasTipoController.pas',
  ServicosController in 'Controllers\ServicosController.pas',
  ServicosTipoController in 'Controllers\ServicosTipoController.pas',
  ConsultaServicos in 'ConsultaServicos.pas' {ConServicos},
  CadAtendimentos in 'CadAtendimentos.pas' {FrmAtendimentos},
  ConsultaAtendimentos in 'ConsultaAtendimentos.pas' {ConAtendimentos},
  AtendimentosController in 'Controllers\AtendimentosController.pas',
  IAtendimentosService in 'Services\interfaces\IAtendimentosService.pas',
  IPessoaService in 'Services\interfaces\IPessoaService.pas',
  IServicoService in 'Services\interfaces\IServicoService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.Run;
end.
