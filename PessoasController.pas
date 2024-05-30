unit PessoasController;

interface
uses XData.Web.Connection, XData.Web.Client, Generics.Collections;

type
  TPessoasController = class
    xDataConnection: TXDataWebConnection;
    xDataWebClient: TXDataWebClient;
  private
    procedure Connect;
    procedure IndexLoad(Response: TXDataClientResponse);
  public
    function Index: TList<TObject>;
    function Create(data: TObject): integer;
    function Find(Id: integer): TObject;
  end;

implementation

procedure TPessoasController.Connect();
begin
  xDataConnection.URL := 'localhost:3001/tsm/xdata';
  xDataConnection.Open;
  xDataWebClient.Connection := xDataConnection;
end;

function TPessoasController.Index: TList<TObject>;
begin
  Connect;

  try
    xDataWebClient.OnLoad := IndexLoad;
    xDataWebClient.List('Pessoas');
    xDataWebClient.OnLoad
  finally

  end;
end;

procedure IndexLoad(Response: TXDataClientResponse);
begin

end;

function TPessoasController.Create(data: TObject): integer;
begin

end;

function TPessoasController.Find(Id: integer): TObject;
begin

end;

end.
