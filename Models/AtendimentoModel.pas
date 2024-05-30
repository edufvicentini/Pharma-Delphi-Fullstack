unit AtendimentoModel;

interface

uses
  SysUtils, 
  Generics.Collections, 
  Aurelius.Mapping.Attributes, 
  Aurelius.Types.Blob, 
  Aurelius.Types.DynamicProperties, 
  Aurelius.Types.Nullable, 
  Aurelius.Types.Proxy, 
  PessoaModel;

type
  TAtendimento = class;
  
  [Entity]
  [Table('atendimentos')]
  [Id('Fid', TIdGenerator.IdentityOrSequence)]
  TAtendimento = class
  private
    [Column('id', [TColumnProp.Required, TColumnProp.NoInsert, TColumnProp.NoUpdate])]
    Fid: Integer;
    
    [Column('created_at', [TColumnProp.Required])]
    Fcreated_at: TDateTime;
    
    [Column('updated_at', [TColumnProp.Required])]
    Fupdated_at: TDateTime;
    
    [Column('observacao', [], 100)]
    Fobservacao: Nullable<string>;
    
    [Column('valor_total', [TColumnProp.Required], 50)]
    Fvalor_total: Double;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('responsavel', [TColumnProp.Required], 'id')]
    FResponsavel: Proxy<TPessoa>;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('paciente', [TColumnProp.Required], 'id')]
    FPaciente: Proxy<TPessoa>;
    function GetResponsavel: TPessoa;
    procedure SetResponsavel(const Value: TPessoa);
    function GetPaciente: TPessoa;
    procedure SetPaciente(const Value: TPessoa);
  public
    property id: Integer read Fid write Fid;
    property created_at: TDateTime read Fcreated_at write Fcreated_at;
    property updated_at: TDateTime read Fupdated_at write Fupdated_at;
    property observacao: Nullable<string> read Fobservacao write Fobservacao;
    property valor_total: Double read Fvalor_total write Fvalor_total;
    property Responsavel: TPessoa read GetResponsavel write SetResponsavel;
    property Paciente: TPessoa read GetPaciente write SetPaciente;
  end;
  
implementation

{ TAtendimento }

function TAtendimento.GetResponsavel: TPessoa;
begin
  result := FResponsavel.Value;
end;

procedure TAtendimento.SetResponsavel(const Value: TPessoa);
begin
  FResponsavel.Value := Value;
end;

function TAtendimento.GetPaciente: TPessoa;
begin
  result := FPaciente.Value;
end;

procedure TAtendimento.SetPaciente(const Value: TPessoa);
begin
  FPaciente.Value := Value;
end;

initialization
  RegisterEntity(TAtendimento);

end.
