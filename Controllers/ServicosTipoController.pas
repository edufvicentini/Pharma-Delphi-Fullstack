unit ServicosTipoController;

interface
uses XData.Web.Connection, XData.Web.Client, XData.Client, Generics.Collections,
ServicoTipoModel, System.Classes, System.SysUtils;

type
  TServicosTipoController = class
    constructor Create(Parent: TComponent);
    destructor Destroy;
  private
    xDataClient: TXDataClient;
  public
    FResponse: TXDataClientResponse;
    function Index: TList<TServicoTipo>;
  end;

implementation

constructor TServicosTipoController.Create(Parent: TComponent);
begin
  xDataClient := TXDataClient.Create;
  xDataClient.Uri := 'http://localhost:2001/tms/xdata';
end;

destructor TServicosTipoController.Destroy;
begin
  xDataClient.Free;
end;

function TServicosTipoController.Index: TList<TServicoTipo>;
var
  servicosTipo: TList<TServicoTipo>;
begin
  try
    servicosTipo := xDataClient.List<TServicoTipo>;
    result := servicosTipo;
  finally
  end;
end;

end.
