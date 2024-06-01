unit CadAtendimentos;

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
  dxLayoutControlAdapters, dxLayoutContainer, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, Vcl.StdCtrls, cxButtons, cxLabel,
  dxLayoutControl, cxButtonEdit, ConsultaServicos, ConsultaPessoas,
  PessoaModel, ServicoModel, PessoasController, ServicosController,
  cxCurrencyEdit, AtendimentosController, ConsultaAtendimentos, AtendimentoModel,
  DateUtils, AtendimentoServicoModel, Generics.Collections;

type
  TFrmAtendimentos = class(TCadM)
    gridProdutos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem11: TdxLayoutItem;
    edtPacienteNome: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    ServicosMemTable: TFDMemTable;
    DSServicos: TDataSource;
    btnAdicionarServico: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    btnRemoverServico: TcxButton;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    edtPacienteCodigo: TcxDBButtonEdit;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    edtFarmaceuticoCodigo: TcxDBButtonEdit;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    FarmaceuticoMemTable: TFDMemTable;
    PacienteMemTable: TFDMemTable;
    edtFarmaceuticoNome: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    DSFarmaceutico: TDataSource;
    DSPaciente: TDataSource;
    edtObservacao: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem20: TdxLayoutItem;
    gridProdutosColumn1: TcxGridDBColumn;
    gridProdutosColumn2: TcxGridDBColumn;
    gridProdutosColumn3: TcxGridDBColumn;
    gridProdutosColumn4: TcxGridDBColumn;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    gridProdutosColumn5: TcxGridDBColumn;
    procedure edtFarmaceuticoCodigoPropertiesEditValueChanged(Sender: TObject);
    procedure edtFarmaceuticoCodigoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure edtPacienteCodigoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtPacienteCodigoPropertiesEditValueChanged(Sender: TObject);
    procedure btnAdicionarServicoClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnRemoverServicoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    FPessoasController : TPessoasController;
    FServicosController : TServicosController;
    FAtendimentosController : TAtendimentosController;
    procedure AtendimentoObjetoParaMemTable(atendimento: TAtendimento);
    procedure AtendimentoServicoObjetoParaMemTable(atendimentoServicos: TList<TAtendimentoServico>) ;
    function AtendimentoMemTableParaObjeto: TAtendimento;
    function AtendimentoServicoMemTableParaObjeto: TList<TAtendimentoServico>;
    procedure updateGUI;
    procedure clearMemTable;
    procedure CalculaTotalItems;
  public
    { Public declarations }
  end;

var
  FrmAtendimentos: TFrmAtendimentos;

implementation

{$R *.dfm}

procedure TFrmAtendimentos.btnAdicionarServicoClick(Sender: TObject);
var
  codigo: Integer;
  servico: TServico;
begin
  inherited;
  insereOuEdita;
  try
    codigo := TConServicos.Consultar(self);
    if (codigo <> 0) then
    begin
      servico := FServicosController.Find(codigo);
      ServicosMemTable.Open;
      ServicosMemTable.Insert;
      ServicosMemTable.FieldByName('servico').AsInteger := servico.id;
      ServicosMemTable.FieldByName('servicoDescricao').AsString := servico.descricao;
      ServicosMemTable.FieldByName('servicoTipo').AsString      := servico.Tipo.descricao;
      ServicosMemTable.FieldByName('valor').AsFloat := servico.valor;
      ServicosMemTable.FieldByName('created_at').AsDateTime := TDateTime.Now;
      ServicosMemTable.FieldByName('updated_at').AsDateTime := TDateTime.Now;
      ServicosMemTable.Post;
    end;
  finally
    CalculaTotalItems;
    updateGUI;
  end;
end;

procedure TFrmAtendimentos.CalculaTotalItems;
var
  total: Double;
begin
  total := 0;
  ServicosMemTable.First;
  while not ServicosMemTable.eof do
  begin
    total := total + ServicosMemTable.FieldByName('valor').AsFloat;
    ServicosMemTable.Next;
  end;
  CadastroMemTable.FieldByName('valor_total').AsFloat := total;
end;

procedure TFrmAtendimentos.btnConfirmarClick(Sender: TObject);
var
  codigo: Integer;
  atendimento: TAtendimento;
  atendimentoServicos: TList<TAtendimentoServico>;
