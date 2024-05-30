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
  public
    property id: Integer read Fid write Fid;
    property descricao: Nullable<string> read Fdescricao write Fdescricao;
  end;
  
implementation

initialization
  RegisterEntity(TServicoTipo);

end.
