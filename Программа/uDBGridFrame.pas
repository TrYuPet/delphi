unit uDBGridFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, DB, DBCtrls, Grids, DBGrids, acDBGrid;

type
  TDBGridFrame = class(TFrame)
    DBGrid: TsDBGrid;
    procedure DBGridDrawColumnCellDefault(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridDrawColumnCellJUR(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
//    DBGRID: HackacDBGrid.TsDBGrid;
  end;

implementation

uses uDataModule, WinProcs;

{$R *.dfm}

type
   TAccessDBGrid = class(TsDBGrid);

procedure TDBGridFrame.DBGridDrawColumnCellJUR(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  S1, S2: String;
  C: array[0..255] of Char;
  Format: Word;
  R: TRect;
begin
  if gdSelected in State then // если €чейка выделена
  with DBGrid.Canvas do
    begin
      //
//      Brush.Color:= clSkyBlue;
//      FillRect(Rect);
      //
      if DBGrid.DataSource = uDataModule.DataModule1.DS_JUR then
      with TAccessDBGrid(DBGrid) do
        RowHeights[0] := 45;
      StrPCopy(C, Column.Title.Caption);
      Format:= DT_CENTER or DT_VCENTER or DT_SINGLELINE or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX;
      R:= Rect;
//      Pen.Color:= clBlue;
//      WinProcs.DrawText(DBGrid.Canvas.Handle, C, StrLen(C), R, Format);

      Brush.Color := clNavy;  // фон
      Font.Color := clYellow;     // цвет текста
      FillRect(Rect);            // заливаем
      if Column.Alignment = taRightJustify then  // выводим текст с учетом выравнивани€
        TextOut(Rect.Right - 2 - TextWidth(Column.Field.Text),
        Rect.Top+2, Column.Field.Text)
      else
        TextOut(Rect.Left + 2, Rect.Top + 2, Column.Field.Text);
    end;
end;

procedure TDBGridFrame.DBGridDrawColumnCellDefault(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if gdSelected in State then // если €чейка выделена
   with DBGrid.Canvas do
    begin
      Brush.Color := clNavy;  // фон
      Font.Color := clYellow;     // цвет текста
      FillRect(Rect);            // заливаем
      if Column.Alignment = taRightJustify then  // выводим текст с учетом выравнивани€
        TextOut(Rect.Right - 2 - TextWidth(Column.Field.Text),
        Rect.Top+2, Column.Field.Text)
      else
        TextOut(Rect.Left + 2, Rect.Top + 2, Column.Field.Text);
    end;
end;

end.
