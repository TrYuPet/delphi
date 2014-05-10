// !!!!!!
// ��� �������� �� �������� �� LIN � JUR � ������� ������ � ����� �� ����� ��
// �� �� � ��� �������� ����� - �������� �� JUR � ����� ������� ������ �� LIN

unit uSpravForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, ComCtrls, ShellAPI, acCoolBar, sToolBar, Buttons,
  sSpeedButton, ImgList, acAlphaImageList, sPanel, DB,
  WideStrings, uDBGridFrame, StdCtrls, sGroupBox, sButton, sLabel, xlcClasses,
  xlEngine, xlReport, xlReportG2, xlcOPack, xlProOPack, sSkinProvider;

type
  TSpravForm = class(TForm)
    pnlTop: TsPanel;
    btnDivider1: TsSpeedButton;
    btnViewPS: TsSpeedButton;
    btnViewRES: TsSpeedButton;
    DBGridFrame1: TDBGridFrame;
    btnHelp: TsSpeedButton;
    pnlHelp: TsPanel;
    sGroupBox1: TsGroupBox;
    sLabelFX1: TsLabelFX;
    sLabelFX2: TsLabelFX;
    btnCancel: TsButton;
    btnStart: TsButton;
    ConvDirection: TsRadioGroup;
    btnViewLine: TsSpeedButton;
    btnAdd: TsSpeedButton;
    btnDel: TsSpeedButton;
    btnEdit: TsSpeedButton;
    xlProPackage1: TxlProPackage;
    sSpeedButton1: TsSpeedButton;
    sSkinProvider: TsSkinProvider;
    btnExport: TsSpeedButton;
    xlReportPS: TxlReport;
    xlReportRES: TxlReport;
    xlReportLINE: TxlReport;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnViewRESClick(Sender: TObject);
    procedure btnViewPSClick(Sender: TObject);
    procedure btnViewLineClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure DBGridFrame1DBGridDblClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
  end;

var
  SpravForm: TSpravForm;

implementation  uses uDataModule, uMainForm, uWaitForm, uAddEditLINEForm,
  uAddEditPSForm, uAddEditRESForm;

{$R *.dfm}

procedure TSpravForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with params do
//     ����� ���� ����� �� ������ �����
    ExStyle := ExStyle or WS_EX_APPWINDOW;
end;

////////////////////////////////////////////////////////////////////////////////

