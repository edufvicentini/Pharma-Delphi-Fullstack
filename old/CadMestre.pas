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
  dxSkinXmas2008Blue, cxClasses, dxLayoutContainer,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, ConsultaMestre,
  PessoaModel, PessoaTipoModel, DateUtils, PessoasService, dxLayoutControl;

type
  TCadM = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    btnConsulta: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    btnNovo: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutItem4: TdxLayoutItem;
    btnExcluir: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    btnVoltar: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    btnCancelar: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadM: TCadM;
  FPessoasService: TPessoasService;

implementation

{$R *.dfm}

procedure TCadM.btnVoltarClick(Sender: TObject);
begin
  self.Close;
end;

end.
