unit pasteTemp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl;

type
  TEditTempForm = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditTempForm: TEditTempForm;

implementation

{$R *.dfm}



procedure TEditTempForm.Button1Click(Sender: TObject);
begin
if SaveDialog1.Execute then Memo1.Lines.SaveToFile(SaveDialog1.FileName);
Memo1.Clear;
Close();
end;

procedure TEditTempForm.Button2Click(Sender: TObject);
begin
if OpenDialog1.Execute then Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
EditTempForm.Caption:=OpenDialog1.FileName;
end;

end.
