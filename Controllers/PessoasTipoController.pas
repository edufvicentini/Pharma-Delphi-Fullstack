unit PessoasTipoController;

interface
uses XData.Web.Connection, XData.Web.Client, XData.Client, Generics.Collections,
PessoaTipoModel, System.Classes, System.SysUtils;

type
  TPessoasTipoController = class
    constructor Create(Parent: TComponent);
    destructor Destroy;
  private
    xDataClient: TXDataClient;
  public
    FResponse: TXDataClientResponse;
    function Index: TList<TPessoaTipo>;
  end;

implementation

constructor TPessoasTipoController.Create(Parent: TComponent);
begin
  xDataClient := TXDataClient.Create;
  xDataClient.Uri := 'http://localhost:2001/tms/xdata';
end;

destructor TPessoasTipoController.Destroy;
begin
  xDataClient.Free;
end;

function TPessoasTipoController.Index: TList<TPessoaTipo>;
var
  pessoas: TList<TPessoaTipo>;
  Response: TXDataClientResponse;
begin
  try
    pessoas := xDataClient.List<TPessoaTipo>;
    result := pessoas;
  finally
  end;
end;

end.
