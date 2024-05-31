unit CadMestre;

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
  dxSkinXmas2008Blue, cxClasses, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLabel, cxTextEdit,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxDBEdit, DateUtils;

type
  TCadM = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    btnNovo: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    btnConsultar: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    btnEditar: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    btnExcluir: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    btnVoltar: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    btnConfirmar: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    btnCancelar: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    CadastroMemTable: TFDMemTable;
    DSCadastro: TDataSource;
    edtCodigo: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dtCriado: TcxDBDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    dtModificado: TcxDBDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    procedure btnVoltarClick(Sender: TObject);
    procedure CadastroMemTableAfterOpen(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure CadastroMemTableAfterEdit(DataSet: TDataSet);
    procedure CadastroMemTableAfterClose(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
    procedure CadastroMemTableAfterCancel(DataSet: TDataSet);
    procedure CadastroMemTableAfterPost(DataSet: TDataSet);
    procedure CadastroMemTableAfterInsert(DataSet: TDataSet);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    procedure updateGUI;
  public
    { Public declarations }
  end;

var
  CadM: TCadM;

implementation

{$R *.dfm}

procedure TCadM.btnCancelarClick(Sender: TObject);
begin
  CadastroMemTable.Cancel;
end;

procedure TCadM.btnConfirmarClick(Sender: TObject);
begin
  if CadastroMemTable.State in [dsEdit, dsInsert] then
    CadastroMemTable.Post;
end;

procedure TCadM.btnEditarClick(Sender: TObject);
begin
  CadastroMemTable.Edit;
end;

procedure TCadM.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Deseja mesmo Excluir?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
    abort;
end;

procedure TCadM.btnNovoClick(Sender: TObject);
begin
  CadastroMemTable.Close;
  CadastroMemTable.Open;
  CadastroMemTable.Insert;
  CadastroMemTable.FieldByName('created_at').AsDateTime := TDateTime.Now;
end;

procedure TCadM.btnVoltarClick(Sender: TObject);
begin
  self.Close;
end;

procedure TCadM.CadastroMemTableAfterCancel(DataSet: TDataSet);
begin
  updateGUI;
end;

procedure TCadM.CadastroMemTableAfterClose(DataSet: TDataSet);
begin
  updateGUI;
end;

procedure TCadM.CadastroMemTableAfterEdit(DataSet: TDataSet);
begin
  updateGUI;
end;

procedure TCadM.CadastroMemTableAfterInsert(DataSet: TDataSet);
begin
  updateGUI;
end;

procedure TCadM.CadastroMemTableAfterOpen(DataSet: TDataSet);
begin
  updateGUI;
end;

procedure TCadM.CadastroMemTableAfterPost(DataSet: TDataSet);
begin
  updateGUI;
end;

procedure TCadM.updateGUI;
begin
  btnEditar.Enabled := CadastroMemTable.Active and not (CadastroMemTable.State in [dsEdit, dsInsert]);
  btnExcluir.Enabled := CadastroMemTable.Active and not (CadastroMemTable.State in [dsEdit, dsInsert]);
  btnConfirmar.Enabled := CadastroMemTable.State in [dsEdit, dsInsert];
  btnCancelar.Enabled := CadastroMemTable.State in [dsEdit, dsInsert];
end;

end.
