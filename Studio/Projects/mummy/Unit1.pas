unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.StdActns,
  System.Actions, Vcl.ActnList;

type
  TForm1 = class(TForm)
    svetold: TEdit;
    svetnew: TEdit;
    svettarif: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    gorold: TEdit;
    gornew: TEdit;
    gortarif: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    coldold: TEdit;
    coldnew: TEdit;
    coldtarif: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    votarif: TEdit;
    Label13: TLabel;
    Label16: TLabel;
    peopletarif: TEdit;
    Label17: TLabel;
    Label20: TLabel;
    svet: TCheckBox;
    gor: TCheckBox;
    people: TCheckBox;
    Memo1: TMemo;
    Button1: TButton;
    Label18: TLabel;
    svetitog: TEdit;
    GroupSvet: TGroupBox;
    PrintSvet: TRadioButton;
    ItogSvet: TRadioButton;
    GroupGor: TGroupBox;
    onegor: TRadioButton;
    twogor: TRadioButton;
    gorold2: TEdit;
    gornew2: TEdit;
    coldold2: TEdit;
    coldnew2: TEdit;
    main: TGroupBox;
    GroupBox1: TGroupBox;
    onetarif: TRadioButton;
    manytarif: TRadioButton;
    voitog: TEdit;
    Label14: TLabel;
    voitog2: TEdit;
    Label15: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    svetold3: TEdit;
    svetnew3: TEdit;
    svettarif3: TEdit;
    svetitog3: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    svetold2: TEdit;
    svetnew2: TEdit;
    svettarif2: TEdit;
    svetitog2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure clearClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure onetarifClick(Sender: TObject);
    procedure manytarifClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
