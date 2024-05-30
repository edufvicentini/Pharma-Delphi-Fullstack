unit ServicoModel;

interface

uses
  SysUtils, 
  Generics.Collections, 
  Aurelius.Mapping.Attributes, 
  Aurelius.Types.Blob, 
  Aurelius.Types.DynamicProperties, 
  Aurelius.Types.Nullable, 
  Aurelius.Types.Proxy, 
  ServicoTipoModel;

type
  TServico = class;
  
  [Entity]
  [Table('servicos')]
  [Id('Fid', TIdGenerator.IdentityOrSequence)]
  TServico = class
  private
    [Column('id', [TColumnProp.Required, TColumnProp.NoInsert, TColumnProp.NoUpdate])]
    Fid: Integer;
    
    [Column('descricao', [TColumnProp.Required], 100)]
    Fdescricao: string;
    
    [Column('valor', [TColumnProp.Required], 50)]
    Fvalor: Double;
    
    [Column('created_at', [TColumnProp.Required])]
    Fcreated_at: TDateTime;
    
    [Column('updated_at', [TColumnProp.Required])]
    Fupdated_at: TDateTime;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('tipo', [TColumnProp.Required], 'id')]
    FTipo: Proxy<TServicoTipo>;
    function GetTipo: TServicoTipo;
    procedure SetTipo(const Value: TServicoTipo);
  public
    property id: Integer read Fid write Fid;
    property descricao: string read Fdescricao write Fdescricao;
    property valor: Double read Fvalor write Fvalor;
    property created_at: TDateTime read Fcreated_at write Fcreated_at;
    property updated_at: TDateTime read Fupdated_at write Fupdated_at;
    property Tipo: TServicoTipo read GetTipo write SetTipo;
  end;
  
implementation

{ TServico }

function TServico.GetTipo: TServicoTipo;
begin
  result := FTipo.Value;
end;

procedure TServico.SetTipo(const Value: TServicoTipo);
begin
  FTipo.Value := Value;
end;

initialization
  RegisterEntity(TServico);

end.
