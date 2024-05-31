unit CadPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadMestre, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, cxClasses, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, cxButtons, cxLabel, dxLayoutControl,
  PessoasController, PessoasTipoController, PessoaModel, PessoaTipoModel,
  ConsultaPessoas, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  cxDBEdit, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls,
  Generics.Collections, DateUtils;

type
  TFrmPessoas = class(TCadM)
    dxLayoutItem13: TdxLayoutItem;
    edtNome: TcxDBTextEdit;
    liedtCPF: TdxLayoutItem;
    edtCPF: TcxDBTextEdit;
    MemTableLookup: TFDMemTable;
    DSLookup: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    cbxLookupTipoPessoa: TdxLayoutItem;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    FPessoasController : TPessoasController;
    FPessoasTipoController : TPessoasTipoController;
    procedure PessoasObjetoParaMemTable(pessoa: TPessoa);
    function PessoasMemTableParaObjeto: TPessoa;
    procedure CarregaLookup;
    procedure updateGUI;
  public
    { Public declarations }
  end;

var
  FrmPessoas: TFrmPessoas;

implementation

{$R *.dfm}

procedure TFrmPessoas.FormCreate(Sender: TObject);
begin
  inherited;
  FPessoasController := TPessoasController.Create(self);
  FPessoasTipoController := TPessoasTipoController.Create(self);
  CarregaLookup;
end;

procedure TFrmPessoas.CarregaLookup;
var
  pessoaTipoLista: TList<TPessoaTipo>;
  pessoaTipo: TPessoaTipo;
begin
  pessoaTipoLista := FPessoasTipoController.Index;
  MemTableLookup.Open;
  for pessoaTipo in pessoaTipoLista do
  begin
    MemTableLookup.Insert;
    MemTableLookup.FieldByName('id').AsInteger := pessoaTipo.id;
    MemTableLookup.FieldByName('descricao').AsString := pessoaTipo.descricao;
    MemTableLookup.FieldByName('created_at').AsDateTime := pessoaTipo.created_at;
    MemTableLookup.FieldByName('updated_at').AsDateTime := pessoaTipo.updated_at;
    MemTableLookup.Post;
  end;
end;

procedure TFrmPessoas.btnConfirmarClick(Sender: TObject);
var
  pessoa: TPessoa;
  pessoaTipo: TPessoaTipo;
  isEditando: Boolean;
  modified: boolean;
begin
  inherited;
  if (CadastroMemTable.State = TDatasetState.dsEdit) then
    isEditando := True;

  //CadastroMemTable.Post;
  pessoa := PessoasMemTableParaObjeto;
  try
    if isEditando then
      modified := FPessoasController.Edit(pessoa)
    else
      modified := FPessoasController.CreateNew(pessoa);

    ShowMessage('Cadastro Alterado')
  except
    on E:Exception do
    begin
      modified := False;
      ShowMessage(E.Message);
    end;
  end;

end;

procedure TFrmPessoas.btnConsultarClick(Sender: TObject);
var
  codigo: Integer;
  pessoa: TPessoa;
begin
  try
    codigo := TConPessoas.Consultar(self);
    if (codigo <> 0) then
    begin
      pessoa := FPessoasController.Find(codigo);
      PessoasObjetoParaMemTable(pessoa);
    end;
  finally
    updateGUI;
  end;
end;

procedure TFrmPessoas.btnExcluirClick(Sender: TObject);
var
  pessoa: TPessoa;
begin
  inherited;
  pessoa := PessoasMemTableParaObjeto;
  FPessoasController.Delete(pessoa);
  CadastroMemTable.Close;
  ShowMessage('Excluiu');
end;

procedure TFrmPessoas.PessoasObjetoParaMemTable(pessoa: TPessoa);
begin
  CadastroMemTable.Close;
  CadastroMemTable.Open;

  CadastroMemTable.Insert;
  CadastroMemTable.FieldByName('id').AsInteger := pessoa.id;
  CadastroMemTable.FieldByName('nome').AsString := pessoa.nome;
  CadastroMemTable.FieldByName('cpf').AsString := pessoa.cpf;
  CadastroMemTable.FieldByName('tipo').AsInteger := pessoa.Tipo.id;
  CadastroMemTable.FieldByName('created_at').AsDateTime := pessoa.created_at;
  CadastroMemTable.FieldByName('updated_at').AsDateTime := pessoa.updated_at;
  CadastroMemTable.Post;
end;

function TFrmPessoas.PessoasMemTableParaObjeto: TPessoa;
var
  pessoa: TPessoa;
  pessoaTipo: TPessoaTipo;
begin
  pessoa := TPessoa.Create;
  pessoa.id := CadastroMemTable.FieldByName('id').AsInteger;
  pessoa.nome := CadastroMemTable.FieldByName('nome').AsString;
  pessoa.cpf := CadastroMemTable.FieldByName('cpf').AsString;
  pessoa.created_at := CadastroMemTable.FieldByName('created_at').AsDateTime;
  pessoa.updated_at := TDateTime.Now;

  pessoaTipo := TPessoaTipo.Create;
  pessoaTipo.id := MemTableLookup.FieldByName('id').AsInteger;
  pessoaTipo.descricao := MemTableLookup.FieldByName('descricao').AsString;
  pessoaTipo.created_at := MemTableLookup.FieldByName('created_at').AsDateTime;
  pessoaTipo.updated_at := MemTableLookup.FieldByName('updated_at').AsDateTime;

  pessoa.Tipo := pessoaTipo;

  result := pessoa;
end;

procedure TFrmPessoas.updateGUI;
begin
  inherited;
end;

procedure TFrmPessoas.FormDestroy(Sender: TObject);
begin
  inherited;
  FPessoasController.Free;
  FPessoasTipoController.Free;
end;

end.
