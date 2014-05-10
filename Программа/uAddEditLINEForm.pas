unit uAddEditLINEForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, Grids, DBGrids, ExtCtrls, sPanel,
  sSkinProvider, sSkinManager, sComboBox, sEdit, sLabel, Mask, sMaskEdit,
  sCustomComboEdit, sTooledit, sGroupBox, sBevel, DBCtrls, sDBLookupComboBox,
  sDBNavigator;

type
  TAddEditLINEForm = class(TForm)
    sSkinProvider: TsSkinProvider;
    sPanel: TsPanel;
    btnCancel: TsBitBtn;
    btnSave: TsBitBtn;
    sGroupBox1: TsGroupBox;
    sLabelFX1: TsLabelFX;
    sLabelFX2: TsLabelFX;
    sLabelFX3: TsLabelFX;
    sLabelFX4: TsLabelFX;
    edtNumber: TsEdit;
    edtDateVvoda: TsDateEdit;
    cmbListRes: TsDBLookupComboBox;
    cmbListPS: TsDBLookupComboBox;
    sDBNavigator: TsDBNavigator;
    procedure btnSaveClick(Sender: TObject);
    procedure sDBNavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    function GetKODPS: string;
    procedure SetKODPS(value: string);
    function GetNumber: string;
    procedure SetNumber(value: string);
    function GetDateVvoda: string;
    procedure SetDateVvoda(value: string);
  public
    { Public declarations }
    property KODPS: string read GetKODPS write SetKODPS;
    property Number: string read GetNumber write SetNumber;
    property DateVvoda: string read GetDateVvoda write SetDateVvoda;
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TComponent; Edit: Boolean=False); overload;
  end;

var
  AddEditLINEForm: TAddEditLINEForm;

implementation

uses uDataModule;

{$R *.dfm}

constructor TAddEditLINEForm.Create(AOwner: TComponent);
begin
  inherited;
  Caption:= 'Добавление новой линии'
end;

constructor TAddEditLINEForm.Create(AOwner: TComponent; Edit: Boolean=False);
begin
  inherited Create(Owner);
  if Edit then
      Caption:= 'Изменение данных линии'
  else
      Caption:= 'Добавление новой линии';
  // РЭС
  cmbListRES.KeyField:= 'K_RES';
  cmbListRES.ListSource:= uDataModule.DataModule1.DS_RES;
  cmbListRES.ListField:= 'NAME_RES';
  // ПС
  cmbListPS.KeyField:= 'K_PS';
  cmbListPS.ListSource:= uDataModule.DataModule1.DS_PS;
  cmbListPS.ListField:= 'NAME_PS';
  sDBNavigator.DataSource:= uDataModule.DataModule1.DS_LIN;
end;

procedure TAddEditLINEForm.FormKeyUp(Sender: TObject; var Key: Word;
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

procedure TAddEditLINEForm.btnSaveClick(Sender: TObject);
begin
  if (edtNumber.Text<>'') and (cmbListPS.Text<>'') and (edtDateVvoda.Text<>'') then
    // всё ок
    ModalResult:= mrOk
  else
    MessageBox(Self.Handle, PChar('ВНИМАНИЕ'#10'Заполните все поля'),
        PChar(Self.Caption), MB_ICONWARNING or MB_OK)
end;

////////////////////////////////////////////////////////////////////////////////

function TAddEditLINEForm.GetDateVvoda: string;
begin
  Result:= DateTimeToStr(edtDateVvoda.Date)
end;

procedure TAddEditLINEForm.SetDateVvoda(value: string);
begin
  if value='' then raise Exception.Create('AddEditLINEForm.SetDateVvoda пустая строка') else
  edtDateVvoda.Date:= StrToDate(value)
end;

function TAddEditLINEForm.GetKODPS: string;
begin
  Result:= cmbListPS.KeyValue
end;

procedure TAddEditLINEForm.SetKODPS(value: string);
begin
  if value='' then raise Exception.Create('AddEditLINEForm.SetKODPS пустая строка') else
    begin
      cmbListPS.KeyValue:= value;
      cmbListRes.KeyValue:= uDataModule.DataModule1.DBF_PS.FieldByName('K_CEH').AsInteger;
    end;
end;

function TAddEditLINEForm.GetNumber: string;
begin
  Result:= edtNumber.Text
end;

procedure TAddEditLINEForm.SetNumber(value: string);
begin
  if value='' then raise Exception.Create('AddEditLINEForm.SetNumber пустая строка') else
  edtNumber.Text:= value
end;

////////////////////////////////////////////////////////////////////////////////

procedure TAddEditLINEForm.sDBNavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  cmbListPS.KeyValue:= uDataModule.DataModule1.DBF_LIN.FieldByName('K_PS').AsInteger;
  cmbListRes.KeyValue:= uDataModule.DataModule1.DBF_PS.FieldByName('K_CEH').AsInteger;
  Number:= uDataModule.DataModule1.DBF_LIN.FieldByName('K_LIN').AsString;
end;

end.
