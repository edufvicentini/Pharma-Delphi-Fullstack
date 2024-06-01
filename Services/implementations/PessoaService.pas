unit PessoaService;

interface

uses
  IPessoaService,
  XData.Server.Module,
  XData.Service.Common,
  XData.QueryBuilder, Aurelius.Criteria.Linq,
  XData.Client, AtendimentoModel, Generics.Collections,
  System.Net.HttpClientComponent, PessoaModel,
  SysUtils;

type
  [ServiceImplementation]
  TPessoasService = class(TInterfacedObject, IPessoasService)
  private
    function ListAllFarmaceuticos: TList<TPessoa>;
    function ListAllPacientes: TList<TPessoa>;
    function Create(pessoa: TPessoa): TPessoa;
    function Update(pessoa: TPessoa): TPessoa;
    procedure ValidarEntity(pessoa: TPessoa);
  end;

implementation

function TPessoasService.ListAllFarmaceuticos: TList<TPessoa>;
begin
  result := TXDataOperationContext.Current.GetManager.Find<TPessoa>.Where(TLinq.Eq('tipo', '2')).List;
end;

function TPessoasService.ListAllPacientes: TList<TPessoa>;
begin
  result := TXDataOperationContext.Current.GetManager.Find<TPessoa>.Where(TLinq.Eq('tipo', '1')).List;
end;

function TPessoasService.Create(pessoa: TPessoa): TPessoa;
begin
  ValidarEntity(pessoa);
  result := TXDataOperationContext.Current.GetManager.Merge<TPessoa>(pessoa);
end;

function TPessoasService.Update(pessoa: TPessoa): TPessoa;
begin
  ValidarEntity(pessoa);
  result := TXDataOperationContext.Current.GetManager.Merge<TPessoa>(pessoa);
  TXDataOperationContext.Current.GetManager.Flush;
end;

procedure TPessoasService.ValidarEntity(pessoa: TPessoa);
begin
  if Length(pessoa.cpf) < 11 then
    raise Exception.Create('CPF Inválido');

  if pessoa.nome = '' then
    raise Exception.Create('Nome obrigatório');

  if pessoa.Tipo = nil then
    raise Exception.Create('Tipo de pessoa obrigatório');
end;

initialization
  RegisterServiceType(TPessoasService);

end.