procedure ShowAddEditWindow(Edit: Boolean);
begin
  if SpravForm.btnViewRES.Down then
    begin
      try
        AddEditResForm:= TAddEditResForm.Create(SpravForm,Edit);
        if Edit then
          begin
            AddEditResForm.KOD:= uDataModule.DataModule1.DBF_RES.FieldByName('K_RES').AsString;
            AddEditResForm.Name:= uDataModule.DataModule1.DBF_RES.FieldByName('NAME_RES').AsString;
          end;
        case AddEditResForm.ShowModal of
          mrOK:
            case Edit of
              TRUE:  begin  // �������� ������
                       uDataModule.DataModule1.DBF_RES.SetFields([AddEditResForm.KOD,
                                                                  AddEditResForm.Name]);
                     end;
              FALSE: begin  // ��������� ������
                       uDataModule.DataModule1.DBF_RES.Append;
                       uDataModule.DataModule1.DBF_RES.SetFields([AddEditResForm.KOD,
                                                                  AddEditResForm.Name]);
                       uDataModule.DataModule1.DBF_RES.Post;
                     end;
            end;
          mrCancel: ; // ������
        end;
      finally
        AddEditResForm.Free;
      end;
    end
  else
  if SpravForm.btnViewPS.Down then
    begin
      try
        AddEditPSForm:= TAddEditPSForm.Create(SpravForm,Edit);
        if Edit then
          begin
            AddEditPSForm.KODRES:= uDataModule.DataModule1.DBF_PS.FieldByName('K_CEH').AsString;
            AddEditPSForm.KODPS:= uDataModule.DataModule1.DBF_PS.FieldByName('K_PS').AsString;
            AddEditPSForm.Name:= uDataModule.DataModule1.DBF_PS.FieldByName('NAME_PS').AsString;
          end;
        case AddEditPSForm.ShowModal of
          mrOK:
            case Edit of
              TRUE:  begin  // �������� ������
                       uDataModule.DataModule1.DBF_PS.SetFields([AddEditPSForm.KODRes,
                                                                 AddEditPSForm.KODPS,
                                                                 AddEditPSForm.Name]);
                     end;
              FALSE: begin  // ��������� ������
                       uDataModule.DataModule1.DBF_PS.Append;
                       uDataModule.DataModule1.DBF_PS.SetFields([AddEditPSForm.KODRes,
                                                                 AddEditPSForm.KODPS,
                                                                 AddEditPSForm.Name]);
                       uDataModule.DataModule1.DBF_PS.Post;
                     end;
            end;
          mrCancel: ; // ������
        end;
      finally
        AddEditPSForm.Free
      end;
    end
  else
  if SpravForm.btnViewLine.Down then
    begin
      try
        AddEditLineForm:= TAddEditLineForm.Create(SpravForm,Edit);
        if Edit then
          begin
            AddEditLineForm.KODPS:= uDataModule.DataModule1.DBF_LIN.FieldByName('K_PS').AsString;
            AddEditLineForm.Number:= uDataModule.DataModule1.DBF_LIN.FieldByName('K_LIN').AsString;
            AddEditLineForm.DateVvoda:= uDataModule.DataModule1.DBF_LIN.FieldByName('DATA_VVOD').AsString;
          end;
        case AddEditLineForm.ShowModal of
          mrOK:
            case Edit of
              TRUE:  begin  // �������� ������
                       uDataModule.DataModule1.DBF_LIN.SetFields([AddEditLineForm.KODPS,
                                                                  AddEditLineForm.Number,
                                                                  AddEditLineForm.DateVvoda]);
                     end;
              FALSE: begin  // ��������� ������
                       uDataModule.DataModule1.DBF_LIN.Append;
                       uDataModule.DataModule1.DBF_LIN.SetFields([AddEditLineForm.KODPS,
                                                                  AddEditLineForm.Number,
                                                                  AddEditLineForm.DateVvoda]);
                       uDataModule.DataModule1.DBF_LIN.Post;
                     end;
            end;
          mrCancel: ; // ������
        end;
      finally
        AddEditLineForm.Free
      end;
    end
end;

procedure TSpravForm.btnAddClick(Sender: TObject);
begin
  ShowAddEditWindow(False);
end;

