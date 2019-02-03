unit paint;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TpaintForm = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    startX, startY: Integer;
    dragging:boolean;
  public
    { Public declarations }
  end;

var
  paintForm: TpaintForm;

implementation

{$R *.dfm}

procedure TpaintForm.FormCreate(Sender: TObject);
begin
dragging:=false;
end;

procedure TpaintForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
StartX:=X;
StartY:=Y;
dragging:=true;
end;

procedure TpaintForm.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if dragging=false then exit;

canvas.MoveTo(startX,startY);
canvas.LineTo(X,Y);
end;

procedure TpaintForm.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
dragging:=false;
end;

end.