begin
  CalculaTotalItems;
  inherited;
  atendimento := AtendimentoMemTableParaObjeto;
  atendimentoServicos := AtendimentoServicoMemTableParaObjeto;

  try
    if CadastroMemTable.FieldByName('id').AsString = '' then
      atendimento := FAtendimentosController.CreateNew(atendimento, atendimentoServicos)
    else
      atendimento := FAtendimentosController.Edit(atendimento, atendimentoServicos);
    AtendimentoObjetoParaMemTable(atendimento);
  except
    On E:Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TFrmAtendimentos.btnConsultarClick(Sender: TObject);
var
  codigo: Integer;
  atendimento: TAtendimento;
  atendimentoServicos: TList<TAtendimentoServico>;
begin
  try
    codigo := TConAtendimentos.Consultar(self);
    if (codigo <> 0) then
    begin
      clearMemTable;
      atendimento := FAtendimentosController.Find(codigo);
      atendimentoServicos := FAtendimentosController.BuscaServicos(codigo);
      AtendimentoObjetoParaMemTable(atendimento);
      AtendimentoServicoObjetoParaMemTable(atendimentoServicos);
    end;
  finally
    updateGUI;
  end;
end;

procedure TFrmAtendimentos.btnExcluirClick(Sender: TObject);
var
  atendimento: TAtendimento;
begin
  inherited;
  atendimento := AtendimentoMemTableParaObjeto;
  FAtendimentosController.Delete(atendimento);
  CadastroMemTable.Close;
  clearMemTable;
end;

procedure TFrmAtendimentos.btnNovoClick(Sender: TObject);
begin
  inherited;
  clearMemTable;
end;

procedure TFrmAtendimentos.btnRemoverServicoClick(Sender: TObject);
begin
  inherited;
  insereOuEdita;
  if not ServicosMemTable.eof then
  begin
    ServicosMemTable.Delete;
    CalculaTotalItems;
  end;
end;

procedure TFrmAtendimentos.clearMemTable;
begin
  FarmaceuticoMemTable.Open;
  PacienteMemTable.Open;
  ServicosMemTable.Open;

  FarmaceuticoMemTable.EmptyDataSet;
  PacienteMemTable.EmptyDataSet;
  ServicosMemTable.EmptyDataSet;
end;

procedure TFrmAtendimentos.AtendimentoObjetoParaMemTable(atendimento: TAtendimento);
begin
  CadastroMemTable.Close;
  CadastroMemTable.Open;

  CadastroMemTable.Insert;
  CadastroMemTable.FieldByName('id').AsInteger := atendimento.id;
  CadastroMemTable.FieldByName('farmaceutico').AsInteger := atendimento.responsavel.id;
  CadastroMemTable.FieldByName('paciente').AsInteger := atendimento.Paciente.id;
  CadastroMemTable.FieldByName('valor_total').AsFloat := atendimento.valor_total;
  CadastroMemTable.FieldByName('observacao').AsString := atendimento.observacao;
  CadastroMemTable.FieldByName('created_at').AsDateTime := atendimento.created_at;
  CadastroMemTable.FieldByName('updated_at').AsDateTime := atendimento.updated_at;
  CadastroMemTable.Post;
end;

procedure TFrmAtendimentos.AtendimentoServicoObjetoParaMemTable(atendimentoServicos: TList<TAtendimentoServico>);
var
  atendimentoServico: TAtendimentoServico;
begin
  ServicosMemTable.Close;
  ServicosMemTable.Open;
  for atendimentoServico in atendimentoServicos do
  begin
    ServicosMemTable.Insert;
    ServicosMemTable.FieldByName('id').AsInteger              := atendimentoServico.id;
    ServicosMemTable.FieldByName('atendimento').AsInteger     := atendimentoServico.Atendimento.id;
    ServicosMemTable.FieldByName('servico').AsInteger         := atendimentoServico.Servico.id;
    ServicosMemTable.FieldByName('servicoDescricao').AsString := atendimentoServico.Servico.descricao;
    ServicosMemTable.FieldByName('servicoTipo').AsString      := atendimentoServico.Servico.Tipo.descricao;
    ServicosMemTable.FieldByName('valor').AsFloat             := atendimentoServico.valor;
    ServicosMemTable.FieldByName('created_at').AsDateTime     := atendimentoServico.created_at;
    ServicosMemTable.FieldByName('updated_at').AsDateTime     := atendimentoServico.updated_at;
    ServicosMemTable.Post;
  end;
end;

function TFrmAtendimentos.AtendimentoMemTableParaObjeto: TAtendimento;
var
  atendimento: TAtendimento;
  paciente, responsavel : TPessoa;
