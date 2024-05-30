unit PessoaTipoModel;

interface

uses
  SysUtils, 
  Generics.Collections, 
  Aurelius.Mapping.Attributes, 
  Aurelius.Types.Blob, 
  Aurelius.Types.DynamicProperties, 
  Aurelius.Types.Nullable, 
  Aurelius.Types.Proxy;

type
  TPessoaTipo = class;
  
  [Entity]
  [Table('pessoas_tipo')]
  [Id('Fid', TIdGenerator.None)]
  TPessoaTipo = class
  private
    [Column('id', [TColumnProp.Required])]
    Fid: Integer;
    
    [Column('descricao', [TColumnProp.Required], 100)]
    Fdescricao: string;
    
    [Column('created_at', [TColumnProp.Required])]
    Fcreated_at: TDateTime;
    
    [Column('updated_at', [TColumnProp.Required])]
    Fupdated_at: TDateTime;
  public
    property id: Integer read Fid write Fid;
    property descricao: string read Fdescricao write Fdescricao;
    property created_at: TDateTime read Fcreated_at write Fcreated_at;
    property updated_at: TDateTime read Fupdated_at write Fupdated_at;
  end;
  
implementation

initialization
  RegisterEntity(TPessoaTipo);

end.
