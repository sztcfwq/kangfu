unit uman_ini;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    memo_mingma: TMemo;
    Label1: TLabel;
    memo_mima: TMemo;
    Label2: TLabel;
    btn_encrypt: TButton;
    btn_read: TButton;
    btn_decrypt: TButton;
    btn_write: TButton;
    Label3: TLabel;
    od_ini: TOpenDialog;
    sd_ini: TSaveDialog;
    procedure btn_readClick(Sender: TObject);
    procedure btn_encryptClick(Sender: TObject);
    procedure btn_decryptClick(Sender: TObject);
    procedure btn_writeClick(Sender: TObject);
  private
    { Private declarations }
      f:textfile;
      afile:string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  function Decrypt(const S: shortString; Key: Word): shortString; external 'crpt.dll';
  function Encrypt(const S: shortString; Key: Word): shortString; external 'crpt.dll';


implementation

{$R *.dfm}

procedure TForm1.btn_readClick(Sender: TObject);
var
  str_en:string;
begin
  if od_ini.Execute then
  begin
     memo_mingma.Clear;
     assignfile(f,od_ini.FileName);
     reset(f);
     readln(f,str_en);
     memo_mingma.lines.Add(decrypt(str_en,222));
     readln(f,str_en);
     memo_mingma.Lines.add(decrypt(str_en,222));
     afile:=od_ini.FileName;
     closefile(f);
  end;
end;

procedure TForm1.btn_encryptClick(Sender: TObject);
var
  mingma,alltxt:string;
  i,j,t:integer;
begin
   memo_mima.Clear;
   alltxt :=trim(memo_mingma.Text);
   j:=0;
   t:=0;
   for i:=0 to length(alltxt) do
   begin
      if alltxt[i]=char(13) then
      begin
        if j=0 then mingma:=copy(alltxt,j,t);
        if j<>0 then mingma:=copy(alltxt,j+1,t);
        memo_mima.lines.add(encrypt(mingma,222));
        j:=i;
      end;
      t:=i;
   end;
   if j<>t then begin
      mingma:=copy(alltxt,j+2,t);
      showmessage(mingma);
      memo_mima.Lines.add(encrypt(mingma,222));
   end;
end;

procedure TForm1.btn_decryptClick(Sender: TObject);
var
  mima,alltxt:string;
  i,j,t:integer;
begin
   memo_mingma.Clear;
   alltxt :=trim(memo_mima.Text);
   j:=0;
   t:=0;
   for i:=0 to length(alltxt) do
   begin
      if alltxt[i]=char(13) then
      begin
        if j=0 then mima:=copy(alltxt,j,t);
        if j<>0 then mima:=copy(alltxt,j+1,t);
        memo_mingma.lines.add(decrypt(mima,222));
        j:=i;
      end;
      t:=i;
   end;
   if j<>t then begin
      mima:=copy(alltxt,j+2,t);
      showmessage(mima);
      showmessage(decrypt(mima,222));
      memo_mingma.Lines.add(decrypt(mima,222));
   end;
end;

procedure TForm1.btn_writeClick(Sender: TObject);
var
  i:integer;
begin
  if afile='' then exit;
  if memo_mima.Text ='' then exit;
  sd_ini.FileName :=afile;
  if sd_ini.Execute then
  begin
     assignfile(f,sd_ini.FileName);
     rewrite(f);
     for i:=0 to memo_mima.lines.count do
     begin
       writeln(f,memo_mima.lines[i]);
     end;
     closefile(f);
  end;
end;

end.
