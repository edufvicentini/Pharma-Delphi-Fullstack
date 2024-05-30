unit CadPessoas;

interface

uses
  cxDateUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  CadMestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  cxDropDownEdit, cxMaskEdit, cxCalendar, cxTextEdit, cxClasses, Vcl.StdCtrls,
  cxButtons, System.Classes, Vcl.Controls, dxLayoutControl, PessoasController,
  PessoasTipoController, PessoaModel, PessoaTipoModel, ConsultaPessoas;

type
  TFrmPessoas = class(TCadM)
    cxTextEdit1: TcxTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxTextEdit2: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    GrupoCadastro: TdxLayoutAutoCreatedGroup;
    dxLayoutItem10: TdxLayoutItem;
    cxTextEdit3: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    cxDateEdit2: TcxDateEdit;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cxComboBox1: TcxComboBox;
    dxLayoutItem13: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxLookupComboBox1: TcxLookupComboBox;
    dxLayoutItem16: TdxLayoutItem;
    LookupMemTable: TFDMemTable;
    DBLookupComboBox1: TDBLookupComboBox;
    dxLayoutItem15: TdxLayoutItem;
    LookupDatasource: TDataSource;
    procedure btnConsultaClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FPessoasController: TPessoasController;
    FPessoasTipoController: TPessoasTipoController;
  public
    { Public declarations }
  end;

var
  FrmPessoas: TFrmPessoas;

implementation

{$R *.dfm}

procedure TFrmPessoas.btnCadastroClick(Sender: TObject);
//var
//  pessoa: TPessoa;
//  pessoaTipo: TPessoaTipo;
begin
//  pessoa := TPessoa.Create;
//  pessoa.nome := 'Pessoa';
//  pessoa.cpf  := '00000000000';

//  pessoaTipo := TPessoaTipo.Create;
//  pessoaTipo.id := 1;
//  pessoaTipo.descricao := 'Paciente';
//  pessoaTipo.created_at := TDateTime.Now;
//  pessoaTipo.updated_at := TDateTime.Now;

//  pessoa.Tipo := pessoaTipo;
//  pessoa.created_at := TDateTime.Now;
//  pessoa.updated_at := TDateTime.Now;

//  if (FPessoasController.CreateNew(pessoa)) then
//    ShowMessage('Cadastrado')
//  else
//    ShowMessage('Num deu');
end;

procedure TFrmPessoas.btnConsultaClick(Sender: TObject);
var
  codigo: Integer;
  pessoa: TPessoa;
begin
  try
    codigo := TConPessoas.Consultar(self);
    if (codigo <> 0) then
    begin
      pessoa := FPessoasController.Find(codigo);

    end;
  finally
  end;
end;

procedure TFrmPessoas.FormCreate(Sender: TObject);
begin
//  inherited;
  FPessoasController := TPessoasController.Create(self);
  FPessoasTipoController := TPessoasTipoController.Create(self);
end;

end.
