unit PessoasService;

interface
uses XData.Web.Connection, XData.Web.Client, XData.Client, Generics.Collections, PessoaModel, ServicoModel, System.Classes;

type
  TPessoasService = class
    constructor Create(Parent: TComponent);
    destructor Destroy;
  private
    xDataConnection: TXDataWebConnection;
    xDataWebClient: TXDataClient;
    xDataClient: TXDataClient;
  public
    FResponse: TXDataClientResponse;
    function Index: TList<TPessoa>;
    function CreateNew(data: TPessoa): TPessoa;
    function Find(Id: integer): TPessoa;
  end;

implementation

constructor TPessoasService.Create(Parent: TComponent);
begin
  xDataClient := TXDataClient.Create;
  xDataClient.Uri := 'http://localhost:2001/tms/xdata';
end;

destructor TPessoasService.Destroy;
begin
  xDataClient.Free;
end;

function TPessoasService.Index: TList<TPessoa>;
var
  pessoas: TList<TPessoa>;
  Response: TXDataClientResponse;
begin
  try
    pessoas := xDataClient.List<TPessoa>;
    result := pessoas;
  finally
    //xDataClient.Free;
  end;
end;

function TPessoasService.CreateNew(data: TPessoa): TPessoa;
begin

end;

function TPessoasService.Find(Id: integer): TPessoa;
begin

end;

end.
