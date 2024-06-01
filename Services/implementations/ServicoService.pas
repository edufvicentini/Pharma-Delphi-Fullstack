unit ServicoService;

interface

uses
  IServicoService,
  XData.Server.Module,
  XData.Service.Common,
  XData.QueryBuilder, Aurelius.Criteria.Linq,
  XData.Client, AtendimentoModel, Generics.Collections,
  System.Net.HttpClientComponent, ServicoModel,
  SysUtils;

type
  [ServiceImplementation]
  TServicosService = class(TInterfacedObject, IServicosService)
  private
    function Create(servico: TServico): TServico;
    function Update(servico: TServico): TServico;
    procedure ValidarEntity(servico: TServico);
  end;

implementation

function TServicosService.Create(servico: TServico): TServico;
begin
  ValidarEntity(servico);
  result := TXDataOperationContext.Current.GetManager.Merge<TServico>(servico);
end;

function TServicosService.Update(servico: TServico): TServico;
begin
  ValidarEntity(servico);
  result := TXDataOperationContext.Current.GetManager.Merge<TServico>(servico);
  TXDataOperationContext.Current.GetManager.Flush;
end;

procedure TServicosService.ValidarEntity(servico: TServico);
begin
  if servico.descricao = '' then
    raise Exception.Create('Descrição Obrigatória');

end;

initialization
  RegisterServiceType(TServicosService);

end.
