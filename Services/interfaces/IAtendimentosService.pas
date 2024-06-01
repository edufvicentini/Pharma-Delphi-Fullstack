unit IAtendimentosService;

interface

uses
  AtendimentoModel, XData.Service.Common, Generics.Collections, AtendimentoServicoModel;


type
  [ServiceContract]
  IAtendimentosServiceContract = interface(IInvokable)
  ['{F0BADD7E-D4AE-4521-8869-8E1860B0A4A0}']
    [HttpGet] function FindNextId: integer;
    [HttpGet] function FindAllServices(codigo: integer): TList<TAtendimentoServico>;
    [HttpPost] function SaveAtendimento(atendimento: TAtendimento; atendimentoServicos: TList<TAtendimentoServico>): TAtendimento;
    [HttpPut] function EditAtendimento(atendimento: TAtendimento; atendimentoServicos: TList<TAtendimentoServico>): TAtendimento;
    [HttpDelete] procedure DeleteAtendimento(atendimento: TAtendimento);
  end;

implementation
initialization
  RegisterServiceType(TypeInfo(IAtendimentosServiceContract));

end.
