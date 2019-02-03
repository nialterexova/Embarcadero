library DLLProject;

uses
  System.SysUtils,
  System.Classes;

function Summ(X,Y:Integer):Integer;stdcall;
begin
  Result:=X+Y;
end;

exports Summ;

{$R *.res}

begin
end.
