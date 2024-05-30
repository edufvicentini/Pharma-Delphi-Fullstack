unit Main;

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
  Vcl.StdCtrls, dxCustomTileControl, dxTileControl, CadPessoas;

type
  TPrincipal = class(TForm)
    layoutControlGroup_Root: TdxLayoutGroup;
    layoutControl: TdxLayoutControl;
    dxTileControl1: TdxTileControl;
    dxLayoutItem1: TdxLayoutItem;
    dxTileControl1Group1: TdxTileControlGroup;
    btnPessoas: TdxTileControlItem;
    btnAtendimentos: TdxTileControlItem;
    btnServiços: TdxTileControlItem;
    dxTileControl1Group2: TdxTileControlGroup;
    btnSobre: TdxTileControlItem;
    btnSair: TdxTileControlItem;
    Label1: TLabel;
    dxLayoutItem2: TdxLayoutItem;
    procedure btnSairClick(Sender: TdxTileControlItem);
    procedure btnPessoasClick(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

procedure TPrincipal.btnPessoasClick(Sender: TdxTileControlItem);
var
  cad: TFrmPessoas;
begin
  cad := TFrmPessoas.Create(self);
  cad.Show;
end;

procedure TPrincipal.btnSairClick(Sender: TdxTileControlItem);
begin
  Application.Terminate();
end;

end.
