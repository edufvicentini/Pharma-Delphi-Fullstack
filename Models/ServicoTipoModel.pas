unit ServicoTipoModel;

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
  TServicoTipo = class;
  
  [Entity]
  [Table('servicos_tipo')]
  [Id('Fid', TIdGenerator.None)]
  TServicoTipo = class
  private
    [Column('id', [TColumnProp.Required])]
    Fid: Integer;
    
    [Column('descricao', [], 100)]
    Fdescricao: Nullable<string>;
    
    [Column('created_at', [])]
    Fcreated_at: Nullable<TDateTime>;
    
    [Column('updated_at', [TColumnProp.Required])]
    Fupdated_at: TDateTime;
  public
    property id: Integer read Fid write Fid;
    property descricao: Nullable<string> read Fdescricao write Fdescricao;
    property created_at: Nullable<TDateTime> read Fcreated_at write Fcreated_at;
    property updated_at: TDateTime read Fupdated_at write Fupdated_at;
  end;
  
implementation

initialization
  RegisterEntity(TServicoTipo);

end.