procedure TSpravForm.btnDelClick(Sender: TObject);
begin
  case  MessageBox(Self.Handle,
          PChar('��������'#10'����������� �������� ������ �'+IntToStr(DBGridFrame1.DBGrid.DataSource.DataSet.RecNo)),
          PChar(Self.Caption),
          MB_ICONQUESTION or MB_YESNO) of
    IDYES: try try
             DBGridFrame1.DBGrid.DataSource.DataSet.Delete;
             DBGridFrame1.DBGrid.DataSource.DataSet.Refresh
           finally
             MessageBox(Self.Handle, PChar('������ �������.'), PChar(Self.Caption), MB_ICONINFORMATION or MB_OK)
           end;
           except on e: exception do
             MessageBox(Self.Handle, PChar('������ �� ������� �������!'), PChar(Self.Caption), MB_ICONEXCLAMATION or MB_OK)
           end;
  end;
end;

procedure TSpravForm.btnEditClick(Sender: TObject);
begin
  ShowAddEditWindow(True);
end;

procedure TSpravForm.btnExportClick(Sender: TObject);
begin
  if SpravForm.btnViewRES.Down then
    xlReportRES.Report
  else
  if SpravForm.btnViewPS.Down then
    xlReportPS.Report
  else
  if SpravForm.btnViewLINE.Down then
    xlReportLINE.Report
end;

procedure TSpravForm.DBGridFrame1DBGridDblClick(Sender: TObject);
begin
  btnEditClick(Sender)
end;

////////////////////////////////////////////////////////////////////////////////

procedure TSpravForm.btnViewLineClick(Sender: TObject);
begin
  DBGridFrame1.DBGrid.DataSource:= uDataModule.DataModule1.DS_LIN;
  Self.Caption:= '����������: ������ �����'
end;

procedure TSpravForm.btnViewPSClick(Sender: TObject);
begin
  DBGridFrame1.DBGrid.DataSource:= uDataModule.DataModule1.DS_PS;
  Self.Caption:= '����������: ������ ����������'
end;

procedure TSpravForm.btnViewRESClick(Sender: TObject);
begin
  DBGridFrame1.DBGrid.DataSource:= uDataModule.DataModule1.DS_RES;
  Self.Caption:= '����������: ������ �����'
end;

////////////////////////////////////////////////////////////////////////////////

procedure TSpravForm.FormCreate(Sender: TObject);
begin
  //���������� ������ ���
  btnViewRESClick(Sender);
end;

procedure TSpravForm.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE: if Screen.ActiveForm=Self then Close;
    VK_F1: btnHelpClick(Sender);
    VK_F5: begin btnViewRES.Down:= True; btnViewRES.Click end;
    VK_F6: begin btnViewPS.Down:= True; btnViewPS.Click end;
    VK_F7: begin btnViewLine.Down:= True; btnViewLine.Click end;
    VK_RETURN: btnEditClick(Sender);
    VK_DELETE: btnDelClick(Sender);
    VK_INSERT: btnAddClick(Sender)
  end;
end;

////////////////////////////////////////////////////////////////////////////////

procedure TSpravForm.btnCancelClick(Sender: TObject);
begin
  // ������� ���������� ������ � ��������
  pnlTop.Visible:= true;
  // �������
  DBGridFrame1.Visible:= true;
  // ������ ������ ������
  pnlHelp.Visible:= false;
  // ��������� �������
  btnViewRESClick(nil);
end;

procedure TSpravForm.btnHelpClick(Sender: TObject);
begin
  pnlTop.Visible:= False;
  DBGridFrame1.Visible:= False;
  pnlHelp.Visible:= True;
  Self.Caption:= MainForm.Caption+': ����������';
end;

procedure TSpravForm.btnStartClick(Sender: TObject);

procedure MakeCurrent;
var s: RawByteString; // ������ �� ������� ������������� ������� �������
    ss: String;
    i: Integer; // �������
    F: TFieldDef; // �������� ���� �������
    B: TBytes;  // ������ ����

begin
  with uDataModule.DataModule1 do
  begin
  DBF_TABLE.First;                        // �� ������ ������
  while not DBF_TABLE.Eof do              // �� ���� �������
  begin
    DBF_TABLE.Edit;                       // �����������
    for i:=0 to DBF_TABLE.FieldCount-1 do // �� ���� ����� (��������)
    begin
      F:= DBF_TABLE.FieldDefs.Items[i];   // ����
      if F.DataType=ftString then         // ���������?
        begin
          ss:= DBF_TABLE.Fields[i].FieldName;  // ��� ����
          s:= Trim(DBF_TABLE.FieldByName(ss).AsString); // �������� �������� � �������� ������ �� �����
          B:= BytesOf(s);                               // ��������� � ������ ����
          case ConvDirection.ItemIndex of               // ������������
            0: B:= TEncoding.Convert(TEncoding.GetEncoding(866),TEncoding.GetEncoding(1251),B);
            1: B:= TEncoding.Convert(TEncoding.GetEncoding(1251),TEncoding.GetEncoding(866),B);
          end;
          s:= StringOf(B);                              // ��������� � ������
          DBF_TABLE.Fields[i].Value:=s                  // ����������
        end;
      WaitForm.SetProgress(Round(i*100/(DBF_TABLE.FieldCount-1)));  // ��������
    end;
    DBF_TABLE.Post;                       // ���������
    DBF_TABLE.Next;                       // ���������
  end;
  end;
  WaitForm.SetProgress(0);
end;

function MoveDataBase: Boolean;
var  OpStruc: TSHFileOpStruct;
  frombuf, tobuf: Array [0..128] of Char;
  error: integer;
begin
  result:= False;
  FillChar( frombuf, Sizeof(frombuf), 0 );     // �������
  FillChar( tobuf, Sizeof(tobuf), 0 );         // �������
  if DirectoryExists(WorkFolder+'\OldBase') then  // ����� ����
        case
        MessageBox(Screen.ActiveForm.Handle,      // ��������
        PChar('��������'#10'�����: '+WorkFolder+'\OldBase'+' ��� ����������.'#10'����������, ������� ��.'),
        PChar(Screen.ActiveForm.Caption),
        MB_ICONWARNING or MB_RETRYCANCEL) of
          IDCANCEL: Exit;
        end
  else CreateDirectory(PChar(WorkFolder+'\OldBase'),nil);    // �������

  StrPCopy( frombuf, WorkFolder+'\Base\*.*' );
  StrPCopy( tobuf, WorkFolder+'\OldBase' );
  with OpStruc do begin     // ��������� ���������
    Wnd := Handle;
    wFunc := FO_COPY;       // �������� - �����������
    pFrom := @frombuf;
    pTo := @tobuf;
    fFlags := {FOF_NOCONFIRMATION or} FOF_RENAMEONCOLLISION; // ������������� ��������� � ������ ����
    fAnyOperationsAborted := False;
    hNameMappings := Nil;
    lpszProgressTitle := Nil;
  end;
  error:= ShFileOperation(OpStruc);  // �������� �����
  if error = 0 then                  // �������?
    result:= True
  else
    MessageBox(Screen.ActiveForm.Handle,  // �� ����������
    PChar('������!'#10'�� ���� ����������� �������� ���� ������:'#10'������ �:'#10+IntToStr(error)),
    PChar(Screen.ActiveForm.Caption),
    MB_ICONEXCLAMATION)
end;

begin
  try
    // ��������� �������
    uDataModule.CloseTables;
    // ���������� � OldBase
    if not MoveDataBase then
      Exit;
    // ������� �����
    WaitForm:= TWaitForm.Create(Self,True); WaitForm.Show;
    // ���� ��������� ���������� ������� (�.�. ���������� waitform)
    Application.ProcessMessages;
    // ������ ������������ ������ �������
    uDataModule.DataModule1.DBF_TABLE.TableName:= 'LIN.DBF';
    uDataModule.DataModule1.DBF_TABLE.Active:= True;
    MakeCurrent;
    uDataModule.DataModule1.DBF_TABLE.Active:= False;
    WaitForm.SetAllProgress(25);
    //
    //
    uDataModule.DataModule1.DBF_TABLE.TableName:= 'PS.DBF';
    uDataModule.DataModule1.DBF_TABLE.Active:= True;
    MakeCurrent;
    uDataModule.DataModule1.DBF_TABLE.Active:= False;
    WaitForm.SetAllProgress(50);
    //
    //
    uDataModule.DataModule1.DBF_TABLE.TableName:= 'RES.DBF';
    uDataModule.DataModule1.DBF_TABLE.Active:= True;
    MakeCurrent;
    uDataModule.DataModule1.DBF_TABLE.Active:= False;
    WaitForm.SetAllProgress(75);
    //
    //
    uDataModule.DataModule1.DBF_TABLE.TableName:= 'JUR.DBF';
    uDataModule.DataModule1.DBF_TABLE.Active:= True;
    MakeCurrent;
    uDataModule.DataModule1.DBF_TABLE.Active:= False;
    WaitForm.SetAllProgress(100);
    //
  finally
    // ���������� �����
    WaitForm.Free;
    MessageBox(Screen.ActiveForm.Handle, PChar('������!'), PChar(Screen.ActiveForm.Caption), MB_ICONINFORMATION);
    // ���������
    uDataModule.OpenTables;
    // ������������ � �������
    btnCancelClick(nil)
  end;
end;

end.
