unit uDataModule;

interface

uses
  Windows, Forms, SysUtils, Classes, DB, Messages, ImgList,
  Controls, acAlphaImageList, Halcn6db, frxExportHTML, frxExportRTF, frxClass,
  frxDBSet, frxDesgn, frxRich, frxExportPDF, frxExportXLS, frxExportXML,
  frxDCtrl;

type
  TDataModule1 = class(TDataModule)
    DS_PS: TDataSource;
    DS_LIN: TDataSource;
    DS_RES: TDataSource;
    DS_JUR: TDataSource;
    ImageList32: TsAlphaImageList;
    DBF_LIN: THalcyonDataSet;
    DBF_PS: THalcyonDataSet;
    DBF_RES: THalcyonDataSet;
    DBF_JUR: THalcyonDataSet;
    DBF_TABLE: THalcyonDataSet;
    DBF_JURMES: TSmallintField;
    DBF_JURK_PS: TSmallintField;
    DBF_JURK_LIN: TStringField;
    DBF_JURDATA_OTKL: TDateField;
    DBF_JURTIME_OLH: TSmallintField;
    DBF_JURTIME_OLM: TSmallintField;
    DBF_JURTIME_OTH: TSmallintField;
    DBF_JURTIME_OTM: TSmallintField;
    DBF_JURTIME_VLH: TSmallintField;
    DBF_JURTIME_VLM: TSmallintField;
    DBF_JURTIME_VTH: TSmallintField;
    DBF_JURTIME_VTM: TSmallintField;
    DBF_JURPROD_OLH: TSmallintField;
    DBF_JURPROD_OLM: TSmallintField;
    DBF_JURPROD_OTH: TSmallintField;
    DBF_JURPROD_OTM: TSmallintField;
    DBF_JURPRICHINA: TStringField;
    DBF_JURKOD: TSmallintField;
    DBF_LINK_PS: TSmallintField;
    DBF_LINK_LIN: TStringField;
    DBF_LINDATA_VVOD: TDateField;
    DBF_LINDATA_REM: TDateField;
    DBF_PSK_CEH: TSmallintField;
    DBF_PSK_PS: TSmallintField;
    DBF_PSNAME_PS: TStringField;
    DBF_RESK_RES: TSmallintField;
    DBF_RESNAME_RES: TStringField;
    DBF_PSNAME_CEH: TStringField;
    DBF_LINNAME_PS: TStringField;
    DBF_JURTIME_OL: TStringField;
    DBF_JURTIME_OT: TStringField;
    DBF_JURTIME_VL: TStringField;
    DBF_JURTIME_VT: TStringField;
    DBF_JURPROD_OL: TStringField;
    DBF_JURPROD_OT: TStringField;
    DBF_JURMESJAC: TStringField;
    DBF_JURNAME_PS: TStringField;
    DBF_JURK_RES: TIntegerField;
    frxXMLExport1: TfrxXMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxRichObject1: TfrxRichObject;
    Report_JUR_MES: TfrxReport;
    frxDesigner1: TfrxDesigner;
    DS_JUR_MES: TfrxDBDataset;
    DS_RES_MES: TfrxDBDataset;
    frxRTFExport1: TfrxRTFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxDialogControls1: TfrxDialogControls;
    DBF_JUROTLKBALANS: TStringField;
    DBF_JURPOTR_NP: TSmallintField;
    DBF_JURPOTR_TP: TSmallintField;
    DBF_JURPOTR_FERM: TSmallintField;
    DBF_JURPOTR_KES: TSmallintField;
    DBF_JURPOTR_ABM: TSmallintField;
    DBF_JURPOTR_NEDK: TIntegerField;
    DBF_JUROSN_POTR: TStringField;
    DBF_JURPOTR_1KAT: TIntegerField;
    DBF_JURPOTR_ABP: TSmallintField;
    DBF_JURPOTR_2KAT: TIntegerField;
    DBF_JURZACH_SHEMA: TStringField;
    DBF_JURAVT_1POLE: TStringField;
    DBF_JURAVT_2POLE: TStringField;
    DBF_JURAVT_POGODA: TStringField;
    DBF_JURPOVRZ_ELMT: TStringField;
    DBF_JURPOVRZ_KOL: TSmallintField;
    procedure DBF_JURCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure init;
  procedure CloseTables;
  procedure OpenTables;

