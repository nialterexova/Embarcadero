unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;


type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function summ(X,Y:integer):integer;stdcall;

 var
 Form1:Tform1;

implementation

function summ; external 'DLLProject.dll' name 'Summ';

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
r:integer;
begin
    r:=Summ(strtoint(edit1.text),strtoint(edit2.Text));
    label1.Caption:='���������: '+inttostr(r);


end;

end.
