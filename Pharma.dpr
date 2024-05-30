program Pharma;

uses
  Vcl.Forms,
  ConsultaMestre in 'ConsultaMestre.pas' {ConsM},
  PessoasController in 'PessoasController.pas',
  AtendimentoModel in 'Models\AtendimentoModel.pas',
  AtendimentoServicoModel in 'Models\AtendimentoServicoModel.pas',
  PessoaModel in 'Models\PessoaModel.pas',
  PessoaTipoModel in 'Models\PessoaTipoModel.pas',
  ServicoModel in 'Models\ServicoModel.pas',
  ServicoTipoModel in 'Models\ServicoTipoModel.pas',
  Main in 'Main.pas' {Principal},
  ConsultaPessoas in 'ConsultaPessoas.pas' {ConPessoas},
  PessoasTipoController in 'PessoasTipoController.pas',
  CadMestre in 'CadMestre.pas' {CadM},
  CadPessoas in 'CadPessoas.pas' {FrmPessoas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TCadM, CadM);
  Application.CreateForm(TFrmPessoas, FrmPessoas);
  Application.Run;
end.
