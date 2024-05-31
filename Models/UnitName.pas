unit UnitName;

interface

uses
  SysUtils, 
  Generics.Collections, 
  Aurelius.Mapping.Attributes, 
  Aurelius.Types.Blob, 
  Aurelius.Types.DynamicProperties, 
  Aurelius.Types.Nullable, 
  Aurelius.Types.Proxy, 
  Aurelius.Criteria.Dictionary;

type
  TAtendimentoTableDictionary = class;
  TServicoTableDictionary = class;
  TServicoTipoTableDictionary = class;
  TAtendimentoServicoTableDictionary = class;
  TPessoaTableDictionary = class;
  TPessoaTipoTableDictionary = class;
  
  TDicDictionary = class
  private
    FAtendimento: TAtendimentoTableDictionary;
    FServico: TServicoTableDictionary;
    FServicoTipo: TServicoTipoTableDictionary;
    FAtendimentoServico: TAtendimentoServicoTableDictionary;
    FPessoa: TPessoaTableDictionary;
    FPessoaTipo: TPessoaTipoTableDictionary;
    function GetAtendimento: TAtendimentoTableDictionary;
    function GetServico: TServicoTableDictionary;
    function GetServicoTipo: TServicoTipoTableDictionary;
    function GetAtendimentoServico: TAtendimentoServicoTableDictionary;
    function GetPessoa: TPessoaTableDictionary;
    function GetPessoaTipo: TPessoaTipoTableDictionary;
  public
    destructor Destroy; override;
    property Atendimento: TAtendimentoTableDictionary read GetAtendimento;
    property Servico: TServicoTableDictionary read GetServico;
    property ServicoTipo: TServicoTipoTableDictionary read GetServicoTipo;
    property AtendimentoServico: TAtendimentoServicoTableDictionary read GetAtendimentoServico;
    property Pessoa: TPessoaTableDictionary read GetPessoa;
    property PessoaTipo: TPessoaTipoTableDictionary read GetPessoaTipo;
  end;
  
  TAtendimentoTableDictionary = class
  private
    Fid: TDictionaryAttribute;
    Fobservacao: TDictionaryAttribute;
    Fvalor_total: TDictionaryAttribute;
    Fcreated_at: TDictionaryAttribute;
    Fupdated_at: TDictionaryAttribute;
    FResponsavel: TDictionaryAssociation;
    FPaciente: TDictionaryAssociation;
  public
    constructor Create;
    property id: TDictionaryAttribute read Fid;
    property observacao: TDictionaryAttribute read Fobservacao;
    property valor_total: TDictionaryAttribute read Fvalor_total;
    property created_at: TDictionaryAttribute read Fcreated_at;
    property updated_at: TDictionaryAttribute read Fupdated_at;
    property Responsavel: TDictionaryAssociation read FResponsavel;
    property Paciente: TDictionaryAssociation read FPaciente;
  end;
  
  TServicoTableDictionary = class
  private
    Fid: TDictionaryAttribute;
    Fdescricao: TDictionaryAttribute;
    Fvalor: TDictionaryAttribute;
    Fcreated_at: TDictionaryAttribute;
    Fupdated_at: TDictionaryAttribute;
    FTipo: TDictionaryAssociation;
  public
    constructor Create;
    property id: TDictionaryAttribute read Fid;
    property descricao: TDictionaryAttribute read Fdescricao;
    property valor: TDictionaryAttribute read Fvalor;
    property created_at: TDictionaryAttribute read Fcreated_at;
    property updated_at: TDictionaryAttribute read Fupdated_at;
    property Tipo: TDictionaryAssociation read FTipo;
  end;
  
  TServicoTipoTableDictionary = class
  private
    Fid: TDictionaryAttribute;
    Fdescricao: TDictionaryAttribute;
    Fcreated_at: TDictionaryAttribute;
    Fupdated_at: TDictionaryAttribute;
  public
    constructor Create;
    property id: TDictionaryAttribute read Fid;
    property descricao: TDictionaryAttribute read Fdescricao;
    property created_at: TDictionaryAttribute read Fcreated_at;
    property updated_at: TDictionaryAttribute read Fupdated_at;
  end;
  
  TAtendimentoServicoTableDictionary = class
  private
    Fid: TDictionaryAttribute;
    Fcreated_at: TDictionaryAttribute;
    Fupdated_at: TDictionaryAttribute;
    FAtendimento: TDictionaryAssociation;
    FServico: TDictionaryAssociation;
  public
    constructor Create;
    property id: TDictionaryAttribute read Fid;
    property created_at: TDictionaryAttribute read Fcreated_at;
    property updated_at: TDictionaryAttribute read Fupdated_at;
    property Atendimento: TDictionaryAssociation read FAtendimento;
    property Servico: TDictionaryAssociation read FServico;
  end;
  
  TPessoaTableDictionary = class
  private
    Fid: TDictionaryAttribute;
    Fnome: TDictionaryAttribute;
    Fcpf: TDictionaryAttribute;
    Fcreated_at: TDictionaryAttribute;
    Fupdated_at: TDictionaryAttribute;
    FTipo: TDictionaryAssociation;
  public
    constructor Create;
    property id: TDictionaryAttribute read Fid;
    property nome: TDictionaryAttribute read Fnome;
    property cpf: TDictionaryAttribute read Fcpf;
    property created_at: TDictionaryAttribute read Fcreated_at;
    property updated_at: TDictionaryAttribute read Fupdated_at;
    property Tipo: TDictionaryAssociation read FTipo;
  end;
  
  TPessoaTipoTableDictionary = class
  private
    Fid: TDictionaryAttribute;
    Fdescricao: TDictionaryAttribute;
    Fcreated_at: TDictionaryAttribute;
    Fupdated_at: TDictionaryAttribute;
  public
    constructor Create;
    property id: TDictionaryAttribute read Fid;
    property descricao: TDictionaryAttribute read Fdescricao;
    property created_at: TDictionaryAttribute read Fcreated_at;
    property updated_at: TDictionaryAttribute read Fupdated_at;
  end;
  
