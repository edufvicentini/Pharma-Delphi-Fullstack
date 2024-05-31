unit CadServicos;

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
  dxSkinXmas2008Blue, cxContainer, cxEdit, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxLayoutContainer, cxClasses, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxTextEdit, Vcl.StdCtrls, cxButtons, cxLabel, dxLayoutControl,
  cxCurrencyEdit, Vcl.DBCtrls, ServicoModel, ServicoTipoModel,
  Generics.Collections,ServicosController, ServicosTipoController, DateUtils,
  ConsultaServicos;

type
  TFrmServicos = class(TCadM)
    dxLayoutItem14: TdxLayoutItem;
    DBLookupComboBox1: TDBLookupComboBox;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    MemTableLookup: TFDMemTable;
    DSLookup: TDataSource;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FServicosController : TServicosController;
    FServicosTipoController : TServicosTipoController;
    procedure PessoasObjetoParaMemTable(servico: TServico);
    function PessoasMemTableParaObjeto: TServico;
    procedure CarregaLookup;
    procedure updateGUI;
  end;

var
  FrmServicos: TFrmServicos;

implementation

{$R *.dfm}

procedure TFrmServicos.CarregaLookup;
var
  servicoTipoLista: TList<TServicoTipo>;
  servicoTipo: TServicoTipo;
begin
  servicoTipoLista := FServicosTipoController.Index;
  MemTableLookup.Open;
  for servicoTipo in servicoTipoLista do
  begin
    MemTableLookup.Insert;
    MemTableLookup.FieldByName('id').AsInteger := servicoTipo.id;
    MemTableLookup.FieldByName('descricao').AsString := servicoTipo.descricao;
    MemTableLookup.FieldByName('created_at').AsDateTime := servicoTipo.created_at;
    MemTableLookup.FieldByName('updated_at').AsDateTime := servicoTipo.updated_at;
    MemTableLookup.Post;
  end;
end;


procedure TFrmServicos.btnConfirmarClick(Sender: TObject);
var
  servico: TServico;
  servicoTipo: TServicoTipo;
  isEditando: Boolean;
  modified: boolean;
begin
  inherited;
  if (CadastroMemTable.State = TDatasetState.dsEdit) then
    isEditando := True;

  //CadastroMemTable.Post;
  servico := PessoasMemTableParaObjeto;
  try
    if isEditando then
      modified := FServicosController.Edit(servico)
    else
      modified := FServicosController.CreateNew(servico);

    ShowMessage('Cadastro Alterado')
  except
    on E:Exception do
    begin
      modified := False;
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TFrmServicos.btnConsultarClick(Sender: TObject);
var
  codigo: Integer;
  servico: TServico;
begin
  try
    codigo := TConServicos.Consultar(self);
    if (codigo <> 0) then
    begin
      servico := FServicosController.Find(codigo);
      PessoasObjetoParaMemTable(servico);
    end;
  finally
    updateGUI;
  end;
end;


procedure TFrmServicos.btnExcluirClick(Sender: TObject);
var
  servico: TServico;
begin
  inherited;
  servico := PessoasMemTableParaObjeto;
  FServicosController.Delete(servico);
  CadastroMemTable.Close;
  ShowMessage('Excluiu');
end;

procedure TFrmServicos.PessoasObjetoParaMemTable(servico: TServico);
begin
  CadastroMemTable.Close;
  CadastroMemTable.Open;

  CadastroMemTable.Insert;
  CadastroMemTable.FieldByName('id').AsInteger := servico.id;
  CadastroMemTable.FieldByName('descricao').AsString := servico.descricao;
  CadastroMemTable.FieldByName('valor').AsFloat := servico.valor;
  CadastroMemTable.FieldByName('tipo').AsInteger := servico.Tipo.id;
  CadastroMemTable.FieldByName('created_at').AsDateTime := servico.created_at;
  CadastroMemTable.FieldByName('updated_at').AsDateTime := servico.updated_at;
  CadastroMemTable.Post;
end;

function TFrmServicos.PessoasMemTableParaObjeto: TServico;
var
  servico: TServico;
  servicoTipo: TServicoTipo;
begin
  servico := TServico.Create;
  servico.id := CadastroMemTable.FieldByName('id').AsInteger;
  servico.descricao := CadastroMemTable.FieldByName('descricao').AsString;
  servico.valor := CadastroMemTable.FieldByName('valor').AsFloat;
  servico.created_at := CadastroMemTable.FieldByName('created_at').AsDateTime;
  servico.updated_at := TDateTime.Now;

  servicoTipo := TServicoTipo.Create;
  servicoTipo.id := MemTableLookup.FieldByName('id').AsInteger;
  servicoTipo.descricao := MemTableLookup.FieldByName('descricao').AsString;
  servicoTipo.created_at := MemTableLookup.FieldByName('created_at').AsDateTime;
  servicoTipo.updated_at := MemTableLookup.FieldByName('updated_at').AsDateTime;

  servico.Tipo := servicoTipo;

  result := servico;
end;

procedure TFrmServicos.updateGUI;
begin
  inherited;
end;

procedure TFrmServicos.FormCreate(Sender: TObject);
begin
  inherited;
  FServicosController := TServicosController.Create(self);
  FServicosTipoController := TServicosTipoController.Create(self);
  CarregaLookup;
end;


procedure TFrmServicos.FormDestroy(Sender: TObject);
begin
  inherited;
  FServicosController.Free;
  FServicosTipoController.Free;
end;

end.
