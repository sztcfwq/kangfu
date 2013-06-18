program man_ini;

uses
  Forms,
  uman_ini in 'uman_ini.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
