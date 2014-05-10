unit uWaitForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, sLabel, sGauge, sButton;

type

  TWaitForm = class(TForm)
    pnl1: TPanel;
    pb: TsGauge;
    sLabelFX1: TsLabelFX;
    pbAll: TsGauge;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ShowAll: Boolean;
    pos,posAll: integer;
    procedure SetProgress(value: Byte);
    procedure SetMax(value: Byte);
    procedure SetAllProgress(value: Byte);
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TComponent; ShowAll: Boolean=False; StayOnTop: Boolean=True); overload;
  end;

var
  WaitForm: TWaitForm;

implementation

{$R *.dfm}

{ TWaitForm }

constructor TWaitForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

constructor TWaitForm.Create(AOwner: TComponent; ShowAll: Boolean=False; StayOnTop: Boolean=True);
begin
  inherited Create(AOwner);
  if ShowAll then pbAll.Visible:= True;
  if StayOnTop then Self.FormStyle:= fsStayOnTop
  else Self.FormStyle:= fsNormal
end;

procedure TWaitForm.SetAllProgress(value: Byte);
begin
  posall:= value;
  Application.ProcessMessages
end;

procedure TWaitForm.SetMax(value: Byte);
begin
  pb.MaxValue:= value;
  pb.Progress:= pos;
  Application.ProcessMessages
end;

procedure TWaitForm.SetProgress(value: Byte);
begin
  pos:= value;
  Application.ProcessMessages
end;

procedure TWaitForm.Timer1Timer(Sender: TObject);
begin
  pb.Progress:= pos;
  pbAll.Progress:= posAll;
end;

end.
