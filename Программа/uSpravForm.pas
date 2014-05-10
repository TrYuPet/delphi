// !!!!!!
// При удалении ПС пройтись по LIN и JUR и удалить записи с таким же кодом ПС
// То же и при удалении линии - пройтись по JUR а потом удалить запись из LIN

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
//     чтобы было видно на панели задач
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
              TRUE:  begin  // изменяем запись
                       uDataModule.DataModule1.DBF_RES.SetFields([AddEditResForm.KOD,
                                                                  AddEditResForm.Name]);
                     end;
              FALSE: begin  // добавляем запись
                       uDataModule.DataModule1.DBF_RES.Append;
                       uDataModule.DataModule1.DBF_RES.SetFields([AddEditResForm.KOD,
                                                                  AddEditResForm.Name]);
                       uDataModule.DataModule1.DBF_RES.Post;
                     end;
            end;
          mrCancel: ; // отмена
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
              TRUE:  begin  // изменяем запись
                       uDataModule.DataModule1.DBF_PS.SetFields([AddEditPSForm.KODRes,
                                                                 AddEditPSForm.KODPS,
                                                                 AddEditPSForm.Name]);
                     end;
              FALSE: begin  // добавляем запись
                       uDataModule.DataModule1.DBF_PS.Append;
                       uDataModule.DataModule1.DBF_PS.SetFields([AddEditPSForm.KODRes,
                                                                 AddEditPSForm.KODPS,
                                                                 AddEditPSForm.Name]);
                       uDataModule.DataModule1.DBF_PS.Post;
                     end;
            end;
          mrCancel: ; // отмена
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
              TRUE:  begin  // изменяем запись
                       uDataModule.DataModule1.DBF_LIN.SetFields([AddEditLineForm.KODPS,
                                                                  AddEditLineForm.Number,
                                                                  AddEditLineForm.DateVvoda]);
                     end;
              FALSE: begin  // добавляем запись
                       uDataModule.DataModule1.DBF_LIN.Append;
                       uDataModule.DataModule1.DBF_LIN.SetFields([AddEditLineForm.KODPS,
                                                                  AddEditLineForm.Number,
                                                                  AddEditLineForm.DateVvoda]);
                       uDataModule.DataModule1.DBF_LIN.Post;
                     end;
            end;
          mrCancel: ; // отмена
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
          PChar('ВНИМАНИЕ'#10'Подтвердите удаление записи №'+IntToStr(DBGridFrame1.DBGrid.DataSource.DataSet.RecNo)),
          PChar(Self.Caption),
          MB_ICONQUESTION or MB_YESNO) of
    IDYES: try try
             DBGridFrame1.DBGrid.DataSource.DataSet.Delete;
             DBGridFrame1.DBGrid.DataSource.DataSet.Refresh
           finally
             MessageBox(Self.Handle, PChar('Запись удалена.'), PChar(Self.Caption), MB_ICONINFORMATION or MB_OK)
           end;
           except on e: exception do
             MessageBox(Self.Handle, PChar('Запись не удалось удалить!'), PChar(Self.Caption), MB_ICONEXCLAMATION or MB_OK)
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
  Self.Caption:= 'Справочник: Список линий'
end;

procedure TSpravForm.btnViewPSClick(Sender: TObject);
begin
  DBGridFrame1.DBGrid.DataSource:= uDataModule.DataModule1.DS_PS;
  Self.Caption:= 'Справочник: Список подстанций'
end;

procedure TSpravForm.btnViewRESClick(Sender: TObject);
begin
  DBGridFrame1.DBGrid.DataSource:= uDataModule.DataModule1.DS_RES;
  Self.Caption:= 'Справочник: Список РЭСов'
end;

////////////////////////////////////////////////////////////////////////////////

procedure TSpravForm.FormCreate(Sender: TObject);
begin
  //показываем список РЭС
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
  // обратно показываем панель с кнопками
  pnlTop.Visible:= true;
  // таблицу
  DBGridFrame1.Visible:= true;
  // прячем панель помощи
  pnlHelp.Visible:= false;
  // загружаем таблицу
  btnViewRESClick(nil);
end;

procedure TSpravForm.btnHelpClick(Sender: TObject);
begin
  pnlTop.Visible:= False;
  DBGridFrame1.Visible:= False;
  pnlHelp.Visible:= True;
  Self.Caption:= MainForm.Caption+': Справочник';