svetp, gorp, coldp, vop, kitch, peoplep, water, enter, t1,t2,t3: double;
begin
 svetp:=0;
 gorp:=0;
 coldp:=0;
 vop:=0;
 kitch:=0;
 peoplep:=0;
 water:=0;

 memo1.Clear;
 memo1.Lines[0]:='Добрый день.';

   if svet.Checked=true then begin                  //ЕСЛИ СВЕТ СЧИТАЕМ.
    if onetarif.checked=true then begin
         if PrintSvet.Checked=true then begin
        svetp:=(strtofloat(svetnew.Text)-strtofloat(svetold.Text))*strtofloat(svettarif.Text);
        svetitog.Text:=floattostr(svetp);
        memo1.lines.Add('');
        memo1.lines.Add('Свет: ('+svetnew.Text+'-'+svetold.Text+')*'+svettarif.Text+'='+floattostr(svetp));
     end;

     if ItogSvet.Checked=true then begin
        svetp:=strtofloat(svetitog.Text)*strtofloat(svettarif.Text);
        memo1.lines.Add('');
        memo1.Lines.Add('Свет: '+floattostr(svetp));
     end;

     if (PrintSvet.Checked<>true and ItogSvet.Checked<>true) then MessageBox(handle,Pchar('ВЫ НЕ ВЫБРАЛИ СПОСОБ ВЫВОДА СВЕТА'),Pchar('Error'),MB_OK);

    end;

    if manytarif.Checked=true then begin
     if PrintSvet.Checked=true then begin
        t1:=(strtofloat(svetnew.Text)-strtofloat(svetold.Text))*strtofloat(svettarif.Text);
        svetitog.Text:=floattostr(t1);
        t2:=(strtofloat(svetnew2.Text)-strtofloat(svetold2.Text))*strtofloat(svettarif2.Text);
        svetitog2.Text:=floattostr(t2);
        t3:=(strtofloat(svetnew3.Text)-strtofloat(svetold3.Text))*strtofloat(svettarif3.Text);
        svetitog3.Text:=floattostr(t3);
        memo1.lines.Add('');
        memo1.lines.Add('Свет:');
        memo1.Lines.Add('T1: ('+svetnew.Text+'-'+svetold.Text+')*'+svettarif.Text+'='+floattostr(t1));
        memo1.Lines.Add('T2: ('+svetnew2.Text+'-'+svetold2.Text+')*'+svettarif2.Text+'='+floattostr(t2));
        memo1.Lines.Add('T3: ('+svetnew3.Text+'-'+svetold3.Text+')*'+svettarif3.Text+'='+floattostr(t3));
        svetp:=t1+t2+t3;
        memo1.lines.Add('Итого по свету:'+floattostr(svetp));
     end;

     if ItogSvet.Checked=true then begin
        t1:=strtofloat(svetitog.Text)*strtofloat(svettarif.Text);
        t2:=strtofloat(svetitog2.Text)*strtofloat(svettarif2.Text);
        t3:=strtofloat(svetitog3.Text)*strtofloat(svettarif3.Text);
        svetp:=t1+t2+t3;
        memo1.lines.Add('');
        memo1.Lines.Add('Свет:');
        memo1.Lines.Add('T1: '+floattostr(t1));
        memo1.Lines.Add('T2: '+floattostr(t2));
        memo1.Lines.Add('T3: '+floattostr(t3));
        memo1.Lines.Add('Итог по свету: '+floattostr(svetp));
     end;

     if (PrintSvet.Checked<>true and ItogSvet.Checked<>true) then MessageBox(handle,Pchar('ВЫ НЕ ВЫБРАЛИ СПОСОБ ВЫВОДА СВЕТА'),Pchar('Error'),MB_OK);

    end;

   end;

   if gor.Checked=true then begin                //ЕСЛИ ВОДУ СЧИТАЕМ.
     if onegor.Checked=true then begin
       gorp:=(strtofloat(gornew.Text)-strtofloat(gorold.Text))*strtofloat(gortarif.Text);
       coldp:=(strtofloat(coldnew.Text)-strtofloat(coldold.Text))*strtofloat(coldtarif.Text);
       voitog.Text:=floattostr((strtofloat(gornew.Text)-strtofloat(gorold.Text))+(strtofloat(coldnew.Text)-strtofloat(coldold.Text)));
       vop:=strtofloat(voitog.Text)*strtofloat(votarif.Text);
       water:=gorp+coldp+vop;
       memo1.Lines.Add('');
       memo1.Lines.Add('Вода:');
       memo1.Lines.Add('Горячая: ('+gornew.Text+'-'+gorold.Text+')*'+gortarif.Text+'='+floattostr(gorp));
       memo1.Lines.Add('Холодная: ('+coldnew.Text+'-'+coldold.Text+')*'+coldtarif.Text+'='+floattostr(coldp));
       memo1.Lines.Add('ВО: '+voitog.text+'*'+votarif.Text+'='+floattostr(vop));
       memo1.Lines.Add('Итого по воде = '+floattostr(water));
     end;

     if twogor.Checked=true then begin
       gorp:=(strtofloat(gornew2.Text)-strtofloat(gorold2.Text))*strtofloat(gortarif.Text);
       coldp:=(strtofloat(coldnew2.Text)-strtofloat(coldold2.Text))*strtofloat(coldtarif.Text);
       voitog2.Text:=floattostr((strtofloat(gornew2.Text)-strtofloat(gorold2.Text))+(strtofloat(coldnew2.Text)-strtofloat(coldold2.Text)));
       vop:=strtofloat(voitog2.Text)*strtofloat(votarif.Text);
       memo1.Lines.Add('');
       memo1.Lines.Add('Вода:');
       memo1.Lines.Add('Кухня:');
       memo1.Lines.Add('Гор: ('+gornew2.Text+'-'+gorold2.Text+')*'+gortarif.Text+'='+floattostr(gorp));
       memo1.Lines.Add('Холодная: ('+coldnew2.Text+'-'+coldold2.Text+')*'+coldtarif.Text+'='+floattostr(coldp));
       memo1.Lines.Add('ВО: '+voitog2.text+'*'+votarif.Text+'='+floattostr(vop));
       kitch:=gorp+coldp+vop;

       gorp:=(strtofloat(gornew.Text)-strtofloat(gorold.Text))*strtofloat(gortarif.Text);
       coldp:=(strtofloat(coldnew.Text)-strtofloat(coldold.Text))*strtofloat(coldtarif.Text);
       voitog.Text:=floattostr((strtofloat(gornew.Text)-strtofloat(gorold.Text))+(strtofloat(coldnew.Text)-strtofloat(coldold.Text)));
       vop:=strtofloat(voitog.Text)*strtofloat(votarif.Text);
       water:=kitch+gorp+coldp+vop;
       memo1.Lines.Add('Ванная:');
       memo1.Lines.Add('Гор: ('+gornew.Text+'-'+gorold.Text+')*'+gortarif.Text+'='+floattostr(gorp));
       memo1.Lines.Add('Холодная: ('+coldnew.Text+'-'+coldold.Text+')*'+coldtarif.Text+'='+floattostr(coldp));
       memo1.Lines.Add('ВО: '+voitog.text+'*'+votarif.Text+'='+floattostr(vop));
       memo1.Lines.Add('');
       memo1.Lines.Add('Итого по воде = '+floattostr(water));
     end;

     if (onegor.Checked<>true and twogor.Checked<>true) then MessageBox(handle,Pchar('ВЫ НЕ ВЫБРАЛИ СПОСОБ ВЫВОДА ВОДЫ'),Pchar('Error'),MB_OK);


   end;

   if people.Checked=true then begin
     peoplep:=strtofloat(peopletarif.Text);
     memo1.Lines.Add('');
     memo1.Lines.Add('Консьерж: '+peopletarif.Text);
   end;

   enter:=water-peoplep+svetp;
   memo1.Lines.Add('');
   memo1.Lines.Add('Всего: '+floattostr(enter));

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
memo1.SelectAll;
end;

procedure TForm1.clearClick(Sender: TObject);
begin
    memo1.Clear;
end;

procedure TForm1.manytarifClick(Sender: TObject);
begin
svettarif.Text:='4,85';
end;

procedure TForm1.onetarifClick(Sender: TObject);
begin
svettarif.Text:='5,38';
end;

end.
