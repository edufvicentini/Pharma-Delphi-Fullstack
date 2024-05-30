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
  cxDBEdit, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmPessoas = class(TCadM)
    dxLayoutItem13: TdxLayoutItem;
    edtNome: TcxDBTextEdit;
    liedtCPF: TdxLayoutItem;
    edtCPF: TcxDBTextEdit;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    FPessoasController : TPessoasController;
    FPessoasTipoController : TPessoasTipoController;
    procedure AlimentaCadastro(pessoa: TPessoa);
  public
    { Public declarations }
  end;

var
  FrmPessoas: TFrmPessoas;

implementation

{$R *.dfm}

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
      AlimentaCadastro(pessoa);
    end;
  finally
  end;
end;

procedure TFrmPessoas.btnNovoClick(Sender: TObject);
begin
  inherited;
  CadastroMemTable.Close;
  CadastroMemTable.Open;
  CadastroMemTable.Insert;
end;

procedure TFrmPessoas.AlimentaCadastro(pessoa: TPessoa);
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

procedure TFrmPessoas.FormCreate(Sender: TObject);
begin
  inherited;
  FPessoasController := TPessoasController.Create(self);
  FPessoasTipoController := TPessoasTipoController.Create(self);
end;

procedure TFrmPessoas.FormDestroy(Sender: TObject);
begin
  inherited;
  FPessoasController.Free;
  FPessoasTipoController.Free;
end;

end.
