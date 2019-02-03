unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, Vcl.StdActns, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.FileCtrl;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    fl: TMenuItem;
    edit: TMenuItem;
    settings: TMenuItem;
    help: TMenuItem;
    open: TMenuItem;
    save_as: TMenuItem;
    exit: TMenuItem;
    cancel: TMenuItem;
    cut: TMenuItem;
    copy: TMenuItem;
    paste: TMenuItem;
    delete: TMenuItem;
    find: TMenuItem;
    select_all: TMenuItem;
    about: TMenuItem;
    OpenDialog1: TOpenDialog;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    SearchFind1: TSearchFind;
    ImageList1: TImageList;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    SaveButton: TToolButton;
    ToolButton1: TToolButton;
    CutButton: TToolButton;
    CopyButton: TToolButton;
    PasteButton: TToolButton;
    ToolButton5: TToolButton;
    SaveDialog1: TSaveDialog;
    FileOpen: TAction;
    OpenButton: TToolButton;
    FileSaveAs: TAction;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    BackButton: TToolButton;
    DeleteButton: TToolButton;
    ToolButton4: TToolButton;
    NewTempButton: TToolButton;
    EditTempButton: TToolButton;
    TemplateNew: TAction;
    TemplateEdit: TAction;
    ToolBar2: TToolBar;
    FileListBox1: TFileListBox;
    PasteTempButton: TButton;
    Delphi1: TMenuItem;
    C1: TMenuItem;
    N7: TMenuItem;
    TemplateDelete: TAction;
    N8: TMenuItem;
    ToolButton2: TToolButton;
    RichEdit1: TRichEdit;
    procedure exitClick(Sender: TObject);
    procedure aboutClick(Sender: TObject);
    procedure FileOpen1BeforeExecute(Sender: TObject);
    procedure FileOpenExecute(Sender: TObject);
    procedure FileSaveAsExecute(Sender: TObject);
    procedure TemplateNewExecute(Sender: TObject);
    procedure PasteTempButtonClick(Sender: TObject);
    procedure TemplateEditExecute(Sender: TObject);
    procedure Delphi1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TemplateDeleteExecute(Sender: TObject);
    procedure RichEdit1Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  Form1: TForm1;
  direct:string;

implementation

{$R *.dfm}

uses about, newTemp, pasteTemp;

procedure TForm1.aboutClick(Sender: TObject);
begin
AboutForm.ShowModal;
end;

procedure TForm1.C1Click(Sender: TObject);
begin
ChDir('c:\template\');
if DirectoryExists('C++')<>true then CreateDir('C++');
FileListBox1.Directory:= 'c:\template\C++';
FileListBox1.Update;
end;

procedure TForm1.Delphi1Click(Sender: TObject);
begin
ChDir('c:\template\');
if DirectoryExists('Delphi')<>true then CreateDir('Delphi');
FileListBox1.Directory:= 'c:\template\Delphi';
FileListBox1.Update;
end;

procedure TForm1.exitClick(Sender: TObject);
begin
if Application.MessageBox(Pchar('�� ����� ������ �����?'),Pchar('�����'),MB_YESNO)=mrYES then Close();
end;

procedure TForm1.FileOpen1BeforeExecute(Sender: TObject);
begin
if OpenDialog1.Execute then RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.FileOpenExecute(Sender: TObject);
begin
if OpenDialog1.Execute then RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
Form1.Caption:=OpenDialog1.FileName;
end;

procedure TForm1.FileSaveAsExecute(Sender: TObject);
begin
if SaveDialog1.Execute then RichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
Form1.Caption:=OpenDialog1.FileName;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
ChDir('c:\');
if DirectoryExists('template')<>true then CreateDir('template');
FileListBox1.Directory:='c:\template';
end;

procedure TForm1.N7Click(Sender: TObject);
begin
ChDir('c:\template\');
if DirectoryExists('Other')<>true then CreateDir('Other');
FileListBox1.Directory:= 'c:\template\Other';
FileListBox1.Update;
end;

procedure TForm1.PasteTempButtonClick(Sender: TObject);
var f:TstringList;
i:integer;
begin
f := TStringList.Create();
f.LoadFromFile(FileListBox1.FileName);

for i := 0 to f.Count-1 do  begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.Lines.Insert(RichEdit1.CaretPos.Y,f[i]);
  RichEdit1.SelAttributes.Style:=[];
end;

end;

procedure TForm1.RichEdit1Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[];
end;

procedure TForm1.TemplateDeleteExecute(Sender: TObject);
begin
if Application.MessageBox(Pchar('�� ����� ������ ������� ������?'),Pchar(ExtractFileName(FileListBox1.FileName)),MB_YESNO)=mrYES then
DeleteFile(ExtractFileName(FileListBox1.FileName));
FileListBox1.Update;
end;

procedure TForm1.TemplateEditExecute(Sender: TObject);
begin
EditTempForm.ShowModal;
FileListBox1.Update;
end;

procedure TForm1.TemplateNewExecute(Sender: TObject);
var DirName:String;
begin
  GetDir(3,DirName);
  direct:=ExtractFileName(DirName);
  if direct<>'template' then newForm.ShowModal else Application.MessageBox(Pchar('�������� ����'),Pchar('������'),MB_OK);
  FileListBox1.Update;
end;


end.