var
  DataModule1: TDataModule1;
  WorkFolder: string;

implementation

{$R *.dfm}

procedure CloseTables;
begin
  with DataModule1 do
  begin
    try
    DBF_LIN.Active:= False;
    DS_LIN.DataSet:= nil;
    DBF_PS.Active:= False;
    DS_PS.DataSet:= nil;
    DBF_RES.Active:= False;
    DS_RES.DataSet:= nil;
    DBF_JUR.Active:= False;
    DS_JUR.DataSet:= nil;
    except
      on E: Exception do
        MessageBox(Screen.ActiveForm.Handle,
        PChar('ОШИБКА!'#10'Не могу закрыть базу данных:'#10'Описание:'#10+E.Message),
        PChar(Screen.ActiveForm.Caption),
        MB_ICONEXCLAMATION)
    end;
  end;
end;

procedure OpenTables;
begin
  with DataModule1 do
    try
    //
    DBF_JUR.Active:= False;
    DBF_LIN.Active:= False;
    DBF_PS.Active:= False;
    DBF_RES.Active:= False;

    DBF_TABLE.DatabaseName:= WorkFolder+'\Base';

    DBF_LIN.DatabaseName:= WorkFolder+'\Base';
    DBF_LIN.TableName:= 'LIN.DBF';
    DS_LIN.DataSet:= DBF_LIN;
    //
    DBF_PS.DatabaseName:= WorkFolder+'\Base';
    DBF_PS.TableName:= 'PS.DBF';
    DS_PS.DataSet:= DBF_PS;
    //
    DBF_RES.DatabaseName:= WorkFolder+'\Base';
    DBF_RES.TableName:= 'RES.DBF';
    DS_RES.DataSet:= DBF_RES;
    //
    DBF_JUR.DatabaseName:= WorkFolder+'\Base';
    DBF_JUR.TableName:= 'JUR.DBF';
    DS_JUR.DataSet:= DBF_JUR;
    //
    DBF_LIN.Active:= True;
    DBF_PS.Active:= True;
    DBF_RES.Active:= True;
    DBF_JUR.Active:= True;
    except
      on E: Exception do
        MessageBox(Screen.ActiveForm.Handle,
        PChar('ОШИБКА!'#10'Не могу подключить базу данных:'#10'Описание:'#10+E.Message),
        PChar(Screen.ActiveForm.Caption),
        MB_ICONEXCLAMATION)
    end;
end;

procedure Init;
begin
  DataModule1:= TDataModule1.Create(nil);

  OpenTables;
end;

procedure TDataModule1.DBF_JURCalcFields(DataSet: TDataSet);
begin
   DBF_JURTIME_OL.Value:= DBF_JURTIME_OLH.AsString+':'+DBF_JURTIME_OLM.AsString;
   DBF_JURTIME_OT.Value:= DBF_JURTIME_OTH.AsString+':'+DBF_JURTIME_OTM.AsString;
   DBF_JURTIME_VL.Value:= DBF_JURTIME_VLH.AsString+':'+DBF_JURTIME_VLM.AsString;
   DBF_JURTIME_VT.Value:= DBF_JURTIME_VTH.AsString+':'+DBF_JURTIME_VTM.AsString;
   DBF_JURPROD_OL.Value:= DBF_JURPROD_OLH.AsString+':'+DBF_JURPROD_OLM.AsString;
   DBF_JURPROD_OT.Value:= DBF_JURPROD_OTH.AsString+':'+DBF_JURPROD_OTM.AsString;
   DBF_JURMESJAC.Value:= FormatDateTime('mmmm',DBF_JURDATA_OTKL.AsDateTime);
end;

initialization
  // текущая папка
  WorkFolder:= ExtractFilePath(ParamStr(0));
  // убираем слэш в конце
  WorkFolder:= SysUtils.ExcludeTrailingBackslash(WorkFolder);

finalization
  CloseTables;
  DataModule1.Free
end.
