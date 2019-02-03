unit newTemp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ComCtrls;

type
  TnewForm = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  newForm: TnewForm;

implementation

{$R *.dfm}

uses main;

procedure TnewForm.Button1Click(Sender: TObject);
var F: file;
begin
   if Edit1.Text<>'' then
   begin

     if FileExists(Edit1.Text+'.txt') then MessageBox(handle,Pchar('Такой шаблон существует'),Pchar('Error'), MB_OK) else
        begin
        AssignFile(F, Edit1.Text+'.txt');
        ReWrite(F);
        CloseFile(F);
        Memo1.Lines.SaveToFile('C:\template\'+direct+'\'+Edit1.Text+'.txt');
        Memo1.Clear;
        Close()
        end
   end
   else MessageBox(handle,Pchar('Введите название шаблона'),Pchar('Error'), MB_OK);

end;

end.
