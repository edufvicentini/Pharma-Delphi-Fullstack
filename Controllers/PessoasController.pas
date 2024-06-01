unit PessoasController;

interface
uses XData.Web.Connection, XData.Web.Client, XData.Client, Generics.Collections,
PessoaModel, ServicoModel, System.Classes, System.SysUtils, IPessoaService;

type
  TPessoasController = class
    constructor Create(Parent: TComponent);
    destructor Destroy;
  private
    xDataClient: TXDataClient;
  public
    FResponse: TXDataClientResponse;
    function Index: TList<TPessoa>;
    function CreateNew(data: TPessoa): TPessoa;
    function Edit(data: TPessoa): TPessoa;
    function Find(Id: integer): TPessoa;
    function Delete(data: TPessoa): Boolean;
    function ListAllFarmaceuticos: TList<TPessoa>;
    function ListAllPacientes: TList<TPessoa>;
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

function TPessoasController.CreateNew(data: TPessoa): TPessoa;
begin
  result := xDataClient.Service<IPessoasService>.Create(data);
end;

function TPessoasController.Edit(data: TPessoa): TPessoa;
begin
  result := xDataClient.Service<IPessoasService>.Update(data);
end;

function TPessoasController.Delete(data: TPessoa): Boolean;
begin
  xDataClient.Delete(data);
  result := True;
end;

function TPessoasController.Find(Id: integer): TPessoa;
begin
  result := xDataClient.Get<TPessoa>(Id);
end;

function TPessoasController.ListAllFarmaceuticos: TList<TPessoa>;
begin
  try
    result := xDataClient.Service<IPessoasService>.ListAllFarmaceuticos;
  except
    on E:Exception do
      result := TList<TPessoa>.Create;
  end;
end;

function TPessoasController.ListAllPacientes: TList<TPessoa>;
begin
  try
    result := xDataClient.Service<IPessoasService>.ListAllPacientes;
  except
    on E:Exception do
      result := TList<TPessoa>.Create;
  end;
end;

end.
