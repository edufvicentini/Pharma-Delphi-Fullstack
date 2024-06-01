unit ServicosController;

interface
uses XData.Web.Connection, XData.Web.Client, XData.Client, Generics.Collections,
PessoaModel, ServicoModel, System.Classes, System.SysUtils, IServicoService;

type
  TServicosController = class
    constructor Create(Parent: TComponent);
    destructor Destroy;
  private
    xDataClient: TXDataClient;
  public
    FResponse: TXDataClientResponse;
    function Index: TList<TServico>;
    function CreateNew(data: TServico): TServico;
    function Edit(data: TServico): TServico;
    function Find(Id: integer): TServico;
    function Delete(data: TServico): Boolean;
  end;

implementation

constructor TServicosController.Create(Parent: TComponent);
begin
  xDataClient := TXDataClient.Create;
  xDataClient.Uri := 'http://localhost:2001/tms/xdata';
end;

destructor TServicosController.Destroy;
begin
  xDataClient.Free;
end;

function TServicosController.Index: TList<TServico>;
var
  servicos: TList<TServico>;
  Response: TXDataClientResponse;
begin
  try
    servicos := xDataClient.List<TServico>;
    result := servicos;
  finally
  end;
end;

function TServicosController.CreateNew(data: TServico): TServico;
begin
  result := xDataClient.Service<IServicosService>.Create(data);
end;

function TServicosController.Edit(data: TServico): TServico;
begin
  result := xDataClient.Service<IServicosService>.Update(data);
end;

function TServicosController.Delete(data: TServico): Boolean;
begin
  xDataClient.Delete(data);
  result := True;
end;

function TServicosController.Find(Id: integer): TServico;
begin
  try
    result := xDataClient.Get<TServico>(Id);
  except
    on E:Exception do
      result := nil;
  end;
end;

end.
