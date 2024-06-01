unit IServicoService;

interface

uses
  ServicoModel, XData.Service.Common, Generics.Collections;


type
  [ServiceContract]
  IServicosService = interface(IInvokable)
  ['{F0BADD7E-D4AE-4521-8869-8E1860B0A4A0}']
    [HttpPost] function Create(pessoa: TServico): TServico;
    [HttpPut] function Update(pessoa: TServico): TServico;
  end;

implementation
initialization
  RegisterServiceType(TypeInfo(IServicosService));

end.