begin
  atendimento := TAtendimento.Create;
  atendimento.id := CadastroMemTable.FieldByName('id').AsInteger;
  atendimento.valor_total := CadastroMemTable.FieldByName('valor_total').AsFloat;
  atendimento.observacao := CadastroMemTable.FieldByName('observacao').AsString;
  atendimento.created_at := CadastroMemTable.FieldByName('created_at').AsDateTime;
  atendimento.updated_at := TDateTime.Now;

  paciente := TPessoa.Create;
  paciente.id := CadastroMemTable.FieldByName('paciente').AsInteger;
  atendimento.Paciente := paciente;

  responsavel := TPessoa.Create;
  responsavel.id := CadastroMemTable.FieldByName('farmaceutico').AsInteger;
  atendimento.Responsavel := responsavel;

  result := atendimento;
end;

function TFrmAtendimentos.AtendimentoServicoMemTableParaObjeto: TList<TAtendimentoServico>;
var
  atendimentoServico: TAtendimentoServico;
  paciente, responsavel : TPessoa;
begin
  Result := TList<TAtendimentoServico>.Create;
  ServicosMemTable.First;
  while not ServicosMemTable.eof do
  begin
    Result.Add(TAtendimentoServico.Create);
    with Result.Last do
    begin
      id := ServicosMemTable.FieldByName('id').AsInteger;
      Servico := TServico.Create;
      Servico.id := ServicosMemTable.FieldByName('servico').AsInteger;
      valor :=  ServicosMemTable.FieldByName('valor').AsFloat;
      created_at := ServicosMemTable.FieldByName('created_at').AsDateTime;
      updated_at := TDateTime.Now;
    end;
    ServicosMemTable.Next;
  end;
end;

procedure TFrmAtendimentos.edtFarmaceuticoCodigoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  codigo: Integer;
  pessoa: TPessoa;
begin
  inherited;
  insereOuEdita;
  try
    codigo := TConPessoas.ConsultarFarmaceuticos(self);
    if (codigo <> 0) then
    begin
      edtFarmaceuticoCodigo.EditValue := codigo;
    end;
  finally
    updateGUI;
  end;
end;

procedure TFrmAtendimentos.edtFarmaceuticoCodigoPropertiesEditValueChanged(
  Sender: TObject);
var
  pessoa: TPessoa;
begin
  inherited;
  if VarToStr(TcxDBButtonEdit(Sender).EditValue) = '' then exit;
  try
    pessoa := FPessoasController.Find(TcxDBButtonEdit(Sender).EditValue);
    FarmaceuticoMemTable.Close;
    FarmaceuticoMemTable.Open;
    FarmaceuticoMemTable.Insert;
    FarmaceuticoMemTable.FieldByName('farmaceuticoId').AsInteger := pessoa.id;
    FarmaceuticoMemTable.FieldByName('farmaceuticoNome').AsString := pessoa.nome;
    FarmaceuticoMemTable.Post;

    CadastroMemTable.FieldByName('farmaceutico').AsInteger := pessoa.id;
  except
    On E:Exception do
      Exit;
  end;
end;

procedure TFrmAtendimentos.edtPacienteCodigoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  codigo: Integer;
  pessoa: TPessoa;
begin
  inherited;
  insereOuEdita;
  try
    codigo := TConPessoas.ConsultarPacientes(self);
    if (codigo <> 0) then
    begin
      edtPacienteCodigo.EditValue := codigo;
    end;
  finally
    updateGUI;
  end;
end;

procedure TFrmAtendimentos.edtPacienteCodigoPropertiesEditValueChanged(
  Sender: TObject);
var
  pessoa: TPessoa;
begin
  inherited;
  if VarToStr(TcxDBButtonEdit(Sender).EditValue) = '' then exit;
  try
    pessoa := FPessoasController.Find(TcxDBButtonEdit(Sender).EditValue);
    PacienteMemTable.Close;
    PacienteMemTable.Open;
    PacienteMemTable.Insert;
    PacienteMemTable.FieldByName('pacienteId').AsInteger := pessoa.id;
    PacienteMemTable.FieldByName('pacienteNome').AsString := pessoa.nome;
    PacienteMemTable.Post;

    CadastroMemTable.FieldByName('paciente').AsInteger := pessoa.id;
  except
    On E:Exception do
      Exit;
  end;
end;

procedure TFrmAtendimentos.FormCreate(Sender: TObject);
begin
  inherited;
    FPessoasController := TPessoasController.Create(self);
    FServicosController := TServicosController.Create(self);
    FAtendimentosController := TAtendimentosController.Create(self);
end;

procedure TFrmAtendimentos.updateGUI;
begin
  inherited;
end;

end.
