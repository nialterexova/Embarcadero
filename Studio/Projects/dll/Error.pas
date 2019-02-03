unit Error;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  procedure Show(Handle: THandle);export;stdcall;

implementation

{$R *.dfm}

procedure Show(Handle: THandle);
begin
  Application.Handle:=Handle;
  Form1:=TForm1.Create(Application);
  Form1.ShowModal;
  Form1.Free;
end;

end.
