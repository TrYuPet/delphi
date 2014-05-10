unit uMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, sSpeedButton, StdCtrls, sBitBtn, ExtCtrls, sPanel,
  sBevel, sLabel, sButton, acAlphaHints, sSkinProvider, sSkinManager, ComCtrls,
  sTrackBar, sCheckBox, XPMan;

type
  TMainForm = class(TForm)
    sAlphaHints: TsAlphaHints;
    sSkinManager: TsSkinManager;
    sSkinProvider: TsSkinProvider;
    sPanel: TsPanel;
    btnReport: TsBitBtn;
    btnEdit: TsButton;
    btnViewSprav: TsButton;
    lblCopyright: TsLabelFX;
    lblAbout: TsLabelFX;
    sStickyLabel1: TsStickyLabel;
    sTrackBar1: TsTrackBar;
    sTrackBar2: TsTrackBar;
    sLabel1: TsLabel;
    sStickyLabel2: TsStickyLabel;
    sLabel2: TsLabel;
    chkUseWindowsStyle: TsCheckBox;
    XPManifest1: TXPManifest;
    btnShowDesigner: TsBitBtn;
    procedure btnReportClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lblCopyrightClick(Sender: TObject);
    procedure btnViewSpravClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sTrackBar1Change(Sender: TObject);
    procedure sTrackBar2Change(Sender: TObject);
    procedure sTrackBar1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chkUseWindowsStyleClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnShowDesignerClick(Sender: TObject);
  private
    { Private declarations }
  const ConfigFile: string='Analiz.config';
  procedure LoadConfiguration;
  procedure SaveConfiguration;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation uses uSpravForm, uViewForm, uAbout, uDataModule,
                    IniFiles, frxClass;
//******************************************************************************

{$R *.dfm}

////////////////////////////////////////////////////////////////////////////////

//procedure TMainForm.CreateParams(var Params: TCreateParams);
//begin
//  inherited CreateParams(Params);
//  with params do
//    ExStyle := ExStyle or WS_EX_APPWINDOW;
//end;

procedure TMainForm.LoadConfiguration;
var ini: TIniFile;
    l, t: Integer;