function Dic: TDicDictionary;

implementation

var
  __Dic: TDicDictionary;

function Dic: TDicDictionary;
begin
  if __Dic = nil then __Dic := TDicDictionary.Create;
  result := __Dic
end;

{ TDicDictionary }

destructor TDicDictionary.Destroy;
begin
  if FPessoaTipo <> nil then FPessoaTipo.Free;
  if FPessoa <> nil then FPessoa.Free;
  if FAtendimentoServico <> nil then FAtendimentoServico.Free;
  if FServicoTipo <> nil then FServicoTipo.Free;
  if FServico <> nil then FServico.Free;
  if FAtendimento <> nil then FAtendimento.Free;
  inherited;
end;

function TDicDictionary.GetAtendimento: TAtendimentoTableDictionary;
begin
  if FAtendimento = nil then FAtendimento := TAtendimentoTableDictionary.Create;
  result := FAtendimento;
end;

function TDicDictionary.GetServico: TServicoTableDictionary;
begin
  if FServico = nil then FServico := TServicoTableDictionary.Create;
  result := FServico;
end;

function TDicDictionary.GetServicoTipo: TServicoTipoTableDictionary;
begin
  if FServicoTipo = nil then FServicoTipo := TServicoTipoTableDictionary.Create;
  result := FServicoTipo;
end;

function TDicDictionary.GetAtendimentoServico: TAtendimentoServicoTableDictionary;
begin
  if FAtendimentoServico = nil then FAtendimentoServico := TAtendimentoServicoTableDictionary.Create;
  result := FAtendimentoServico;
end;

function TDicDictionary.GetPessoa: TPessoaTableDictionary;
begin
  if FPessoa = nil then FPessoa := TPessoaTableDictionary.Create;
  result := FPessoa;
end;

function TDicDictionary.GetPessoaTipo: TPessoaTipoTableDictionary;
begin
  if FPessoaTipo = nil then FPessoaTipo := TPessoaTipoTableDictionary.Create;
  result := FPessoaTipo;
end;

{ TAtendimentoTableDictionary }

constructor TAtendimentoTableDictionary.Create;
begin
  inherited;
  Fid := TDictionaryAttribute.Create('id');
  Fobservacao := TDictionaryAttribute.Create('observacao');
  Fvalor_total := TDictionaryAttribute.Create('valor_total');
  Fcreated_at := TDictionaryAttribute.Create('created_at');
  Fupdated_at := TDictionaryAttribute.Create('updated_at');
  FResponsavel := TDictionaryAssociation.Create('Responsavel');
  FPaciente := TDictionaryAssociation.Create('Paciente');
end;

{ TServicoTableDictionary }

constructor TServicoTableDictionary.Create;
begin
  inherited;
  Fid := TDictionaryAttribute.Create('id');
  Fdescricao := TDictionaryAttribute.Create('descricao');
  Fvalor := TDictionaryAttribute.Create('valor');
  Fcreated_at := TDictionaryAttribute.Create('created_at');
  Fupdated_at := TDictionaryAttribute.Create('updated_at');
  FTipo := TDictionaryAssociation.Create('Tipo');
end;

{ TServicoTipoTableDictionary }

constructor TServicoTipoTableDictionary.Create;
begin
  inherited;
  Fid := TDictionaryAttribute.Create('id');
  Fdescricao := TDictionaryAttribute.Create('descricao');
  Fcreated_at := TDictionaryAttribute.Create('created_at');
  Fupdated_at := TDictionaryAttribute.Create('updated_at');
end;

{ TAtendimentoServicoTableDictionary }

constructor TAtendimentoServicoTableDictionary.Create;
begin
  inherited;
  Fid := TDictionaryAttribute.Create('id');
  Fcreated_at := TDictionaryAttribute.Create('created_at');
  Fupdated_at := TDictionaryAttribute.Create('updated_at');
  FAtendimento := TDictionaryAssociation.Create('Atendimento');
  FServico := TDictionaryAssociation.Create('Servico');
end;

{ TPessoaTableDictionary }

constructor TPessoaTableDictionary.Create;
begin
  inherited;
  Fid := TDictionaryAttribute.Create('id');
  Fnome := TDictionaryAttribute.Create('nome');
  Fcpf := TDictionaryAttribute.Create('cpf');
  Fcreated_at := TDictionaryAttribute.Create('created_at');
  Fupdated_at := TDictionaryAttribute.Create('updated_at');
  FTipo := TDictionaryAssociation.Create('Tipo');
end;

{ TPessoaTipoTableDictionary }

constructor TPessoaTipoTableDictionary.Create;
begin
  inherited;
  Fid := TDictionaryAttribute.Create('id');
  Fdescricao := TDictionaryAttribute.Create('descricao');
  Fcreated_at := TDictionaryAttribute.Create('created_at');
  Fupdated_at := TDictionaryAttribute.Create('updated_at');
end;

initialization

finalization
  if __Dic <> nil then __Dic.Free

end.
