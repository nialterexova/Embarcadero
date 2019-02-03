unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl;



type
  TForm1 = class(TForm)

    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    DriveComboBox1: TDriveComboBox;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Label2: TLabel;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DirectoryListBox1Click(Sender: TObject);
    procedure DirectoryListBox1DblClick(Sender: TObject);
    procedure FileListBox1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure DriveComboBox1Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

 function Summ(X,Y:integer):integer; external 'DLLProject.DLL' name 'Summ';
implementation



{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
namenew: string;
name: string;
begin
    namenew:=Edit1.Text;
    name:=DirectoryListBox1.Directory;
    DirectoryListBox1.ItemIndex:=DirectoryListBox1.ItemIndex-1;
    DirectoryListBox1.OpenCurrent;
    if RenameFile(ExtractFileName(name),Edit1.Text)
    then label4.Caption:='rename success' else label4.Caption:='error';
    DirectoryListBox1.Update;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if CreateDir(Edit1.Text)
then label4.Caption:='create success' else label4.Caption:='error';
DirectoryListBox1.Update;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
   name: string;
begin
name:=DirectoryListBox1.Directory;
DirectoryListBox1.ItemIndex:=DirectoryListBox1.ItemIndex-1;
DirectoryListBox1.OpenCurrent;
if RemoveDir(ExtractFileName(name))
then label4.Caption:='delete success' else label4.Caption:='error';
DirectoryListBox1.Update;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
name: string;
F: file;
begin
name:=Edit2.Text;
AssignFile(F,name);
ReWrite(F);
CloseFile(F);
FileListBox1.Update;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
F: File;
begin
AssignFile( F, ExtractFileName(FileListBox1.FileName));
Erase(F);
FileListBox1.Update;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
name: string;
begin
  name:=Edit2.Text;
  if renamefile( ExtractFileName(FileListBox1.FileName),name)
  then label4.Caption:='rename success' else label4.Caption:='error';
  FileListBox1.Update;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
name:string;
begin
  name:=Edit2.Text;
  if CopyFile( Pchar(FileListBox1.FileName), Pchar(ExtractFileDir(FileListBox1.FileName)+'\'+name), true)
  then label4.Caption:='copy success' else label4.Caption:='error';;
  FileListBox1.Update;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
r:Integer;
begin
r:=Summ(10,34);
Application.MessageBox(PChar(inttostr(r)), 'result func summ');
end;

procedure TForm1.DirectoryListBox1Click(Sender: TObject);
begin
     Label1.Caption:='����� �����: '+DirectoryListBox1.Directory;
end;

procedure TForm1.DirectoryListBox1DblClick(Sender: TObject);
begin
        Label1.Caption:='����� �����: '+DirectoryListBox1.Directory;
end;

procedure TForm1.DriveComboBox1Change(Sender: TObject);
var
dr: Integer;
name: char;
begin
name:= DriveComboBox1.Drive ;
      case(name)of
      'a': dr:=1;
      'b': dr:=2;
      'c': dr:=3;
      'd': dr:=4;
      'e': dr:=5;
      'f': dr:=6;
      end;
      label5.Caption:= IntToStr(DiskFree(dr))+' / '+IntToStr(DiskSize(dr))+'  ����';
end;

procedure TForm1.Edit2Click(Sender: TObject);
begin
    Edit2.Text:='.txt';
end;

procedure TForm1.FileListBox1Change(Sender: TObject);
var
searchresult: TSearchRec;
begin
    if FindFirst(ExtractFileName(FileListBox1.FileName),faAnyFile, searchResult)=0
    then begin
      label2.Caption:= '��� �����: '+searchresult.Name+' ������: '+IntToStr(searchResult.Size);
      //+' ��������� ���������: '+IntToStr(searchResult.Time);
      FindClose(searchResult);
    end;

end;

procedure TForm1.FileListBox1Click(Sender: TObject);
begin
Label3.Caption:='����� �����: '+FileListBox1.FileName;
end;



end.
