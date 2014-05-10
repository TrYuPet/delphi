unit uAddEditRESForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, Grids, DBGrids, DBCtrls, ExtCtrls, sPanel,
  sSkinProvider, sSkinManager, sComboBox, sEdit, sLabel, sGroupBox, sBevel,
  sDBNavigator;

type
  TAddEditRESForm = class(TForm)
    sSkinProvider: TsSkinProvider;
    sPanel: TsPanel;
    sGroupBox1: TsGroupBox;
    sLabelFX1: TsLabelFX;
    sLabelFX2: TsLabelFX;
    edtNAME: TsEdit;
    edtKOD: TsEdit;
    btnSave: TsBitBtn;
    btnCancel: TsBitBtn;
    sDBNavigator: TsDBNavigator;
    procedure btnSaveClick(Sender: TObject);
    procedure sDBNavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    function GetKOD: string;
    procedure SetKOD(value: string);
    function GetName: string;
    procedure SetName(value: string);
  public
    { Public declarations }
    property KOD: string read GetKOD write SetKOD;
    property Name: string read GetName write SetName;
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TComponent; Edit: Boolean=False); overload;
  end;

var
  AddEditRESForm: TAddEditRESForm;

implementation

uses uDataModule;

{$R *.dfm}

constructor TAddEditRESForm.Create(AOwner: TComponent);
begin
  inherited;
  Caption:= 'Добавление нового РЭС';
end;

constructor TAddEditRESForm.Create(AOwner: TComponent; Edit: Boolean=False);
begin
  inherited Create(AOwner);
  if Edit then
      Caption:= 'Изменение данных РЭС'
  else
      Caption:= 'Добавление нового РЭС';
  sDBNavigator.DataSource:= uDataModule.DataModule1.DS_RES;
end;

procedure TAddEditRESForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ACtrl: TWinControl;
begin
  case Key of
    VK_RETURN: begin
                 ACtrl := ActiveControl;
                 repeat
                  ACtrl:= FindNextControl(ACtrl,true,true,false);
                 until (ACtrl is TsEdit) or (ACtrl is TsBitBtn);
                 ACtrl.SetFocus ;
               end;
    VK_ESCAPE: Close;
  end;
end;

////////////////////////////////////////////////////////////////////////////////

procedure TAddEditRESForm.btnSaveClick(Sender: TObject);
begin
  if (edtNAME.Text<>'') and (edtKOD.Text<>'') then
    // всё ок
    ModalResult:= mrOk
  else
    MessageBox(Self.Handle, PChar('ВНИМАНИЕ'#10'Заполните все поля'),
        PChar(Self.Caption), MB_ICONWARNING or MB_OK)
end;

////////////////////////////////////////////////////////////////////////////////

function TAddEditRESForm.GetKOD: string;
begin
  Result:= edtKOD.Text;
end;

procedure TAddEditRESForm.SetKOD(value: string);
begin
  if value='' then raise Exception.Create('AddEditRESForm.SetKOD пустая строка') else
  edtKOD.Text:= value
end;

function TAddEditRESForm.GetNAME: string;
begin
  Result:= edtNAME.Text
end;

procedure TAddEditRESForm.SetName(value: string);
begin
  if value='' then raise Exception.Create('AddEditRESForm.SetName пустая строка') else
  edtName.Text:= value
end;

////////////////////////////////////////////////////////////////////////////////

procedure TAddEditRESForm.sDBNavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  KOD:= uDataModule.DataModule1.DBF_RES.FieldByName('K_RES').AsString;
  Name:= uDataModule.DataModule1.DBF_RES.FieldByName('NAME_RES').AsString;
end;

end.
