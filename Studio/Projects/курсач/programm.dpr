program programm;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  about in 'about.pas' {AboutForm},
  newTemp in 'newTemp.pas' {newForm},
  pasteTemp in 'pasteTemp.pas' {EditTempForm},
  paint in 'paint.pas' {paintForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TnewForm, newForm);
  Application.CreateForm(TEditTempForm, EditTempForm);
  Application.CreateForm(TpaintForm, paintForm);
  Application.Run;
end.
