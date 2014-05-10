unit uAddEditPSForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, Grids, DBGrids, ExtCtrls, sPanel,
  sSkinProvider, sSkinManager, sComboBox, sEdit, sLabel, sGroupBox, sBevel,
  DBCtrls, sDBComboBox, sDBLookupComboBox, sDBNavigator;

type
  TAddEditPSForm = class(TForm)
    sSkinProvider: TsSkinProvider;
    sPanel: TsPanel;
    sGroupBox1: TsGroupBox;
    sLabelFX1: TsLabelFX;
    sLabelFX2: TsLabelFX;
    sLabelFX3: TsLabelFX;
    edtNAME: TsEdit;
    edtKODPS: TsEdit;
    cmbListRes: TsDBLookupComboBox;
    btnSave: TsBitBtn;
    btnCancel: TsBitBtn;
    sDBNavigator: TsDBNavigator;
    procedure btnSaveClick(Sender: TObject);
    procedure sDBNavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    function GetKODRes: string;
    procedure SetKODRes(value: string);
    function GetKODPS: string;
    procedure SetKODPS(value: string);
    function GetName: string;
    procedure SetName(value: string);
  public
    { Public declarations }
    property KODRES: string read GetKODRes write SetKODRes;
    property KODPS: string read GetKODPS write SetKODPS;
    property Name: string read GetName write SetName;
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TComponent; Edit: Boolean=False); overload;
  end;

var
  AddEditPSForm: TAddEditPSForm;

implementation

uses uDataModule;

{$R *.dfm}

constructor TAddEditPSForm.Create(AOwner: TComponent);
begin
  inherited;
  Caption:= 'Добавление новой ПС'
end;

constructor TAddEditPSForm.Create(AOwner: TComponent; Edit: Boolean=False);
begin
  inherited Create(AOwner);
  if Edit then
      Caption:= 'Изменение данных ПС'
  else
      Caption:= 'Добавление новой ПС';
  cmbListRES.KeyField:= 'K_RES';
  cmbListRES.ListSource:= uDataModule.DataModule1.DS_RES;
  cmbListRES.ListField:= 'NAME_RES';
  sDBNavigator.DataSource:= uDataModule.DataModule1.DS_PS;
end;

procedure TAddEditPSForm.FormKeyUp(Sender: TObject; var Key: Word;
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

procedure TAddEditPSForm.btnSaveClick(Sender: TObject);
begin
  if (edtNAME.Text<>'') and (edtKODPS.Text<>'') and (cmbListRes.Text<>'') then
    // всё ок
    ModalResult:= mrOk
  else
    MessageBox(Self.Handle, PChar('ВНИМАНИЕ'#10'Заполните все поля'),
        PChar(Self.Caption), MB_ICONWARNING or MB_OK)
end;

////////////////////////////////////////////////////////////////////////////////

function TAddEditPSForm.GetKODPS: string;
begin
  Result:= ''
end;

procedure TAddEditPSForm.SetKODPS(value: string);
begin
  if value='' then raise Exception.Create('AddEditPSForm.SetKODPS пустая строка') else
  edtKODPS.Text:= value
end;

function TAddEditPSForm.GetKODRes: string;
begin
  Result:= cmbListRES.KeyValue
end;

procedure TAddEditPSForm.SetKODRes(value: string);
begin
  if value='' then raise Exception.Create('AddEditPSForm.SetKODRes пустая строка') else
  cmbListRes.KeyValue:= value
end;

function TAddEditPSForm.GetName: string;
begin
  Result:= edtName.Text
end;

procedure TAddEditPSForm.SetName(value: string);
begin
  if value='' then raise Exception.Create('AddEditPSForm.SetName пустая строка') else
  edtName.Text:= value
end;

////////////////////////////////////////////////////////////////////////////////

procedure TAddEditPSForm.sDBNavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  KODPS:= uDataModule.DataModule1.DBF_PS.FieldByName('K_PS').AsString;
  Name:= uDataModule.DataModule1.DBF_PS.FieldByName('NAME_PS').AsString;
  cmbListRes.KeyValue:= uDataModule.DataModule1.DBF_PS.FieldByName('K_CEH').AsInteger
end;

end.
