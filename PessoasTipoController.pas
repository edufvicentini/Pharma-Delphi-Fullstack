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
    function CreateNew(data: TPessoaTipo): Boolean;
    function Find(Id: integer): TPessoaTipo;
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

function TPessoasTipoController.CreateNew(data: TPessoaTipo): Boolean;
var
  pessoa: TPessoaTipo;
begin
  try
    xDataClient.Post(data);
    result := True;
  except
    on E:Exception do
      result := False;
  end;
end;

function TPessoasTipoController.Find(Id: integer): TPessoaTipo;
begin
  try
    result := xDataClient.Get<TPessoaTipo>(Id);
  except
    on E:Exception do
      result := nil;
  end;
end;

end.
