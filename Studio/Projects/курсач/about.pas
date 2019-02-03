unit about;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAboutForm = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    ButtonClose: TButton;
    procedure ButtonCloseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

{$R *.dfm}

uses paint;

procedure TAboutForm.Button1Click(Sender: TObject);
begin
paintform.ShowModal;
end;

procedure TAboutForm.ButtonCloseClick(Sender: TObject);
begin
Close();
end;



end.
