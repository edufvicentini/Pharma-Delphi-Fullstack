unit PessoasController;

interface
uses XData.Web.Connection, XData.Web.Client, XData.Client, Generics.Collections,
PessoaModel, ServicoModel, System.Classes, System.SysUtils;

type
  TPessoasController = class
    constructor Create(Parent: TComponent);
    destructor Destroy;
  private
    xDataClient: TXDataClient;
  public
    FResponse: TXDataClientResponse;
    function Index: TList<TPessoa>;
    function CreateNew(data: TPessoa): Boolean;
    function Find(Id: integer): TPessoa;
  end;

implementation

constructor TPessoasController.Create(Parent: TComponent);
begin
  xDataClient := TXDataClient.Create;
  xDataClient.Uri := 'http://localhost:2001/tms/xdata';
end;

destructor TPessoasController.Destroy;
begin
  xDataClient.Free;
end;

function TPessoasController.Index: TList<TPessoa>;
var
  pessoas: TList<TPessoa>;
  Response: TXDataClientResponse;
begin
  try
    pessoas := xDataClient.List<TPessoa>;
    result := pessoas;
  finally
  end;
end;

function TPessoasController.CreateNew(data: TPessoa): Boolean;
var
  pessoa: TPessoa;
begin
  try
    xDataClient.Post(data);
    result := True;
  except
    on E:Exception do
      result := False;
  end;
end;

function TPessoasController.Find(Id: integer): TPessoa;
begin
  try
    result := xDataClient.Get<TPessoa>(Id);
  except
    on E:Exception do
      result := nil;
  end;
end;

end.
