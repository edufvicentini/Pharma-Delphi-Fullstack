unit PessoaModel;

interface

uses
  SysUtils, 
  Generics.Collections, 
  Aurelius.Mapping.Attributes, 
  Aurelius.Types.Blob, 
  Aurelius.Types.DynamicProperties, 
  Aurelius.Types.Nullable, 
  Aurelius.Types.Proxy, 
  PessoaTipoModel;

type
  TPessoa = class;
  
  [Entity]
  [Table('pessoas')]
  [Id('Fid', TIdGenerator.IdentityOrSequence)]
  TPessoa = class
  private
    [Column('id', [TColumnProp.Required, TColumnProp.NoInsert, TColumnProp.NoUpdate])]
    Fid: Integer;
    
    [Column('nome', [TColumnProp.Required], 100)]
    Fnome: string;
    
    [Column('cpf', [TColumnProp.Required], 11)]
    Fcpf: string;
    
    [Column('created_at', [TColumnProp.Required])]
    Fcreated_at: TDateTime;
    
    [Column('updated_at', [TColumnProp.Required])]
    Fupdated_at: TDateTime;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('tipo', [TColumnProp.Required], 'id')]
    FTipo: Proxy<TPessoaTipo>;
    function GetTipo: TPessoaTipo;
    procedure SetTipo(const Value: TPessoaTipo);
  public
    property id: Integer read Fid write Fid;
    property nome: string read Fnome write Fnome;
    property cpf: string read Fcpf write Fcpf;
    property created_at: TDateTime read Fcreated_at write Fcreated_at;
    property updated_at: TDateTime read Fupdated_at write Fupdated_at;
    property Tipo: TPessoaTipo read GetTipo write SetTipo;
  end;
  
implementation

{ TPessoa }

function TPessoa.GetTipo: TPessoaTipo;
begin
  result := FTipo.Value;
end;

procedure TPessoa.SetTipo(const Value: TPessoaTipo);
begin
  FTipo.Value := Value;
end;

initialization
  RegisterEntity(TPessoa);

end.
