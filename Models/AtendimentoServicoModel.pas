unit AtendimentoServicoModel;

interface

uses
  SysUtils, 
  Generics.Collections, 
  Aurelius.Mapping.Attributes, 
  Aurelius.Types.Blob, 
  Aurelius.Types.DynamicProperties, 
  Aurelius.Types.Nullable, 
  Aurelius.Types.Proxy, 
  AtendimentoModel, 
  ServicoModel;

type
  TAtendimentoServico = class;
  
  [Entity]
  [Table('atendimentos_servicos')]
  [Id('Fid', TIdGenerator.None)]
  TAtendimentoServico = class
  private
    [Column('id', [TColumnProp.Required])]
    Fid: Integer;
    
    [Column('created_at', [])]
    Fcreated_at: Nullable<TDateTime>;
    
    [Column('updated_at', [TColumnProp.Required])]
    Fupdated_at: TDateTime;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('atendimento', [TColumnProp.Required], 'id')]
    FAtendimento: Proxy<TAtendimento>;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('servico', [TColumnProp.Required], 'id')]
    FServico: Proxy<TServico>;
    function GetAtendimento: TAtendimento;
    procedure SetAtendimento(const Value: TAtendimento);
    function GetServico: TServico;
    procedure SetServico(const Value: TServico);
  public
    property id: Integer read Fid write Fid;
    property created_at: Nullable<TDateTime> read Fcreated_at write Fcreated_at;
    property updated_at: TDateTime read Fupdated_at write Fupdated_at;
    property Atendimento: TAtendimento read GetAtendimento write SetAtendimento;
    property Servico: TServico read GetServico write SetServico;
  end;
  
implementation

{ TAtendimentoServico }

function TAtendimentoServico.GetAtendimento: TAtendimento;
begin
  result := FAtendimento.Value;
end;

procedure TAtendimentoServico.SetAtendimento(const Value: TAtendimento);
begin
  FAtendimento.Value := Value;
end;

function TAtendimentoServico.GetServico: TServico;
begin
  result := FServico.Value;
end;

procedure TAtendimentoServico.SetServico(const Value: TServico);
begin
  FServico.Value := Value;
end;

initialization
  RegisterEntity(TAtendimentoServico);

end.
