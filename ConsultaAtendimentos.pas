unit ConsultaAtendimentos;

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
  cxGridCustomView, cxGrid, dxLayoutControl, AtendimentosController,
  AtendimentoModel, Generics.Collections;

type
  TConAtendimentos = class(TConsM)
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
  private
    procedure PopularMemTable(list: TList<TObject>; memTable: TFDMemTable);
  public
    class function Consultar(parent: TForm): Integer;
  end;

var
  ConAtendimentos: TConAtendimentos;

implementation

{$R *.dfm}

class function TConAtendimentos.Consultar(parent: TForm): Integer;
var
  consulta: TConAtendimentos;
  controller: TAtendimentosController;
  atendimentos: TList<TAtendimento>;
  atendimento: TAtendimento;
  i: integer;
begin
  consulta := TConAtendimentos.Create(parent);
  controller := TAtendimentosController.Create(parent);
  try
    atendimentos := controller.Index;
    consulta.PopularMemTable(TList<TObject>(atendimentos), consulta.MemTable);

    if (consulta.ShowModal = mrOk) then
      result := consulta.MemTable.FieldByName('id').AsInteger
    else
      result := 0
  finally
    controller.Destroy;
    consulta.Free;
  end;
end;

procedure TConAtendimentos.PopularMemTable(list: TList<TObject>; memTable: TFDMemTable);
var
  atendimento: TAtendimento;
  atendimentos: TList<TAtendimento>;
begin
  memTable.Open;
  atendimentos := TList<TAtendimento>(list);
  for atendimento in atendimentos do
  begin
    memTable.Insert;
    memTable.FieldByName('id').AsInteger := atendimento.id;
    memTable.FieldByName('responsavel').AsString := atendimento.Responsavel.nome;
    memTable.FieldByName('paciente').AsString := atendimento.Paciente.nome;
    memTable.FieldByName('valor_total').AsFloat := atendimento.valor_total;
    memTable.FieldByName('observacao').AsString := atendimento.observacao;
    memTable.FieldByName('created_at').AsDateTime := atendimento.created_at;
    memTable.FieldByName('updated_at').AsDateTime := atendimento.updated_at;
    memTable.Post;
  end;
end;

end.
