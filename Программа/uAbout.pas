unit uAbout;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, ExtCtrls, StdCtrls, Buttons, Messages, jpeg, ShellAPI, uCredits,
  ImgList, acAlphaImageList, ComCtrls, sPageControl, sPanel, sSkinProvider,
  sLabel;

type
  TAbout = class(TForm)
    btnOk: TSpeedButton;
    Panel: TPanel;
    Image: TImage;
    Bevel: TBevel;
    urlMailTo: TLabel;
    Image2: TImage;
    lblLicense: TLabel;
    lblAutor: TLabel;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sAlphaImageList1: TsAlphaImageList;
    Timer1: TTimer;
    DrawCanvas: TImage;
    sSkinProvider: TsSkinProvider;
    lblProgramName: TsLabelFX;
    lblCopyright: TsLabelFX;
    procedure FormCreate(Sender: TObject);
    procedure urlMailToClick(Sender: TObject);
    procedure PanelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnOkClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure sPageControl1Change(Sender: TObject);

  private
    { Private declarations }
    CR: TclCreditPanel;
  public
    { Public declarations }
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

  BRGB = record
   B:byte;
   G:byte;
   R:byte;
  end;

 TRgb=array[0..1000] of BRGB;
 PRGB=array[0..1000] of ^TRgb;

var
  About: TAbout;

implementation

{$R *.dfm}

var
 bit,bitp: TBitmap;
 b,b1: PRGB;

procedure BitMapToPointer(var PointerBitMap:PRgb; Bitmap:TBitMAp);
var
 i:integer;
 H:integer;
begin
 h:=bitmap.height-1;
 for i:=0 to h do
    PointerBitMap[i]:=Bitmap.ScanLine[i];
end;

procedure TAbout.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TAbout.CreateParams(var Params: TCreateParams);
const
	CS_DROPSHADOW = $00020000;
begin
	inherited;
	Params.WindowClass.Style := Params.WindowClass.Style or CS_DROPSHADOW;
end;

procedure TAbout.FormCreate(Sender: TObject);
var
 i,j:integer;
begin
  lblProgramName.Caption:= 'Учет аварийных отключений'+#13#10+'версия 1.0';
  lblCopyright.Caption:= 'Группа ПО-41 ОГАЭК';
  lblAutor.Caption:= '© YURIK, 2011';
  CR:= uCredits.TclCreditPanel.Create(sTabSheet1);
  CR.Parent:= sTabSheet1;
  CR.Left:=225; CR.Top:=50; CR.Height:=340; CR.Width:=330;
  CR.BackgroundColor:= $DCDCDC;
  CR.ForegroundColor:= clWhite;
  CR.ShadowColor:= clGray;

  CR.Credits.Add('__________________________________');
  CR.Credits.Add('');
  CR.Credits.Add('Эта программа позволяет выполнить: ');
  CR.Credits.Add('1. Добавлять, изменять, удалять ');
  CR.Credits.Add('названия РЭС, подстанций и линий;');
  CR.Credits.Add('2. Отображать структуру РЭС,');
  CR.Credits.Add('подстанций и линий;');
  CR.Credits.Add('3. Вести и отображать отчет по');
  CR.Credits.Add('текущим аварийным отключениям;');
  CR.Credits.Add('4. Выдавать отчет по аварийным');
  CR.Credits.Add('отключениям за указанный месяц');
  CR.Credits.Add('на печать.');
  CR.Credits.Add('');
  CR.Credits.Add('__________________________________');
  CR.Credits.Add('');
  CR.Credits.Add('Разработана студентом группы ПО-41');
  CR.Credits.Add('4 курса специальности "Программное');
  CR.Credits.Add('обеспечение информационных');
  CR.Credits.Add('технологий"');
  CR.Credits.Add('Трус Юрием Петровичем');
  CR.Credits.Add('');
  CR.Credits.Add('__________________________________');
  CR.Credits.Add('');
  CR.Credits.Append('© YURIK, 2011');
  CR.Credits.Add('');
  CR.Credits.Add('__________________________________');
  CR.Credits.Add('');  CR.Credits.Add('');
  CR.TimerInterval:=80;
  CR.Style:= psScrollUp;
  CR.DrawPanel(TRUE);
  CR.Hint:= 'Неплохо, как считаете?'; CR.ShowHint:= True;

  bitp:=tbitmap.Create;
  bitp.LoadFromFile(ExtractFilePath(Application.ExeName)+'images\background.bmp');

  bit:=tbitmap.Create;
  bit.Width:=561;
  bit.Height:=401;
  bit.PixelFormat:=pf24bit;
  bitmaptopointer(b,bit);
  bitmaptopointer(b1,bitp);

  for i:=1 to 560 do
    for j:=1 to 400 do
      begin
        b[j,i].R:= 50;
        b[j,i].G:= 150;    // цвет текста
        b[j,i].B:= 230;
      end;

end;

procedure TAbout.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
 i,j:integer;
begin
 if (x>560) or (x<0) then exit;
 bit.canvas.Pen.Color:=0;
 for i:=-20 to 20 do
    for j:=-20 to 20 do
        begin
        if (sqrt(j*j+i*i)<20) and (sqrt(j*j+i*i)>0) and (x+i<560) and (y+j<400)
          and (x+i>0) and (y+j>0) then
        if (b1[y+j,x+i].R<>255) then
        bit.Canvas.Pixels[x+i,y+j]:=random(255);
        end;
end;

procedure TAbout.PanelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
	SC_DRAGMOVE = $F012;
begin
	ReleaseCapture;
	About.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
end;

procedure TAbout.sPageControl1Change(Sender: TObject);
begin
  case sPageControl1.ActivePageIndex of
    0: Timer1.Enabled:= False;
    1: Timer1.Enabled:= True;
  end;
end;

procedure TAbout.Timer1Timer(Sender: TObject);
var
 i,j:integer;
 r:integer;
begin
 for i:=2 to 560 do
    begin
    r:= 0;
    if i mod 4=0 then r:=-50+random(245); // пламя
    if r>255 then r:=255;
    if r<0 then r:=0;
    b[400,i].r:=r;
    end;
 for i:=1 to 560 do
    for j:=399 downto 1 do
        begin
         if b1[j,i].R=255 then continue;
         r:=round((b[j+1,i-1].r+b[j+1,i+1].r+b[j,i].R+b[j+1,i].R  +(-b1[j,i].r+random(b1[j,i].r)*2))*0.2533) ;
         r:=r-(-3+random(11));
         if (i=1) or (i=560) then r:=0;
         if r>255 then r:=255;
         if r<0 then r:=0 ;
         b[j,i].r:=(r);
         b[j,i].g:=1*(r); // цвет огня
         b[j,i].b:=1*r;
        end;
  DrawCanvas.Canvas.Draw(-1,-1,bit);
end;

procedure TAbout.urlMailToClick(Sender: TObject);
begin
  // Послать E-mail
 ShellExecute(Handle, nil, 'mailto:y.u.r.i.k@mail.ru&'+
'subject=Программа%20для%20учета%20аварийных%20отключений',nil,nil,SW_SHOW);
end;

end.