end;

procedure TSpravForm.btnStartClick(Sender: TObject);

procedure MakeCurrent;
var s: RawByteString; // строка не имеющая установленной кодовой таблицы
    ss: String;
    i: Integer; // счетчик
    F: TFieldDef; // описание поля таблицы
    B: TBytes;  // массив байт

begin
  with uDataModule.DataModule1 do
  begin
  DBF_TABLE.First;                        // на первую запись
  while not DBF_TABLE.Eof do              // по всей таблице
  begin
    DBF_TABLE.Edit;                       // редактируем
    for i:=0 to DBF_TABLE.FieldCount-1 do // по всем полям (столбцам)
    begin
      F:= DBF_TABLE.FieldDefs.Items[i];   // поле
      if F.DataType=ftString then         // строковое?
        begin
          ss:= DBF_TABLE.Fields[i].FieldName;  // имя поля
          s:= Trim(DBF_TABLE.FieldByName(ss).AsString); // получаем значение и обрезаем лишнее по бокам
          B:= BytesOf(s);                               // переводим в массив байт
          case ConvDirection.ItemIndex of               // конвертируем
            0: B:= TEncoding.Convert(TEncoding.GetEncoding(866),TEncoding.GetEncoding(1251),B);
            1: B:= TEncoding.Convert(TEncoding.GetEncoding(1251),TEncoding.GetEncoding(866),B);
          end;
          s:= StringOf(B);                              // переводим в строку
          DBF_TABLE.Fields[i].Value:=s                  // записываем
        end;
      WaitForm.SetProgress(Round(i*100/(DBF_TABLE.FieldCount-1)));  // прогресс
    end;
    DBF_TABLE.Post;                       // сохраняем
    DBF_TABLE.Next;                       // следующая
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
  FillChar( frombuf, Sizeof(frombuf), 0 );     // очищаем
  FillChar( tobuf, Sizeof(tobuf), 0 );         // очищаем
  if DirectoryExists(WorkFolder+'\OldBase') then  // папка есть
        case
        MessageBox(Screen.ActiveForm.Handle,      // ошибочка
        PChar('ВНИМАНИЕ'#10'Папка: '+WorkFolder+'\OldBase'+' уже существует.'#10'Пожалуйста, удалите ее.'),
        PChar(Screen.ActiveForm.Caption),
        MB_ICONWARNING or MB_RETRYCANCEL) of
          IDCANCEL: Exit;
        end
  else CreateDirectory(PChar(WorkFolder+'\OldBase'),nil);    // создаем

  StrPCopy( frombuf, WorkFolder+'\Base\*.*' );
  StrPCopy( tobuf, WorkFolder+'\OldBase' );
  with OpStruc do begin     // заполняем структуру
    Wnd := Handle;
    wFunc := FO_COPY;       // операция - копирование
    pFrom := @frombuf;
    pTo := @tobuf;
    fFlags := {FOF_NOCONFIRMATION or} FOF_RENAMEONCOLLISION; // переименовать автоматом в случае чего
    fAnyOperationsAborted := False;
    hNameMappings := Nil;
    lpszProgressTitle := Nil;
  end;
  error:= ShFileOperation(OpStruc);  // передаем винде
  if error = 0 then                  // успешно?
    result:= True
  else
    MessageBox(Screen.ActiveForm.Handle,  // не получилось
    PChar('ОШИБКА!'#10'Не могу скопировать исходную базу данных:'#10'Ошибка №:'#10+IntToStr(error)),
    PChar(Screen.ActiveForm.Caption),
    MB_ICONEXCLAMATION)
end;

begin
  try
    // закрываем таблицы
    uDataModule.CloseTables;
    // перемещаем в OldBase
    if not MoveDataBase then
      Exit;
    // создаем форму
    WaitForm:= TWaitForm.Create(Self,True); WaitForm.Show;
    // даем программе обработать события (т.е. нарисовать waitform)
    Application.ProcessMessages;
    // теперь конвертируем каждую таблицу
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
    // уничтожаем форму
    WaitForm.Free;
    MessageBox(Screen.ActiveForm.Handle, PChar('Готово!'), PChar(Screen.ActiveForm.Caption), MB_ICONINFORMATION);
    // открываем
    uDataModule.OpenTables;
    // возвращаемся к таблице
    btnCancelClick(nil)
  end;
end;

end.