begin
  try
  try
    ini:= TIniFile.Create(WorkFolder+'\'+ConfigFile);
    if ini.SectionExists('Скин') then
      begin
        sSkinManager.SkinName:= ini.ReadString('Скин','Название','Vista (internal)');
        sSkinManager.HueOffset:= ini.ReadInteger('Скин','Тон',0);
        sSkinManager.Saturation:= ini.ReadInteger('Скин','Насыщенность',0);
        chkUseWindowsStyle.Checked:= ini.ReadBool('Скин','Использовать_стиль_Windows',True);
      end;
    if ini.SectionExists(Self.UnitName) then
      begin
        l:= ini.ReadInteger(Self.UnitName,'Left',0);
        t:= ini.ReadInteger(Self.UnitName,'Top',0);
        Self.SetBounds(l, t, Self.Width, Self.Height);
      end;
  finally
    ini.Free;
  end;
  except;
    ini.Free;
  end;
end;

procedure TMainForm.SaveConfiguration;
var ini: TIniFile;
begin
  try
  try
    ini:= TIniFile.Create(WorkFolder+'\'+ConfigFile);
    ini.WriteString('Скин','Название',sSkinManager.SkinName);
    ini.WriteInteger('Скин','Тон',sSkinManager.HueOffset);
    ini.WriteInteger('Скин','Насыщенность',sSkinManager.Saturation);
    ini.WriteBool('Скин','Использовать_стиль_Windows',chkUseWindowsStyle.Checked);
    ini.WriteInteger(Self.UnitName,'Left',Self.Left);
    ini.WriteInteger(Self.UnitName,'Top',Self.Top);
  finally
    ini.Free;
  end;
  except;
    ini.Free;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  LoadConfiguration;
  sTrackBar1.Position:= sSkinManager.Saturation;
  sTrackBar2.Position:= sSkinManager.HueOffset;
  chkUseWindowsStyleClick(nil);
  uDataModule.init;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  SaveConfiguration;
end;

////////////////////////////////////////////////////////////////////////////////

procedure TMainForm.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    // Справочник
    vk_NUMPAD1: btnViewSpravClick(Sender);
    // Журнал аварийных отключений
    vk_NUMPAD2: btnEditClick(Sender);
    // Отчет
    vk_NUMPAD3: btnReportClick(Sender);
    // О программе
    vk_F1: lblCopyrightClick(nil);
    //
    vk_ESCAPE: Screen.ActiveForm.Close;
  end;
end;

////////////////////////////////////////////////////////////////////////////////

procedure TMainForm.lblCopyrightClick(Sender: TObject);
begin
  try
//    Hide;
    About:= TAbout.Create(Owner);
    About.ShowModal
  finally
//    Show;
    About.Free
  end;
end;

procedure TMainForm.btnEditClick(Sender: TObject);
begin
  try
//    Hide;
    ViewForm:= TViewForm.Create(Owner);
    ViewForm.ShowModal
  finally
//    Show;
    ViewForm.Free
  end;
end;

procedure TMainForm.btnReportClick(Sender: TObject);
begin
{  try
    ReportForm:= TReportForm.Create(Self);
    ReportForm.ShowModal
  finally
    ReportForm.Free
  end;}
    // загружаем отчет
  with uDataModule.DataModule1 do
  try
    Report_JUR_MES:= TfrxReport.Create(Self);
    Report_JUR_MES.LoadFromFile(WorkFolder+'\template\all.fr3');
    Report_JUR_MES.ShowReport;
  finally
    Report_JUR_MES.Free
  end;
end;

procedure TMainForm.btnShowDesignerClick(Sender: TObject);
begin
  with uDataModule.DataModule1 do
  try
    Report_JUR_MES:= TfrxReport.Create(Self);
    Report_JUR_MES.LoadFromFile(WorkFolder+'\template\all.fr3');
    Report_JUR_MES.DesignReport;
  finally
    Report_JUR_MES.Free
  end;
end;

procedure TMainForm.btnViewSpravClick(Sender: TObject);
begin
  try
    SpravForm:= TSpravForm.Create(Self);
    SpravForm.ShowModal
  finally
    SpravForm.Free
  end;
end;

////////////////////////////////////////////////////////////////////////////////

procedure TMainForm.chkUseWindowsStyleClick(Sender: TObject);
begin
  sSkinManager.Active:= not chkUseWindowsStyle.Checked
end;

procedure TMainForm.sTrackBar1Change(Sender: TObject);
var
  b : boolean;
begin
  if (sSkinManager.Saturation <> sTrackBar1.Position) then
  begin
    b := sSkinManager.AnimEffects.SkinChanging.Active;
    sLabel1.Caption := IntToStr(sTrackBar1.Position);
    sSkinManager.AnimEffects.SkinChanging.Active := False;
    sSkinManager.Saturation := sTrackBar1.Position;
    sSkinManager.AnimEffects.SkinChanging.Active := b;
  end;
end;

procedure TMainForm.sTrackBar1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (sSkinManager.Saturation <> sTrackBar1.Position) then
    sSkinManager.Saturation := sTrackBar1.Position;
end;

procedure TMainForm.sTrackBar2Change(Sender: TObject);
var
  b : boolean;
begin
  if (sSkinManager.Saturation <> sTrackBar2.Position) then
  begin
    b := sSkinManager.AnimEffects.SkinChanging.Active;
    sLabel2.Caption := IntToStr(sTrackBar2.Position);
    sSkinManager.AnimEffects.SkinChanging.Active := False;
    sSkinManager.HueOffset := sTrackBar2.Position;
    sSkinManager.AnimEffects.SkinChanging.Active := b;
  end;
end;

end.
