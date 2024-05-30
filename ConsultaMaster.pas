unit ConsultaMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxLayoutContainer, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutControl, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, XData.Web.Connection, XData.Web.Client, PessoasService,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, PessoaModel, Generics.Collections;

type
  TConsultaM = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    btnOK: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    btnCancelar: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    MemTable: TFDMemTable;
    DSGrid: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    XDataWebConnection1: TXDataWebConnection;
  private
  public
    class function Consultar(parent: TForm): Integer;
  end;

var
  FPessoasService: TPessoasService;
  Consulta: TConsultaM;


implementation

{$R *.dfm}

class function TConsultaM.Consultar(parent: TForm): Integer;
var
  consulta: TConsultaM;
  pessoas: TList<TPessoa>;
  pessoa: TPessoa;
  i: integer;
begin
  try
    consulta := TConsultaM.Create(parent);
    FPessoasService := TPessoasService.Create(parent);
    pessoas := FPessoasService.Index;
    consulta.MemTable.Open;
    for pessoa in pessoas do
    begin
      with consulta do
      begin
        MemTable.Insert;
        MemTable.FieldByName('id').AsInteger := pessoa.id;
        MemTable.FieldByName('descricao').AsString := pessoa.nome;
        MemTable.Post;
      end;
    end;
    if (consulta.ShowModal = mrOk) then
      result := consulta.MemTable.FieldByName('id').AsInteger
    else
      result := 0
  finally
    FPessoasService.Destroy;
    consulta.Free;
  end;

end;

end.
