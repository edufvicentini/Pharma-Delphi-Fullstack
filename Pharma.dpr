program Pharma;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  ConsultaMaster in 'ConsultaMaster.pas' {Consulta},
  ConsultaPessoas in 'ConsultaPessoas.pas' {ConsultaPessoa},
  PessoasService in 'PessoasService.pas',
  AtendimentoModel in 'Models\AtendimentoModel.pas',
  AtendimentoServicoModel in 'Models\AtendimentoServicoModel.pas',
  PessoaModel in 'Models\PessoaModel.pas',
  PessoaTipoModel in 'Models\PessoaTipoModel.pas',
  ServicoModel in 'Models\ServicoModel.pas',
  ServicoTipoModel in 'Models\ServicoTipoModel.pas',
  UnitName in 'Models\UnitName.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TConsultaM, Consulta);
  Application.CreateForm(TConsultaPessoa, ConsultaPessoa);
  Application.Run;
end.
