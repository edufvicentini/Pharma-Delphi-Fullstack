unit IPessoaService;

interface

uses
  PessoaModel, XData.Service.Common, Generics.Collections;


type
  [ServiceContract]
  IPessoasService = interface(IInvokable)
  ['{F0BADD7E-D4AE-4521-8869-8E1860B0A4A0}']
    [HttpGet] function ListAllFarmaceuticos: TList<TPessoa>;
    [HttpGet] function ListAllPacientes: TList<TPessoa>;
    [HttpPost] function Create(pessoa: TPessoa): TPessoa;
    [HttpPut] function Update(pessoa: TPessoa): TPessoa;
  end;

implementation
initialization
  RegisterServiceType(TypeInfo(IPessoasService));

end.
