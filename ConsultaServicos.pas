unit ConsultaServicos;

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
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutControl, ServicosController, ServicoModel,
  ServicoTipoModel, Generics.Collections;

type
  TConServicos = class(TConsM)
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
  private
    procedure PopularMemTable(list: TList<TObject>; memTable: TFDMemTable);
  public
    class function Consultar(parent: TForm): Integer;
  end;

var
  ConServicos: TConServicos;

implementation

{$R *.dfm}

class function TConServicos.Consultar(parent: TForm): Integer;
var
  consulta: TConServicos;
  controller: TServicosController;
  servicos: TList<TServico>;
  servico: TServico;
  i: integer;
begin
  consulta := TConServicos.Create(parent);
  controller := TServicosController.Create(parent);
  try
    servicos := controller.Index;
    consulta.PopularMemTable(TList<TObject>(servicos), consulta.MemTable);

    if (consulta.ShowModal = mrOk) then
      result := consulta.MemTable.FieldByName('id').AsInteger
    else
      result := 0
  finally
    controller.Destroy;
    consulta.Free;
  end;
end;

procedure TConServicos.PopularMemTable(list: TList<TObject>; memTable: TFDMemTable);
var
  servico: TServico;
  servicos: TList<TServico>;
begin
  memTable.Open;
  servicos := TList<TServico>(list);

  for servico in servicos do
  begin
    memTable.Insert;
    memTable.FieldByName('id').AsInteger := servico.id;
    memTable.FieldByName('descricao').AsString := servico.descricao;
    memTable.FieldByName('valor').AsFloat := servico.valor;
    memTable.FieldByName('tipo').AsString := servico.tipo.descricao;
    memTable.FieldByName('created_at').AsDateTime := servico.tipo.created_at;
    memTable.FieldByName('updated_at').AsDateTime := servico.tipo.updated_at;
    memTable.Post;
  end;
end;

end.
