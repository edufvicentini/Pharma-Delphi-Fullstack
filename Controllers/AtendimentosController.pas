unit AtendimentosController;

interface
uses XData.Web.Connection, XData.Web.Client, XData.Client, Generics.Collections,
AtendimentoModel, System.Classes, System.SysUtils, IAtendimentosService,
AtendimentoServicoModel;

type
  TAtendimentosController = class
    constructor Create(Parent: TComponent);
    destructor Destroy;
  private
    xDataClient: TXDataClient;
  public
    FResponse: TXDataClientResponse;
    function Index: TList<TAtendimento>;
    function CreateNew(data: TAtendimento; atendimentoServicos: TList<TAtendimentoServico>): TAtendimento;
    function Edit(data: TAtendimento; atendimentoServicos: TList<TAtendimentoServico>): TAtendimento;
    function Find(Id: integer): TAtendimento;
    function Delete(data: TAtendimento): Boolean;
    function GetNextIndex: Integer;
    function BuscaServicos(codigo: Integer): TList<TAtendimentoServico>;
  end;

implementation

constructor TAtendimentosController.Create(Parent: TComponent);
begin
  xDataClient := TXDataClient.Create;
  xDataClient.Uri := 'http://localhost:2001/tms/xdata';
end;

destructor TAtendimentosController.Destroy;
begin
  xDataClient.Free;
end;

function TAtendimentosController.Index: TList<TAtendimento>;
var
  atendimentos: TList<TAtendimento>;
  Response: TXDataClientResponse;
begin
  try
    atendimentos := xDataClient.List<TAtendimento>;
    result := atendimentos;
  finally
  end;
end;

function TAtendimentosController.CreateNew(data: TAtendimento; atendimentoServicos: TList<TAtendimentoServico>): TAtendimento;
begin
  result := xDataClient.Service<IAtendimentosServiceContract>.SaveAtendimento(data, atendimentoServicos);
end;

function TAtendimentosController.Edit(data: TAtendimento; atendimentoServicos: TList<TAtendimentoServico>): TAtendimento;
begin
  result := xDataClient.Service<IAtendimentosServiceContract>.EditAtendimento(data, atendimentoServicos);
end;

function TAtendimentosController.Delete(data: TAtendimento): Boolean;
begin
  xDataClient.Service<IAtendimentosServiceContract>.DeleteAtendimento(data);
  xDataClient.Delete(data);
  result := True;
end;

function TAtendimentosController.Find(Id: integer): TAtendimento;
begin
  try
    result := xDataClient.Get<TAtendimento>(Id);
  except
    on E:Exception do
      result := nil;
  end;
end;

function TAtendimentosController.GetNextIndex: Integer;
begin
  try
    result := xDataClient.Service<IAtendimentosServiceContract>.FindNextId;
  except
    on E:Exception do
      result := 0;
  end;
end;

function TAtendimentosController.BuscaServicos(codigo: Integer): TList<TAtendimentoServico>;
begin
  try
    result := xDataClient.Service<IAtendimentosServiceContract>.FindAllServices(codigo);
  except
    on E:Exception do
      result := nil;
  end;
end;

end.
