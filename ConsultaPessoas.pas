unit ConsultaPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsultaMestre, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  Vcl.Menus, dxLayoutContainer, dxLayoutControlAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, XData.Web.Connection,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxLayoutControl, PessoaModel,
  Generics.Collections, PessoasController;

type
  TConPessoas = class(TConsM)
    columnNome: TcxGridDBColumn;
    columnTipo: TcxGridDBColumn;
    columnCPF: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
  private
    procedure PopularMemTable(list: TList<TObject>; memTable: TFDMemTable);
  public
    class function Consultar(parent: TForm): Integer;
    class function ConsultarFarmaceuticos(parent: TForm): Integer;
    class function ConsultarPacientes(parent: TForm): Integer;
  end;

var
  ConPessoas: TConPessoas;

implementation

{$R *.dfm}

class function TConPessoas.Consultar(parent: TForm): Integer;
var
  consulta: TConPessoas;
  controller: TPessoasController;
  pessoas: TList<TPessoa>;
  pessoa: TPessoa;
  i: integer;
begin
  consulta := TConPessoas.Create(parent);
  controller := TPessoasController.Create(parent);
  try
    pessoas := controller.Index;
    consulta.PopularMemTable(TList<TObject>(pessoas), consulta.MemTable);

    if (consulta.ShowModal = mrOk) then
      result := consulta.MemTable.FieldByName('id').AsInteger
    else
      result := 0
  finally
    controller.Destroy;
    consulta.Free;
  end;
end;

procedure TConPessoas.PopularMemTable(list: TList<TObject>; memTable: TFDMemTable);
var
  pessoa: TPessoa;
  pessoas: TList<TPessoa>;
begin
  memTable.Open;
  pessoas := TList<TPessoa>(list);

  for pessoa in pessoas do
  begin
    memTable.Insert;
    memTable.FieldByName('id').AsInteger := pessoa.id;
    memTable.FieldByName('nome').AsString := pessoa.nome;
    memTable.FieldByName('cpf').AsString := pessoa.cpf;
    memTable.FieldByName('tipo').AsString := pessoa.tipo.descricao;
    memTable.FieldByName('created_at').AsDateTime := pessoa.tipo.created_at;
    memTable.FieldByName('updated_at').AsDateTime := pessoa.tipo.updated_at;
    memTable.Post;
  end;
end;

class function TConPessoas.ConsultarFarmaceuticos(parent: TForm): Integer;
var
  consulta: TConPessoas;
  controller: TPessoasController;
  pessoas: TList<TPessoa>;
  pessoa: TPessoa;
  i: integer;
begin
  consulta := TConPessoas.Create(parent);
  controller := TPessoasController.Create(parent);
  try
    pessoas := controller.ListAllFarmaceuticos;
    consulta.PopularMemTable(TList<TObject>(pessoas), consulta.MemTable);

    if (consulta.ShowModal = mrOk) then
      result := consulta.MemTable.FieldByName('id').AsInteger
    else
      result := 0
  finally
    controller.Destroy;
    consulta.Free;
  end;
end;

 class function TConPessoas.ConsultarPacientes(parent: TForm): Integer;
var
  consulta: TConPessoas;
  controller: TPessoasController;
  pessoas: TList<TPessoa>;
  pessoa: TPessoa;
  i: integer;
begin
  consulta := TConPessoas.Create(parent);
  controller := TPessoasController.Create(parent);
  try
    pessoas := controller.ListAllPacientes;
    consulta.PopularMemTable(TList<TObject>(pessoas), consulta.MemTable);

    if (consulta.ShowModal = mrOk) then
      result := consulta.MemTable.FieldByName('id').AsInteger
    else
      result := 0
  finally
    controller.Destroy;
    consulta.Free;
  end;
end;


end.
