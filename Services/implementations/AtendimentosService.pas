unit AtendimentosService;

interface

uses
  IAtendimentosService,
  XData.Server.Module,
  XData.Service.Common,
  XData.QueryBuilder, Aurelius.Criteria.Linq,
  XData.Client, AtendimentoModel, Generics.Collections, AtendimentoServicoModel,
  System.Net.HttpClientComponent, PessoaModel, ServicoModel, SysUtils, System.Variants;

type
  [ServiceImplementation]
  TAtendimentosService = class(TInterfacedObject, IAtendimentosServiceContract)
  private
    function FindNextId: integer;
    function FindAllServices(codigo: integer): TList<TAtendimentoServico>;
    function SaveAtendimento(atendimento: TAtendimento; atendimentoServicos: TList<TAtendimentoServico>): TAtendimento;
    function EditAtendimento(atendimento: TAtendimento; atendimentoServicos: TList<TAtendimentoServico>): TAtendimento;
    procedure DeleteAtendimento(atendimento: TAtendimento);
    procedure ValidarEntity(atendimento: TAtendimento);
  end;

implementation

function TAtendimentosService.FindNextId: integer;
var
  Client: TXDataClient;
  lista: TList<TAtendimento>;
begin
  Client := TXDataClient.Create;
  Client.Uri := 'http://localhost:2001/tms/xdata';
  lista := Client.List<TAtendimento>(CreateQuery.From(TAtendimento).Top(1).QueryString);
  if lista.Count = 0 then
    result := 1
  else
  begin
    result := lista[0].id + 1;
  end;
end;

function TAtendimentosService.SaveAtendimento(atendimento: TAtendimento; atendimentoServicos: TList<TAtendimentoServico>): TAtendimento;
var
  atendimentoServico: TAtendimentoServico;
begin
  ValidarEntity(atendimento);
  atendimento.Responsavel := TXDataOperationContext.Current.GetManager.Find<TPessoa>(atendimento.Responsavel.id);
  atendimento.Paciente    := TXDataOperationContext.Current.GetManager.Find<TPessoa>(atendimento.Paciente.id);
  result                  := TXDataOperationContext.Current.GetManager.Merge<TAtendimento>(atendimento);

  for atendimentoServico in atendimentoServicos do
  begin
    atendimentoServico.Atendimento := Result;
    atendimentoServico.Servico := TXDataOperationContext.Current.GetManager.Find<TServico>(atendimentoServico.Servico.id);
    TXDataOperationContext.Current.GetManager.Merge<TAtendimentoServico>(atendimentoServico);
  end;
end;

function TAtendimentosService.EditAtendimento(atendimento: TAtendimento; atendimentoServicos: TList<TAtendimentoServico>): TAtendimento;
var
  atendimentoServico, atendimentoServicoBanco: TAtendimentoServico;
  listaAtendimentoServicoBanco: TList<TAtendimentoServico>;
  exclui: boolean;
begin
  ValidarEntity(atendimento);
  atendimento.Responsavel := TXDataOperationContext.Current.GetManager.Find<TPessoa>(atendimento.Responsavel.id);
  atendimento.Paciente    := TXDataOperationContext.Current.GetManager.Find<TPessoa>(atendimento.Paciente.id);

  result                  := TXDataOperationContext.Current.GetManager.Merge<TAtendimento>(atendimento);
  TXDataOperationContext.Current.GetManager.Flush;

  listaAtendimentoServicoBanco := FindAllServices(result.id);

  for atendimentoServicoBanco in listaAtendimentoServicoBanco do
  begin
    exclui := True;
    for atendimentoServico in atendimentoServicos do
    begin
      if atendimentoServicoBanco.id = atendimentoServico.id then
      begin
        exclui := False;
        break;
      end;
    end;
    if exclui then
      TXDataOperationContext.Current.GetManager.Remove(atendimentoServicoBanco);
  end;
  
  for atendimentoServico in atendimentoServicos do
  begin     
    atendimentoServico.Atendimento := Result;
    atendimentoServico.Servico := TXDataOperationContext.Current.GetManager.Find<TServico>(atendimentoServico.Servico.id);
    TXDataOperationContext.Current.GetManager.Merge<TAtendimentoServico>(atendimentoServico);
  end;
end;

function TAtendimentosService.FindAllServices(codigo: integer): TList<TAtendimentoServico>;
begin
  result := TXDataOperationContext.Current.GetManager.Find<TAtendimentoServico>.Where(TLinq.Eq('atendimento', codigo)).List;
end;

procedure TAtendimentosService.DeleteAtendimento(atendimento: TAtendimento);
var
  atendimentoServicos: TList<TAtendimentoServico>;
  atendimentoServico: TAtendimentoServico;
  I: integer;
begin
  atendimentoServicos := FindAllServices(atendimento.id);

  for I := 0 to atendimentoServicos.count - 1 do
    TXDataOperationContext.Current.GetManager.Remove(atendimentoServicos[I]);

  TXDataOperationContext.Current.GetManager.Flush;
  //TXDataOperationContext.Current.GetManager.Remove(atendimento);
end;

procedure TAtendimentosService.ValidarEntity(atendimento: TAtendimento);
begin
  if atendimento.Responsavel.id = 0 then
    raise Exception.Create('Farmacêutico obrigatório');

  if atendimento.Paciente.id = 0 then
    raise Exception.Create('Paciente obrigatório');
end;

initialization
  RegisterServiceType(TAtendimentosService);

end.
