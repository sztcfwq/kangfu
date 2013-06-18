unit uxmsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls,qt, Buttons;

type
  Tfrm_ts = class(TForm)
    Panel1: TPanel;
    dbg_xmlb: TDBGrid;
    Label1: TLabel;
    edt_cztj: TEdit;
    Label2: TLabel;
    cbb_fs: TComboBox;
    cb_zn: TCheckBox;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure cb_znClick(Sender: TObject);
    procedure cbb_fsChange(Sender: TObject);
    procedure edt_cztjKeyPress(Sender: TObject; var Key: Char);
    procedure dbg_xmlbKeyPress(Sender: TObject; var Key: Char);
    procedure dbg_xmlbDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    tj_gjc:integer;//条件关键词（1:代码，2:拼音，3:五笔，4:智能)
    procedure lbxsmx(gjc:integer);//列表显示明细，gjc关键词即tj_gjc的值
  public
    { Public declarations }
  end;

var
  frm_ts: Tfrm_ts;

implementation

uses usjmk;

{$R *.dfm}

procedure Tfrm_ts.FormShow(Sender: TObject);
begin
  tj_gjc:=4;
  lbxsmx(tj_gjc);
end;

procedure Tfrm_ts.cb_znClick(Sender: TObject);
begin
  if cb_zn.checked then
  begin
    cbb_fs.Enabled :=false;
    tj_gjc:=cbb_fs.ItemIndex +1;
  end;
  if  not cb_zn.Checked  then
  begin
    cbb_fs.Enabled :=true;
    tj_gjc:=4;
  end;
  lbxsmx(tj_gjc);
end;

procedure Tfrm_ts.cbb_fsChange(Sender: TObject);
begin
  tj_gjc:=cbb_fs.ItemIndex+1;    //条件关键词（1:代码，2:拼音，3:五笔，4:智能)
  lbxsmx(tj_gjc);
end;

procedure Tfrm_ts.lbxsmx(gjc:integer);
var
  tjnr:string;//条件内容
  sqlstr:string;
  conlength:integer;
begin
  tjnr:=trim(edt_cztj.Text);
  conlength :=length(tjnr);
  sqlstr:='select name as ''名称'',xmdw as ''单位'',xmdj as ''单价'',id as ''代码'' from YY_SFXXMK';
  case gjc of
    1:
    begin
      sqlstr:=sqlstr+' where left(id,'+inttostr(conlength)+') =:constr';
    end;
    2:
    begin
      sqlstr:=sqlstr+' where  py like :constr';
      tjnr:='%'+tjnr+'%';
    end;
    3:
    begin
      sqlstr:=sqlstr+' where wb like :constr';
      tjnr:='%'+tjnr+'%';
    end;
    4:
    begin
      if copy(tjnr,0,1)='.' then
      begin
        sqlstr:=sqlstr+' where left(id,'+inttostr(conlength)+') =:constr';
      end
      else
      begin
        sqlstr:=sqlstr+' where py like :constr or wb like :constr';
        tjnr:='%'+tjnr+'%';
      end;
    end;
  end;
  dm.q_ts.Close;
  dm.q_ts.SQL.Clear;
  dm.q_ts.SQL.Add(sqlstr);
  dm.q_ts.Parameters.ParamByName('constr').value :=tjnr;
  dm.q_ts.open;
  if dm.q_ts.RecordCount >0 then
  begin
    dbg_xmlb.SetFocus;
    dbg_xmlb.SelectedIndex :=0;
  end;
end;

procedure Tfrm_ts.edt_cztjKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    lbxsmx(tj_gjc);
  end;
end;

procedure Tfrm_ts.dbg_xmlbKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    if dm.q_ts.RecordCount >0 then frm_ts.Close;
  end;
end;

procedure Tfrm_ts.dbg_xmlbDblClick(Sender: TObject);
begin
  if dm.q_ts.RecordCount >0 then frm_ts.close;
end;

procedure Tfrm_ts.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=chr(vk_escape) then
  begin
    dm.q_ts.Close;
    frm_ts.close;
  end;
end;

procedure Tfrm_ts.BitBtn1Click(Sender: TObject);
begin
  dm.q_ts.Close;
  frm_ts.Close;
end;

end.
