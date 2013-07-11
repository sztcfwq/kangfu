unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  StdCtrls,  Buttons, ComCtrls, CheckLst,
  Grids, DBGrids, DB, ADODB, ppEndUsr, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppBands, ppCache, jpeg, ppViewr, Menus,
  ppCtrls, ppPrnabl,  ppVar, ppSubRpt, ppStrtch, ppMemo, raFunc, dxsbar,
  ImgList, RxGIF;

type
  Tfrm_main = class(TForm)   
    Panel3: TPanel;
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    nb: TNotebook;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn4: TBitBtn;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    edt_zlzyh: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    edt_zlbh: TEdit;
    bbt_dw: TBitBtn;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    GroupBox5: TGroupBox;
    Label24: TLabel;
    edt_zlxm: TEdit;
    Label25: TLabel;
    edt_zlxb: TEdit;
    Label26: TLabel;
    edt_zlnl: TEdit;
    Label27: TLabel;
    edt_zldw: TEdit;
    Label28: TLabel;
    edt_zlzz: TEdit;
    Label29: TLabel;
    edt_zlcs: TEdit;
    Label30: TLabel;
    GroupBox6: TGroupBox;
    qf: TADOQuery;
    gb: TRadioGroup;
    q_lb: TADOQuery;
    Label31: TLabel;
    Label32: TLabel;
    dtp_zlrq: TDateTimePicker;
    Label33: TLabel;
    edt_czry: TEdit;
    SpeedButton1: TSpeedButton;
    DataSource1: TDataSource;
    qcsey: TADOQuery;
    ppline: TppDBPipeline;
    pprpt: TppReport;
    ppdsg: TppDesigner;
    dsrpt: TDataSource;
    cbb_zlzlys: TComboBox;
    ppmline: TppDBPipeline;
    qp: TADOQuery;
    DataSource2: TDataSource;
    PageControl1: TPageControl;
    ts_mtzlrc: TTabSheet;
    ts_dxmtj: TTabSheet;
    ts_ystj: TTabSheet;
    pp_view: TppViewer;
    ts_zlstj: TTabSheet;
    ts_brtj: TTabSheet;
    Label34: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label35: TLabel;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Button3: TButton;
    Button4: TButton;
    DateTimePicker3: TDateTimePicker;
    Label36: TLabel;
    DateTimePicker4: TDateTimePicker;
    Label37: TLabel;
    Button5: TButton;
    Button6: TButton;
    DateTimePicker5: TDateTimePicker;
    Label38: TLabel;
    DateTimePicker6: TDateTimePicker;
    Label39: TLabel;
    Button7: TButton;
    Button8: TButton;
    DateTimePicker7: TDateTimePicker;
    Label40: TLabel;
    DateTimePicker8: TDateTimePicker;
    Label41: TLabel;
    Button10: TButton;
    Label44: TLabel;
    edt_dxmmc: TEdit;
    cbb_ys: TComboBox;
    Label45: TLabel;
    Label46: TLabel;
    cbb_zls: TComboBox;
    N3: TMenuItem;
    tishi: TLabel;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Label47: TLabel;
    edt_zlkbh: TEdit;
    Label42: TLabel;
    edt_zlzd: TEdit;
    Label43: TLabel;
    lb_mzlx: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    edt_cxzlh: TEdit;
    Label50: TLabel;
    Label51: TLabel;
    edt_cxxm: TEdit;
    ppHeaderBand1: TppHeaderBand;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText6: TppDBText;
    ppLabel15: TppLabel;
    ppDBText7: TppDBText;
    ppLabel16: TppLabel;
    ppDBText8: TppDBText;
    ppLabel17: TppLabel;
    ppDBText9: TppDBText;
    ppLabel18: TppLabel;
    ppDBText10: TppDBText;
    ppLabel19: TppLabel;
    ppDBText11: TppDBText;
    ppLabel20: TppLabel;
    ppDBText12: TppDBText;
    ppLabel21: TppLabel;
    ppDBText13: TppDBText;
    ppLabel22: TppLabel;
    ppDBText14: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText15: TppDBText;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel8: TppLabel;
    ppLabel3: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppLine8: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel11: TppLabel;
    ppLabel9: TppLabel;
    ppLabel35: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel37: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel38: TppLabel;
    ppDBMemo3: TppDBMemo;
    ppLabel1: TppLabel;
    ppLine9: TppLine;
    ppLabel2: TppLabel;
    ppLine10: TppLine;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppLabel10: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel31: TppLabel;
    ppLabel34: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppLine11: TppLine;
    ppLabel39: TppLabel;
    ppLabel36: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel43: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel44: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppline_cf: TppDBPipeline;
    cbb_zlxm: TComboBox;
    Label53: TLabel;
    Label54: TLabel;
    Button9: TButton;
    pm_brlb: TPopupMenu;
    N7: TMenuItem;
    PageControl2: TPageControl;
    ts_wctszl: TTabSheet;
    ts_xgjbxx: TTabSheet;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    btn_xgjbxx: TButton;
    Label56: TLabel;
    edt_xgbrbh: TEdit;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label62: TLabel;
    Edit6: TEdit;
    Label63: TLabel;
    Edit7: TEdit;
    Label64: TLabel;
    Label65: TLabel;
    Edit9: TEdit;
    Label66: TLabel;
    Edit10: TEdit;
    cbb_xgsex: TComboBox;
    cb_zlall: TCheckBox;
    Label67: TLabel;
    Label68: TLabel;
    Memo1: TMemo;
    Label69: TLabel;
    Label70: TLabel;
    dxSideBar1: TdxSideBar;
    imgLarge: TImageList;
    SideBarStore: TdxSideBarStore;
    SideBarStoreItem2: TdxStoredSideItem;
    SideBarStoreItem1: TdxStoredSideItem;
    SideBarStoreItem3: TdxStoredSideItem;
    SideBarStoreItem4: TdxStoredSideItem;
    Panel7: TPanel;
    GroupBox2: TGroupBox;
    Panel8: TPanel;
    Splitter1: TSplitter;
    GroupBox13: TGroupBox;
    grd_zdhis: TDBGrid;
    GroupBox12: TGroupBox;
    Label1: TLabel;
    lab_bh: TLabel;
    Label3: TLabel;
    Label55: TLabel;
    lab_name: TLabel;
    lab_sex: TLabel;
    SideBarStoreItem5: TdxStoredSideItem;
    GroupBox8: TGroupBox;
    mem_jkzd: TMemo;
    Panel9: TPanel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lbrlx: TLabel;
    edt_jkbh: TEdit;
    edt_jkxm: TEdit;
    cbb_jkxb: TComboBox;
    edt_jknl: TEdit;
    edt_jkdw: TEdit;
    edt_jkzz: TEdit;
    RadioGroup1: TRadioGroup;
    rb_mzh: TRadioButton;
    rb_zyh: TRadioButton;
    edt_jkzyh: TEdit;
    GroupBox7: TGroupBox;
    Label52: TLabel;
    edt_brbh: TEdit;
    bbt_xzbr: TBitBtn;
    bbt_bcbr: TBitBtn;
    bbtn_cfkj: TBitBtn;
    bbt_dybr: TBitBtn;
    Panel10: TPanel;
    Label7: TLabel;
    mem_yp: TMemo;
    Label19: TLabel;
    dtp_jkzdrq: TDateTimePicker;
    Label20: TLabel;
    cbb_jkzdys: TComboBox;
    bbtn_newzld: TBitBtn;
    bbtn_savezld: TBitBtn;
    bbt_dyzl: TBitBtn;
    Panel11: TPanel;
    sg_cf: TStringGrid;
    Panel12: TPanel;
    Label16: TLabel;
    cbb_jkzlpc: TComboBox;
    Label17: TLabel;
    edt_jkzlcs: TEdit;
    Label18: TLabel;
    Label15: TLabel;
    edt_cf: TEdit;
    sb_zlxmlb: TSpeedButton;
    Label14: TLabel;
    Label21: TLabel;
    edt_jksfje: TEdit;
    q_zdhis: TADOQuery;
    ds_zdhis: TDataSource;
    lab_zdid: TLabel;
    rb_mz: TRadioButton;
    rb_zx: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure bbt_dwClick(Sender: TObject);
    procedure edt_jkzyhKeyPress(Sender: TObject; var Key: Char);
    procedure bbt_xzbrClick(Sender: TObject);
    procedure edt_jkxmKeyPress(Sender: TObject; var Key: Char);
    procedure cbb_jkxbKeyPress(Sender: TObject; var Key: Char);
    procedure edt_jknlKeyPress(Sender: TObject; var Key: Char);
    procedure edt_jkdwKeyPress(Sender: TObject; var Key: Char);
    procedure edt_jkzzKeyPress(Sender: TObject; var Key: Char);
    procedure mem_jkzdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mem_jkcfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_jkzlpcKeyPress(Sender: TObject; var Key: Char);
    procedure edt_jkzlcsKeyPress(Sender: TObject; var Key: Char);
    procedure dtp_jkzdrqKeyPress(Sender: TObject; var Key: Char);
    procedure cbb_jkzdysKeyPress(Sender: TObject; var Key: Char);
    procedure edt_jksfjeKeyPress(Sender: TObject; var Key: Char);
    procedure bbt_bcbrClick(Sender: TObject);
    procedure cbb_jkzlpcEnter(Sender: TObject);
    procedure cbb_jkzdysEnter(Sender: TObject);
    procedure bbt_dybrClick(Sender: TObject);
    procedure bbt_dyzlClick(Sender: TObject);
    procedure edt_zlzyhKeyPress(Sender: TObject; var Key: Char);
    procedure edt_zlbhKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure cbb_zlzlysEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cbb_ysEnter(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure cbb_zlsEnter(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure edt_cfKeyPress(Sender: TObject; var Key: Char);
    procedure sb_zlxmlbClick(Sender: TObject);
    procedure sg_cfKeyPress(Sender: TObject; var Key: Char);
    procedure edt_cfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mem_ypKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_brbhKeyPress(Sender: TObject; var Key: Char);
    procedure edt_jkbhKeyPress(Sender: TObject; var Key: Char);
    procedure cbb_zlxmSelect(Sender: TObject);
    procedure gbClick(Sender: TObject);
    procedure edt_dxmmcKeyPress(Sender: TObject; var Key: Char);
    procedure N7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ts_xgjbxxShow(Sender: TObject);
    procedure edt_xgbrbhKeyPress(Sender: TObject; var Key: Char);
    procedure btn_xgjbxxClick(Sender: TObject);
    procedure dxfColorButton1Click(Sender: TObject);
    procedure SideBarStoreItem2Click(Sender: TObject;
      Item: TdxSideBarItem);
    procedure SideBarStoreItem1Click(Sender: TObject;
      Item: TdxSideBarItem);
    procedure SideBarStoreItem3Click(Sender: TObject;
      Item: TdxSideBarItem);
    procedure SideBarStoreItem4Click(Sender: TObject;
      Item: TdxSideBarItem);
    procedure FormResize(Sender: TObject);
    procedure bbtn_cfkjClick(Sender: TObject);
    procedure bbtn_savezldClick(Sender: TObject);
    procedure SideBarStoreItem5Click(Sender: TObject;
      Item: TdxSideBarItem);
    procedure grd_zdhisCellClick(Column: TColumn);
    procedure bbtn_newzldClick(Sender: TObject);
  private
    cfxz_bz,lscfxz_bz:integer;   //处方新增标志（0:未点击过新增,1:点击过新增按钮)；历史处方选择标志（0：未选择，1：选择).
//    procedure init_zl_face(Sender: TObject);//初始化治疗界面
//    procedure init_jk_face(Sender: TObject);//初始化建卡界面
//    procedure init_cx_face(Sender: TObject);//初始化查询界面
    procedure clear_zl_face(Sender: TObject);
    procedure clear_jk_face(sender: Tobject);
    procedure loadbrmx(zdid:integer);//根据zdid装载病人明细
    function loadzlmx(zdid:integer;xmmc:string):boolean;//装载治疗明细记录
    procedure sczlmx(zdid:integer);  //生成治疗明细记录
    procedure xscfmxt;//显示处方明细的头
    procedure strtogrid(str1,str2,str3,str4:string); //将字符串入到stringgrid中
    procedure xszje;//将grid中的金额相加得出总金额
    procedure gridtosql(zdid:integer);//将grid中的数据存入数据库中
    procedure sclszljl(zdid:integer);//删除保存过但是没有治疗的处方项目对应的治疗流水记录
    procedure wczlhsxjm(brbh:string);//完成治疗后刷新界面
    procedure show_hz_zlxx(bh:string;name:string;sex:string);  //进入治疗界面显示患者的治疗信息。
    procedure show_zhenduan_history(jkbh:string);     //显示指定患者的诊断历史
    procedure clear_grid_content;//清除处方grid中的内容
    procedure show_yzpc;  //显示医嘱频次；
    procedure show_yslb; //显示医生列表；
  public
    { Public declarations }
end;

var
  frm_main: Tfrm_main;

implementation

uses udljm, usjmk, uxmsz;

{$R *.dfm}
procedure Tfrm_main.gridtosql(zdid:integer);
var
  gridrow,i,sl:integer;
  xmmc,xmdw,sxmmc,ss:string;
  xmdj,xmje:real;
begin
  gridrow:=sg_cf.RowCount ;
  if gridrow<=1 then exit;
  sxmmc:='';
  for i:=1 to gridrow-1 do
  begin
    xmmc:=sg_cf.Cells[1,i];
    sxmmc:=sxmmc+#39+xmmc+#39+',';
    xmdw:='次';
    xmdj:=strtofloat(sg_cf.cells[3,i]);
    xmje:=strtofloat(sg_cf.Cells[4,i]);
    sl:=strtoint(sg_cf.Cells[2,i]);
    if sl<=0 then continue;
    qf.Close;
    qf.sql.clear;
    qf.sql.add('select 1 from kf_brcfmxk where xmmc=:mc and xmdj=:dj and sfje=:je and zdid=:aid ');
    qf.Parameters.ParamByName('mc').Value :=xmmc;
    qf.Parameters.ParamByName('dj').Value :=xmdj;
    qf.Parameters.ParamByName('je').Value :=xmje;
    qf.parameters.parambyname('aid').value :=zdid;
    qf.Open;
    if qf.RecordCount >0 then continue;     //当有相同处方明细记录的时候 跳过
    qf.Close;     //不同的时候插
    qf.sql.Clear;
    qf.SQL.add('insert into kf_brcfmxk (zdid,xmid,xmmc,xmdw,xmdj,xmsl,sfje,jlzt) values(:zdid,:xmid,:xmmc,:xmdw,:xmdj,:xmsl,:sfje,:jlzt)');
    qf.Parameters.ParamByName('zdid').Value :=zdid;
    qf.Parameters.ParamByName('xmid').Value :='.18';
    qf.Parameters.ParamByName('xmmc').Value :=xmmc;
    qf.Parameters.ParamByName('xmdw').Value :=xmdw;
    qf.Parameters.ParamByName('xmdj').Value :=xmdj;
    qf.Parameters.ParamByName('xmsl').Value :=sl;
    qf.Parameters.ParamByName('sfje').Value :=xmje;
    qf.Parameters.ParamByName('jlzt').Value :=i;
    qf.ExecSQL;
  end;
  if sxmmc<>'' then
  begin
//    showmessage(copy(sxmmc,length(sxmmc),1));
    if (copy(sxmmc,length(sxmmc),1)=',') then ss:=copy(sxmmc,1,length(sxmmc)-1);
    qf.Close;
    qf.sql.Clear;
    qf.sql.add('delete from kf_brcfmxk where xmmc not in('+ss+') and zdid=:aid');
    qf.Parameters.ParamByName('aid').Value :=zdid;
    qf.ExecSQL;
  end;
end;

procedure Tfrm_main.xscfmxt;
begin
  sg_cf.ColWidths[0] :=18;
  sg_cf.ColWidths[1] :=142;
  sg_cf.ColWidths[2] :=36;
  sg_cf.ColWidths[3] :=56;
  sg_cf.ColWidths[4] :=72;
  sg_cf.Cells[0,0]:='';
  sg_cf.Cells[1,0]:='项目名称';
  sg_cf.Cells[2,0]:='数量';
  sg_cf.Cells[3,0]:='单价';
  sg_cf.Cells[4,0]:='金额';
  sg_cf.RowCount :=1;
end;

procedure Tfrm_main.strtogrid(str1,str2,str3,str4:string);
var
  gridrow:integer;
  str0:string;
begin
  gridrow :=sg_cf.RowCount;
  str0:=inttostr(gridrow);
  sg_cf.Cells[0,gridrow]:=str0;
  sg_cf.Cells[1,gridrow]:=str1;
  sg_cf.Cells[2,gridrow]:=str2;
  sg_cf.Cells[3,gridrow]:=str3;
  sg_cf.Cells[4,gridrow]:=str4;
  sg_cf.RowCount :=gridrow+1;
  xszje;
end;


procedure Tfrm_main.xszje;
var
  gridrows,i:integer;
  zje:real;
begin
  zje:=0;
  gridrows:=sg_cf.RowCount;
  if gridrows<=1 then begin
    edt_jksfje.text :=floattostr(zje);
    exit;
  end;
  for i:=gridrows-1 downto 1 do
  begin
    zje:= zje + strtofloat(sg_cf.Cells[4,i]);
  end;
  edt_jksfje.Text :=floattostr(zje);
end;

function Tfrm_main.loadzlmx(zdid:integer;xmmc:string):boolean;
var
  i,cflsh:integer;
begin
  gb.Items.Clear;
  result :=false;
  qf.close;
  qf.sql.clear;
  qf.sql.add('select cflsid from kf_brcfmxk where xmmc =:amc and zdid =:aid');
  qf.Parameters.ParamByName('amc').Value :=xmmc;
  qf.parameters.ParamByName('aid').Value :=zdid;
  qf.Open;
  if qf.RecordCount <=0 then begin label54.Caption :='label54';exit; end;
  cflsh:=qf.fieldbyname('cflsid').AsInteger;
  label54.Caption :=inttostr(cflsh);
  qf.Close;
  qf.SQL.Clear;  
  qf.SQL.add('select djc,wzbz,convert(datetime,zlrq,112) as zlrq from kf_zllsmxk where zdid=:aid and cfmxxh=:axh');
  qf.Parameters.ParamByName('aid').Value :=zdid;
  qf.Parameters.parambyname('axh').Value :=cflsh;
  qf.Prepared :=true;
  qf.Open;
  if qf.RecordCount >0 then
  begin
    for i:=0 to qf.RecordCount -1 do
    begin
      if qf.FieldByName('wzbz').AsInteger =1 then
        gb.Items.Add(inttostr(qf.fieldbyname('djc').AsInteger)+':'+formatdatetime('yyyy-mm-dd',qf.fieldbyname('zlrq').asdatetime) +'－已经治疗。')
      else
        gb.Items.Add(inttostr(qf.fieldbyname('djc').AsInteger)+':未治。');
        //+qf.fieldbyname('jhrqs').AsString);
      qf.Next;
    end;
    result :=true;
  end;
end;

procedure Tfrm_main.loadbrmx(zdid:integer);
begin
  qf.Close;
  qf.SQL.Clear;
  qf.sql.Add('select a.*,b.zdzz,b.cf,b.mzlx from kf_brxxk a join kf_brzdk b on a.brid=b.brid where b.zdid=:aid');
  qf.Parameters.ParamByName('aid').value :=zdid;
  qf.Open;
  edt_zlxm.Text :=qf.fieldbyname('xm').AsString;
  edt_zlxb.Text :=qf.fieldbyname('xb').AsString;
  edt_zlnl.Text :=qf.fieldbyname('nl').AsString;
  edt_zldw.Text :=qf.fieldbyname('dw').AsString;
  edt_zlzz.Text :=qf.fieldbyname('dz').AsString;
  edt_zlzd.Text :=qf.fieldbyname('zdzz').AsString;
//  edt_zlcf.Text :=qf.fieldbyname('cf').AsString;
  if (qf.fieldbyname('mzlx').AsString='m') then
    lb_mzlx.Caption :='门诊'
  else  if (qf.FieldByName('mzlx').AsString='z') then
    lb_mzlx.Caption :='住院'
    else lb_mzlx.Caption :='未明';
  //显示治疗项目
  cbb_zlxm.Clear;
  qf.Close;
  qf.sql.clear;
  qf.SQL.Add('select xmmc from kf_brcfmxk where zdid=:aid' );
  qf.Parameters.ParamByName('aid').Value :=zdid;
  qf.Open;
  if qf.RecordCount <=0 then  exit else begin
  qf.First;
    while not qf.Eof do
    begin
      cbb_zlxm.Items.Add(qf.fieldbyname('xmmc').AsString );
      qf.Next;
    end;
  end;
end;

procedure Tfrm_main.sclszljl(zdid:integer);
var
  qq:tadoquery;
  scf:string;
begin
  qq:=tadoquery.Create(self);
  qq.Connection :=dm.adocon;
  qq.Close;
  qq.SQL.clear;
  qq.SQL.Add('select cflsid from kf_brcfmxk where zdid=:aid');
  qq.Parameters.parambyname('aid').Value :=zdid;
  qq.Open;
  if qq.RecordCount <=0 then begin qq.Free; exit; end;
  qq.first ;
  while not qq.Eof do
  begin
    scf:=scf+inttostr(qq.fieldbyname('cflsid').AsInteger)+',';
    qq.Next;
  end;
  if copy(scf,length(scf),1)=',' then scf:=copy(scf,1,length(scf)-1);
  qf.Close;
  qf.SQL.clear;
  qf.sql.add('delete from kf_zllsmxk where cast(cfmxxh as char(10)) not in ('+scf+') and zdid=:aid');
  qf.Parameters.ParamByName('aid').Value :=zdid;
  qf.ExecSQL;
  qq.Free;
end;

procedure Tfrm_main.clear_zl_face(sender:Tobject);
begin
  edt_zlzyh.Clear;
  edt_zlbh.Clear;
  edt_zlxm.Clear;
  edt_zlxb.Clear;
  edt_zlnl.Clear;
  edt_zlcs.Clear;
  edt_zldw.Clear;
  edt_zlzz.Clear;
  edt_zlzd.Clear;
//  edt_zlcf.Clear;
  cbb_zlzlys.Clear;
  lb_mzlx.Caption :='';
  dtp_zlrq.Date :=now;
  edt_czry.Clear;
  gb.Items.clear;
  edt_czry.Text :=trim(frm_dl.edt_zgxm.Text);
end;

procedure Tfrm_main.clear_jk_face(sender:Tobject);
begin
  edt_brbh.Clear;
  edt_jkzyh.Clear;
  //edt_jkbh.Clear;
  edt_jkxm.Clear;
  cbb_jkxb.ItemIndex :=0;
  edt_jknl.Clear;
  edt_jkdw.Clear;
  edt_jkzz.Clear;
  mem_jkzd.Clear;
  //mem_jkcf.Clear;
 { cbb_jkzlpc.Text :='QD';
  edt_jkzlcs.Clear;
  dtp_jkzdrq.Date :=now;
  cbb_jkzdys.Clear;
  edt_jksfje.Text :='0';
  mem_yp.Lines.Clear;
  xscfmxt;
  }
end;

procedure Tfrm_main.sczlmx(zdid:integer);
var
  zdr,cf,sxmmc:string;
  zlcs,dqcs,i,lsid,icflsid,isl:integer;
  zdrq,jhrq:Tdatetime;
  zlpc:double;
  qd:tadoquery;
begin
  qd:=tadoquery.Create(self);
  qd.Connection :=dm.adocon;
  qf.Close;
  qf.sql.Clear;
  qf.SQL.Add('select 1 from kf_zllsk where brid=:aid');
  qf.Parameters.ParamByName('aid').value :=zdid;
  qf.open;
  if qf.RecordCount <=0 then
  begin
    qf.Close;
    qf.sql.Clear;
    qf.SQL.Add('select convert(datetime,zdrq,112) as zdrq,zdr,cf,zlcs,dqcs,zlpc '+
    'from kf_brzdk where sfjs=1 and zdid=:azdid');
    qf.Parameters.ParamByName('azdid').Value :=zdid;
    qf.open;
    zdrq:=qf.fieldbyname('zdrq').AsDateTime;
  //  if cbb_sxw.ItemIndex =1 then
  //  zdrq:=zdrq+0.25;    //如果选择下午则在诊断日期上加1/4天。
    zdr:=qf.fieldbyname('zdr').AsString;
    cf:=qf.fieldbyname('cf').AsString;
    zlcs:=qf.fieldbyname('zlcs').AsInteger;
    dqcs:=qf.fieldbyname('dqcs').AsInteger;
    zlpc:=qf.fieldbyname('zlpc').asfloat;
    if dqcs>zlcs then exit;
    for i:=0 to (zlcs-dqcs) do
    begin
      jhrq:=zdrq;
      qf.Close;
      qf.SQL.clear;
      qf.SQL.add('select max(lsid+1) as mlsid from kf_zllsk');
      qf.open;
      lsid :=qf.fieldbyname('mlsid').AsInteger;
      qf.Close;
      qf.sql.clear;
      qf.sql.add('insert into kf_zllsk (lsid,brid,jhrq,djc,czy,zlssgh,wcbz)'+
      ' values(:lsid,:brid,:jhrq,:djc,:czy,:zlssgh,:wcbz)');
      qf.Parameters.ParamByName('lsid').Value :=lsid;
      qf.Parameters.ParamByName('brid').Value :=zdid;
      qf.Parameters.ParamByName('jhrq').Value :=jhrq;
      qf.Parameters.ParamByName('djc').Value :=dqcs;
      qf.Parameters.ParamByName('czy').Value :='';
      qf.Parameters.ParamByName('zlssgh').Value :=zdr;
  //    qf.Parameters.ParamByName('zlrq').Value :='';
      qf.Parameters.ParamByName('wcbz').Value :=0;
      qf.Prepared :=true;
      qf.ExecSQL;
      dqcs:=dqcs+1 ;
      zdrq:=zdrq+zlpc;
    end;
  end;
  //生成按照处方项目的治疗流水明细
  qd.Close;
  qd.sql.Clear;
  qd.SQL.Add('select cflsid, xmmc, xmsl from kf_brcfmxk where zdid=:aid' );
  qd.Parameters.ParamByName('aid').Value :=zdid;
  qd.open;
  if qd.RecordCount <=0 then
  begin
    qd.Free;
    exit;
  end;
  qd.First;
  while not qd.Eof do
  begin
    sxmmc:=qd.fieldbyname('xmmc').AsString;
    isl:=qd.fieldbyname('xmsl').AsInteger;
    icflsid:=qd.fieldbyname('cflsid').AsInteger;
    if isl<=0 then begin qd.Free; exit; end;
    qf.Close;
    qf.SQL.clear;
    qf.sql.Add('select 1 from kf_zllsmxk where cfmxxh=:axh and zdid=:aid');
    qf.Parameters.ParamByName('axh').Value :=icflsid;
    qf.Parameters.ParamByName('aid').Value :=zdid;
    qf.Open;
    if qf.RecordCount >0 then begin qd.Next; continue; end;
    for i:=1 to isl do
    begin
      //
      qf.Close;
      qf.SQL.clear;
      qf.SQL.Add('insert into kf_zllsmxk (zdid,cfmxxh,djc,zlys,wzbz) values(:zdid,:xh,:djc,:ys,:wzbz)');
      qf.Parameters.ParamByName('zdid').Value :=zdid;
      qf.Parameters.ParamByName('xh').Value :=icflsid;
      qf.Parameters.ParamByName('djc').Value :=i;
      qf.Parameters.ParamByName('ys').Value :=trim(cbb_jkzdys.Text);
      qf.Parameters.ParamByName('wzbz').Value :=0;
      qf.ExecSQL;
    end;
    qd.Next;
  end;
end;

procedure Tfrm_main.wczlhsxjm(brbh:string);
var
  ibrbh,i,j:integer;
  sbrbh:string;
begin
  qf.Close;
  qf.sql.Clear;
  qf.sql.add('select bh from kf_brzdk where sfjs=1');
  qf.Open;
  if qf.RecordCount <=0 then
  begin
    messagebox(self.handle,'所有病人已经全部治疗完毕','治疗',mb_iconinformation);
    exit;
  end;
  ibrbh:=strtoint(brbh);
  qf.Close;
  qf.sql.Clear;
  qf.sql.add('select min(abs(cast(bh as int)-cast('+brbh+' as int))) as ii from kf_brzdk where sfjs=1 ');
//  qf.Parameters.ParamByName('brbh').Value :=brbh;
  qf.open;
  i:=qf.fieldbyname('ii').AsInteger;
  //先往下查找。
  j:=length(inttostr(ibrbh+i));
  sbrbh:=inttostr(ibrbh+i);
  while j<6 do
  begin
    sbrbh:='0'+sbrbh;
    j:=j+1;
  end;
  qf.Close;
  qf.SQL.clear;
  qf.sql.add('select 1 from kf_brzdk where bh=:abh');
  qf.Parameters.ParamByName('abh').Value :=sbrbh;
  qf.Open;
  if qf.RecordCount <=0 then
  begin
    //没有找到，则往上查找。
    j:=length(inttostr(ibrbh+i));
    sbrbh:=inttostr(ibrbh-i);
    while j<6 do
    begin
      sbrbh:='0'+sbrbh;
      j:=j+1;
    end;
  end;
  edt_zlbh.Text :=sbrbh;
  bbt_dw.Click;
end;

procedure Tfrm_main.show_zhenduan_history(jkbh:string);
begin
  q_zdhis.Close;
  q_zdhis.SQL.Clear;
  q_zdhis.SQL.Add('select convert(varchar(10),zdrq,112) as rq,* from kf_brzdk where brid='+jkbh);
  q_zdhis.Open;
  grd_zdhis.Columns[0].FieldName :='rq';
  grd_zdhis.Columns[1].FieldName :='zdr';
  grd_zdhis.Columns[2].FieldName :='sfje';
  grd_zdhis.Columns[0].Width :=80;
  grd_zdhis.Columns[1].Width :=80;
  grd_zdhis.Columns[2].Width :=80;
end;

procedure Tfrm_main.clear_grid_content;
begin
  sg_cf.RowCount :=1;
end;

procedure Tfrm_main.FormShow(Sender: TObject);
begin
  frm_main.Left :=0;
  frm_main.Top :=0;
  frm_dl.ShowModal;
  nb.PageIndex :=0;
  bbt_xzbr.Click;
  edt_brbh.Text :='';
  edt_cf.text :='';
  mem_yp.lines.clear;
  xscfmxt;//显示处方明细头
end;

procedure Tfrm_main.SideBarStoreItem2Click(Sender: TObject;
  Item: TdxSideBarItem);
begin
 //建卡功能显示
  nb.activepage :='jk';
  //bbt_xzbr.Click;
  tishi.Caption :='';
end;

procedure Tfrm_main.SideBarStoreItem5Click(Sender: TObject;
  Item: TdxSideBarItem);
begin
//显示处方界面
  bbtn_cfkj.Click;
end;

procedure Tfrm_main.SideBarStoreItem1Click(Sender: TObject;
  Item: TdxSideBarItem);
begin
//治疗功能选择
  nb.activepage :='zl';
  clear_zl_face(sender);
  tishi.Caption :='';
  q_lb.Close;
  q_lb.SQL.clear;
  q_lb.sql.add('select a.*,b.xm  from kf_brzdk a join kf_brxxk b on a.brid=b.brid where a.sfjs=1 order by a.zdid ');
  q_lb.Prepared :=true;
  q_lb.Open;
end;

procedure Tfrm_main.SideBarStoreItem3Click(Sender: TObject;
  Item: TdxSideBarItem);
begin
  //查询功能选择
  nb.activepage :='cx';
  tishi.Caption :='';
  pp_View.Reset;
  pprpt.CloseDataPipelines;
  ppline.Close;
  ppline.CloseDataSource :=true;
  ppdsg.Close;
  pagecontrol1.ActivePageIndex :=0;
  datetimepicker1.Date :=now-1;
  datetimepicker2.date :=now;
end;

procedure Tfrm_main.SideBarStoreItem4Click(Sender: TObject;
  Item: TdxSideBarItem);
begin
  //其它功能选择
  nb.ActivePage :='qt';
  tishi.Caption :='';
  pp_view.Reset;
end;

procedure Tfrm_main.BitBtn4Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure Tfrm_main.bbt_dwClick(Sender: TObject);
var
  zyh,zlbh:string;
  zdid,zlcs,sfjs:integer;
begin
  label54.Caption :='label54';
  gb.Items.Clear;
  zyh:=trim(edt_zlzyh.Text);
  zlbh:=trim(edt_zlbh.Text);
  if ((zyh='') and (zlbh='')) then exit;
  qf.Close;
  qf.SQL.clear;
  qf.SQL.Add('select * from kf_brzdk where bh=:abh');
  qf.parameters.ParamByName('abh').Value :=zlbh;
  qf.Prepared :=true;
  qf.Open;
  if qf.RecordCount <=0 then
  begin
    messagebox(self.handle,'没有找到病人！','治疗',MB_ICONERROR);
    edt_zlxm.Clear;
    edt_zlxb.Clear;
    edt_zlnl.Clear;
    edt_zlcs.Clear;
    edt_zlzz.Clear;
    edt_zldw.Clear;
    edt_zlzd.Clear;
    cbb_zlxm.Items.Clear;
    cbb_zlxm.Text :='';
    label53.Caption :='label53';
    exit;
  end;
//  if qf.RecordCount >1 then
//  begin
//    messagebox(self.Handle,'条件太宽泛，找到的病人记录不止一条！','治疗',MB_ICONERROR);
//    exit;
//  end;
//  brid:=qf.fieldbyname('brid').AsInteger;
  zdid:=qf.fieldbyname('zdid').AsInteger;
  zlcs:=qf.fieldbyname('zlcs').AsInteger;
  sfjs:=qf.FieldByName('sfjs').AsInteger;
  label53.Caption  :=inttostr(zdid);
  loadbrmx(zdid);
  edt_zlcs.Text :=inttostr(zlcs);
  if sfjs=0 then
  begin
    messagebox(self.Handle,'该病人的治疗已经全部完成！','治疗',MB_ICONERROR);
    exit;
  end;
  if dbgrid1.selectedfield.asstring=zlbh then exit;
  if dbgrid1.selectedfield.asstring<zlbh then
  begin
    while not q_lb.Eof do
    begin
      if q_lb.fieldbyname('zdid').AsInteger=zdid then break;
      q_lb.Next;
    end;
  end;
  if dbgrid1.selectedfield.asstring >zlbh then
  begin
    while not q_lb.bof do
    begin
      if q_lb.fieldbyname('zdid').asinteger=zdid then break;
      q_lb.Prior;
    end;
  end;
//  loadzlmx(zdid);

end;

procedure Tfrm_main.edt_jkzyhKeyPress(Sender: TObject; var Key: Char);
var
  zlblh:string;
  zd:integer;
begin
  if key=#13 then
  begin
  //从csey.this4中根据住院号或门诊号找到病人信息
     edt_jkxm.Text:='';
     cbb_jkxb.Text:='';
     edt_jknl.Text:='';
     lbrlx.Caption :='';
     zlblh:=trim(edt_jkzyh.text);
     if zlblh='' then exit;
     edt_brbh.Text :='';
    key:=#0;
    zd:=0;
    if rb_zyh.Checked then  //先检索住院病人
    begin
      qcsey.Close;
      qcsey.SQL.clear;
      qcsey.sql.Add('select hzxm,sex,birth from ZY_BRSYK where blh=:ablh and brzt<>9');
      qcsey.Parameters.ParamByName('ablh').Value :=zlblh;
      qcsey.Prepared :=true;
      qcsey.Open;
      if qcsey.RecordCount >0 then
      begin
        edt_jkxm.Text :=qcsey.fieldbyname('hzxm').AsString;
        cbb_jkxb.Text :=qcsey.fieldbyname('sex').AsString;
        edt_jknl.Text :=qcsey.fieldbyname('birth').AsString;
        edt_jkxm.SetFocus;
        lbrlx.Caption :='住院病人';
      end
      else zd:=zd+1;
    end;
    if rb_mzh.Checked then     //检索门诊病人
    begin
      qcsey.Close;
      qcsey.SQL.clear;
      qcsey.SQL.Add('select hzxm,sex,birth from SF_BRXXK where blh=:ablh');
      qcsey.Parameters.parambyname('ablh').Value :=zlblh;
      qcsey.Prepared :=true;
      qcsey.Open;
      if qcsey.RecordCount >0 then
      begin
        edt_jkxm.Text :=qcsey.fieldbyname('hzxm').AsString;
        cbb_jkxb.Text :=qcsey.fieldbyname('sex').AsString;
        edt_jknl.Text :=qcsey.fieldbyname('birth').AsString;
        edt_jkxm.SetFocus;
        lbrlx.Caption :='门诊病人';
      end
      else zd:=zd+1;
    end;
    if zd>=1 then
    begin
      messagebox(self.Handle,'没有找到病人信息！','建卡',MB_ICONERROR );
      edt_jkxm.SetFocus;
    end
    else
    begin
      qf.Close;
      qf.sql.clear;
      qf.sql.add('select brid,dz,dw from kf_brxxk where xm=:axm and xb=:axb and nl=:anl');
      qf.Parameters.ParamByName('axm').value :=trim(edt_jkxm.Text);
      qf.Parameters.ParamByName('axb').value :=trim(cbb_jkxb.Text);
      qf.Parameters.ParamByName('anl').value :=trim(edt_jknl.Text);
      qf.Open;
      if qf.RecordCount >0 then
      begin
        edt_jkdw.Text :=trim(qf.fieldbyname('dw').AsString);
        edt_jkzz.Text :=trim(qf.fieldbyname('dz').AsString);
        edt_brbh.text :=trim(inttostr(qf.fieldbyname('brid').asinteger));
      end;
    end;
  end;
end;

procedure Tfrm_main.bbt_xzbrClick(Sender: TObject);
var
  bh:integer;
begin
  clear_jk_face(sender);
  qf.Close;
  qf.SQL.clear;
  qf.SQL.add('select isnull( max(convert(int,bh)),0)  as mbh from kf_brzdk ');
  qf.prepared :=true;
  qf.open;
  bh:=qf.fieldbyname('mbh').AsInteger+1;
  edt_jkbh.Text :=format('%.*d',[6,bh]);
  edt_jkzyh.SetFocus;
end;

procedure Tfrm_main.edt_jkxmKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    cbb_jkxb.SetFocus;
  end;
end;

procedure Tfrm_main.cbb_jkxbKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    edt_jknl.SetFocus;
  end;
end;

procedure Tfrm_main.edt_jknlKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    edt_jkdw.SetFocus;
  end;

end;

procedure Tfrm_main.edt_jkdwKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    edt_jkzz.SetFocus;
  end;

end;

procedure Tfrm_main.edt_jkzzKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    bbt_bcbr.SetFocus;
  end;
end;

procedure Tfrm_main.mem_jkzdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=vk_return) and (ssctrl in shift) then
  begin
//    key:=#0;
   bbt_bcbr.SetFocus;
  end;
end;

procedure Tfrm_main.mem_jkcfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=vk_return) and (ssctrl in shift) then
  begin
//    key:=#0;
    cbb_jkzlpc.SetFocus;
  end;
end;

procedure Tfrm_main.cbb_jkzlpcKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    edt_jkzlcs.SetFocus;
  end;
end;

procedure Tfrm_main.edt_jkzlcsKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    edt_cf.SetFocus;
  end;
end;

procedure Tfrm_main.dtp_jkzdrqKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    cbb_jkzdys.SetFocus;
  end;
end;

procedure Tfrm_main.cbb_jkzdysKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    edt_jksfje.SetFocus;
  end;
end;

procedure Tfrm_main.edt_jksfjeKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    bbt_bcbr.SetFocus;
  end;
end;


procedure Tfrm_main.bbt_bcbrClick(Sender: TObject);
var
  zyh,bh,xm,xb,nl,dz,dw,zdzz:string;
  brid:integer;
begin
//保存记录到数据库中,然后根据条件生成治疗单据
  bh:=trim(edt_jkbh.Text);
  qf.Close;
  qf.sql.Clear;
  qf.sql.add('select 1 from kf_brzdk where bh=:abh and sfjs=0');
  qf.Parameters.parambyname('abh').Value :=bh;
  qf.Open;
  if qf.recordcount >0 then
  begin
    messagebox(self.Handle,'该病人已经全部治疗完成，不能保存记录！','警告',mb_iconinformation+mb_ok);
    exit;
  end;
  xm:=trim(edt_jkxm.Text);
  xb:=trim(cbb_jkxb.Text);
  if ((xm='')or(xb='')or(bh='')) then
  begin
    messagebox(self.Handle,'病人编号，姓名，性别，处方必须填写！','建卡',MB_ICONERROR );
    exit;
  end;
  zyh:=trim(edt_jkzyh.Text);
  nl:=trim(edt_jknl.Text);
  dz:=trim(edt_jkzz.Text);
  dw:=trim(edt_jkdw.Text);
  zdzz:=trim(mem_jkzd.Text);
  //建立病人基本信息
  qf.Close;
  qf.SQL.clear;
  qf.SQL.add('select brid from kf_brxxk where xm=:axm and xb=:axb and nl=:anl');
  qf.Parameters.ParamByName('axm').value :=xm;
  qf.Parameters.ParamByName('axb').Value :=xb;
  qf.Parameters.ParamByName('anl').Value :=nl;
  qf.Open;
  if qf.RecordCount >=1 then
  begin
    edt_brbh.Text :=inttostr(qf.fieldbyname('brid').AsInteger );
    //brid:=qf.fieldbyname('brid').asinteger;
  end
  else
  begin
    qf.Close;
    qf.sql.Clear;
    qf.SQL.Add('select max(brid+1) as mbrid from kf_brxxk');
    qf.Prepared :=true;
    qf.Open;
    brid :=qf.fieldbyname('mbrid').AsInteger;
    qf.Close;
    qf.SQL.clear;
    qf.sql.add('insert into kf_brxxk values(:brid,:xm,:xb,:nl,:dz,:dw)');
    qf.Parameters.ParamByName('brid').Value :=brid;
    qf.Parameters.ParamByName('xm').Value :=xm;
    qf.Parameters.ParamByName('xb').Value :=xb;
    qf.Parameters.ParamByName('nl').Value :=nl;
    qf.Parameters.ParamByName('dz').Value :=dz;
    qf.Parameters.ParamByName('dw').Value :=dw;
    qf.Prepared :=true;
    qf.ExecSQL;
    edt_brbh.Text :=inttostr(brid);
  end;
end;

procedure Tfrm_main.cbb_jkzlpcEnter(Sender: TObject);
begin
  show_yzpc;
end;

procedure Tfrm_main.show_yzpc;
begin
  qf.Close;
  qf.sql.Clear;
  qf.sql.Add('select pcmc from kf_zlpck');
  qf.open;
  cbb_jkzlpc.Clear;
  while not qf.Eof do
  begin
    cbb_jkzlpc.Items.Add(qf.fieldbyname('pcmc').AsString );
    qf.Next;
  end;
  cbb_jkzlpc.ItemIndex :=0;
end;

procedure Tfrm_main.cbb_jkzdysEnter(Sender: TObject);
begin
  show_yslb;
end;

procedure Tfrm_main.show_yslb;
begin
  qf.Close;
  qf.sql.Clear;
  qf.sql.Add('select xm from czryk where sscjxh=1');
  qf.open;
  cbb_jkzdys.Clear;
  while not qf.Eof do
  begin
    cbb_jkzdys.Items.Add(qf.fieldbyname('xm').AsString );
    qf.Next;
  end;
  cbb_jkzdys.ItemIndex :=0;
end;

procedure Tfrm_main.bbt_dybrClick(Sender: TObject);
var
  bh,dlry:string;
begin
  //打印病人卡片
  bh:=trim(edt_jkbh.Text);
  if bh='' then exit;
  qf.Close;
  qf.sql.clear;
  qf.sql.add('select a.xm,a.xb,a.nl,a.dz,a.dw,b.zyh,b.bh,b.zdrq,b.zdzz,b.cf,b.zdr,b.zlcs,'+
  'b.sfje from kf_brxxk a join kf_brzdk b on a.brid=b.brid where b.bh=:abh');
  qf.Parameters.parambyname('abh').Value :=bh;
  qf.Prepared :=true;
  qf.Open;
  dsrpt.DataSet :=qf;
  dlry:=trim(frm_dl.edt_zgdm.Text);
  pprpt.Template.FileName :='brkp.rtm';
  pprpt.Template.LoadFromFile;
  if dlry='00' then
  begin
    ppdsg.Showmodal;
  end
  else
  begin
    pprpt.Print;
  end;
end;

procedure Tfrm_main.bbt_dyzlClick(Sender: TObject);
var
  zdid,dlry:string;
  ds_cf:tdatasource;
  q_cf:tadoquery;
begin
//打印病人治疗单

  zdid:=trim(lab_zdid.Caption);
  if zdid='null' then exit;
  ds_cf:=tdatasource.Create(self);
  q_cf :=tadoquery.Create(self);
  q_cf.Connection :=dm.adocon;
  ds_cf.DataSet :=q_cf;
  q_cf.Close;
  q_cf.SQL.clear;
  q_cf.SQL.Add('select a.jlzt, left(a.xmmc,10) as xmmc,a.xmsl from kf_brcfmxk a,kf_brzdk b where a.zdid=b.zdid and b.zdid=:azdid');
  q_cf.Parameters.ParamByName('azdid').Value :=zdid;
  q_cf.Open;
  ppline_cf.DataSource :=ds_cf;
  
  qp.Close;
  qp.SQL.clear;
  qp.SQL.add('select a.xm,a.xb,a.nl,a.dz,a.dw,b.zyh,b.bh,b.zdrq,b.zdzz,b.cf,b.zdr,b.zlcs,'+
  'b.sfje from kf_brxxk a join kf_brzdk b on a.brid=b.brid where b.zdid=:azdid');
  qp.Parameters.parambyname('azdid').Value :=zdid;
  qp.Prepared :=true;
  qp.Open;
  qf.Close;
  qf.SQL.clear;
  qf.sql.add('select a.jhrq,a.djc,b.cf,b.bh,c.xm from kf_zllsk a'+
  ' join kf_brzdk b on a.brid=b.zdid join kf_brxxk c on b.brid=c.brid'+
  ' where b.zdid=:azdid and a.wcbz=0 order by a.lsid');
  qf.Parameters.ParamByName('azdid').Value :=zdid;
  qf.Prepared :=true;
  qf.Open;
  dlry:=trim(frm_dl.edt_zgdm.Text);
  dsrpt.DataSet :=qf;
  dlry:=trim(frm_dl.edt_zgdm.Text);
  if rb_zx.Checked then
    pprpt.Template.FileName :='brzld.rtm';
  if rb_mz.Checked then
    pprpt.Template.FileName :='brzld_mz.rtm';
  pprpt.Template.LoadFromFile;
  if dlry='00' then
  begin
    ppdsg.Showmodal;
  end
  else
  begin
    pprpt.Print;
  end;
end;

procedure Tfrm_main.edt_zlzyhKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    edt_zlbh.SetFocus;
  end;
end;

procedure Tfrm_main.edt_zlbhKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    bbt_dw.SetFocus;
  end;
end;

procedure Tfrm_main.DBGrid1CellClick(Column: TColumn);
var
  bh,zyh:string;
  zdid,zlcs,sfjs:integer;
begin
  bh:=trim(q_lb.fieldbyname('bh').AsString);
  zyh:=trim(q_lb.fieldbyname('zyh').asstring);
  zdid:=q_lb.fieldbyname('zdid').AsInteger;
  edt_zlzyh.Text :=zyh;
  edt_zlbh.Text :=bh;
//  bbt_dw.Click;
  label54.Caption :='label54';
  gb.Items.Clear;
  qf.Close;
  qf.SQL.clear;
  qf.SQL.Add('select * from kf_brzdk where zdid=:azdid');
  qf.parameters.ParamByName('azdid').Value :=zdid;
  qf.Prepared :=true;
  qf.Open;
  zlcs:=qf.fieldbyname('zlcs').AsInteger;
  sfjs:=qf.FieldByName('sfjs').AsInteger;
  label53.Caption  :=inttostr(zdid);
  loadbrmx(zdid);
  edt_zlcs.Text :=inttostr(zlcs);
  if sfjs=0 then
  begin
    messagebox(self.Handle,'该病人的治疗已经全部完成！','治疗',MB_ICONERROR);
    exit;
  end;

end;

procedure Tfrm_main.cbb_zlzlysEnter(Sender: TObject);
begin
  qf.Close;
  qf.SQL.Clear;
  qf.sql.add('select xm from czryk where sscjxh=1');
  qf.Prepared :=true;
  qf.Open;
  cbb_zlzlys.Clear;
  while not qf.eof do
  begin
    cbb_zlzlys.Items.Add(qf.fieldbyname('xm').AsString);
    qf.Next;
  end;
  cbb_zlzlys.ItemIndex :=0;
end;

procedure Tfrm_main.SpeedButton1Click(Sender: TObject);
var
  djc,zdid,cflsh:integer;
  bh,zlys,czy,xmmc,zlbh:string;
begin
//治疗按钮
  //在治疗流水明细库中写上治疗医师，治疗日期，完成标志
  //修改说明：2004-12-18根据用户要求将本来逐次治疗修改成可以一次全部治疗。
  //在原先界面上添加了cb_zlall勾选框用来分情况实现新要求
  if ((trim(label53.caption)='label53')or(trim(label54.caption)='label54')) then exit;
  zdid :=strtoint(trim(label53.caption));
  cflsh:=strtoint(trim(label54.caption));
  bh:=trim(q_lb.fieldbyname('bh').AsString);
  czy:=trim(edt_czry.Text);
  zlys:=trim(cbb_zlzlys.Text);
  zlbh:=trim(edt_zlbh.text);
  if zlys='' then
  begin
    messagebox(self.Handle,'请先选择治疗师！','治疗',MB_ICONERROR );
    exit;
  end;
  qf.Close;
  qf.sql.Clear;
  qf.sql.add('select 1 from kf_brzdk where sfjs=0 and zdid=:aid');
  qf.Parameters.ParamByName('aid').Value :=zdid;
  qf.Open;
  if qf.RecordCount >0 then
  begin
    messagebox(self.Handle,'该病人的治疗已经完成，治疗记录仅供参考！','治疗',MB_ICONERROR );
    exit;
  end;

  if cb_zlall.Checked then
  begin
    qf.close;
    qf.sql.clear;
    qf.sql.add('update kf_zllsmxk set czry=:ary,zlrq=:arq,wzbz=1 where cfmxxh=:axh');
    qf.parameters.parambyname('ary').value :=zlys;
    qf.parameters.parambyname('arq').value :=dtp_zlrq.date;
    qf.parameters.parambyname('axh').value :=cflsh;
    if qf.execsql>=0 then
    begin
      xmmc:=trim(cbb_zlxm.text);
      loadzlmx(zdid,xmmc);
      messagebox(self.handle,'该项目的治疗完成！','治疗',mb_iconinformation);
    end;
    qf.close;
    qf.sql.clear;
    qf.sql.add('select 1 from kf_zllsmxk where zdid=:aid and wzbz=0');
    qf.parameters.parambyname('aid').value :=zdid;
    qf.open;
    if qf.recordcount >0 then exit;
    qf.close;
    qf.sql.clear;
    qf.sql.add('update kf_brzdk set sfjs=0 where zdid=:aid');
    qf.parameters.parambyname('aid').value :=zdid;
    if qf.execsql >=0 then
    begin
      messagebox(self.handle,'病人的所有治疗全部完成！','治疗',mb_iconinformation);
      dbgrid1.DataSource.DataSet.Close;
      dbgrid1.DataSource.dataset.Open;
      wczlhsxjm(zlbh);
    end;
    exit;
  end;
  djc:=gb.ItemIndex+1;
  if djc=0 then begin messagebox(self.handle,'请选择相应的治疗次数！','治疗',mb_iconerror+mb_ok); exit; end;
  qf.Close;
  qf.sql.Clear;
  qf.sql.add('select 1 from kf_zllsmxk where zdid=:azdid and cfmxxh=:acfh and djc=:adjc and wzbz=1');
  qf.Parameters.parambyname('azdid').Value :=zdid;
  qf.Parameters.ParamByName('acfh').Value :=cflsh;
  qf.Parameters.ParamByName('adjc').Value :=djc;
  qf.Prepared :=true;
  qf.open;
  if qf.recordcount >0 then
  begin
    messagebox(self.Handle,'该次治疗已经完成，请选择没有完成的治疗！','治疗',MB_ICONERROR );
    exit;
  end;
  qf.Close;
  qf.SQL.clear;
//  qf.sql.Add('update kf_zllsk set wcbz=1,zlrq=:azlrq,zlssgh=:ays,czy=:aczy'+
//  ' where djc=:ajc and brid=:azdid');
  qf.sql.add('update kf_zllsmxk set wzbz=1,zlrq=:azlrq,czry=:aczry where djc=:adjc and zdid=:aid and cfmxxh=:axh');
  qf.Parameters.parambyname('adjc').Value :=djc;
  qf.Parameters.parambyname('azlrq').Value :=dtp_zlrq.Date;
  qf.Parameters.ParamByName('axh').Value :=cflsh;
  qf.Parameters.parambyname('aczry').Value :=zlys;
  qf.parameters.parambyname('aid').value :=zdid;
  qf.Prepared :=true;
  qf.ExecSQL;

  //在病人诊断库中写上当前次数，并根据条件判断写上是否结束标志。
  //在病人诊断库中(不需要)写上当前次数，只要根据条件判断写上是否结束标志。
  qf.Close;
  qf.sql.Clear;
//  qf.sql.Add('select zlcs from kf_brzdk where bh=:abh');
  qf.sql.add('select 1 from kf_zllsmxk where zdid=:aid and wzbz<>1');
  qf.Parameters.ParamByName('aid').Value :=zdid;
  qf.Prepared :=true;
  qf.Open;
  if qf.recordcount <=0 then
  begin
    qf.Close;
    qf.sql.Clear;
    qf.sql.Add('update kf_brzdk set sfjs=0 where zdid=:aid');
    qf.Parameters.parambyname('aid').Value :=zdid;
    qf.Prepared :=true;
    qf.ExecSQL;
  end;
  xmmc:=trim(cbb_zlxm.text);
  qf.close;
  qf.sql.clear;
  qf.sql.add('select 1 from  kf_brzdk where sfjs=0 and zdid=:aid');
  qf.parameters.parambyname('aid').value :=zdid;
  qf.Open;
  if qf.RecordCount >0 then
  begin
    messagebox(self.handle,'病人的所有治疗全部完成！','治疗',mb_iconinformation);
    dbgrid1.DataSource.DataSet.Close;
    dbgrid1.DataSource.dataset.Open;
    wczlhsxjm(zlbh);
  end
  else   loadzlmx(zdid,xmmc);

  //刷新界面
//  bbt_dw.Click;
  //使用上面的刷新并不合适，只要刷新明细项目即可

end;

procedure Tfrm_main.Button1Click(Sender: TObject);
var
  dlry:string;
  begdate,enddate :Tdatetime;
begin
  dlry:=trim(frm_dl.edt_zgdm.Text);
  begdate :=datetimepicker1.Date;
  enddate :=datetimepicker2.Date;

  qf.Close;
  qf.SQL.Clear;
  qf.sql.add('exec usp_tj_qjtjrc :a,:b,:c');
  qf.Parameters.parambyname('a').value :=begdate;
  qf.Parameters.parambyname('b').Value :=enddate;
  qf.Parameters.ParamByName('c').value :=trim(frm_dl.edt_zgxm.Text);
  qf.Open;
{  sp.Close;
  sp.Parameters.ParamByName('@begdate').Value :=begdate;
  sp.Parameters.ParamByName('@enddate').Value :=enddate;
  sp.Parameters.parambyname('@czy').Value :=trim(frm_dl.edt_zgxm.Text);;
  sp.ExecProc;
}
  pprpt.Reset;
  pprpt.CloseDataPipelines;
  pprpt.Template.FileName :='tj_zlrc.rtm';
  pprpt.Template.LoadFromFile;
  ppline.DataSource.DataSet :=qf;
  if dlry='00' then
  begin
    ppdsg.Showmodal;
    qf.close;
  end
  else
  begin
    pp_View.Reset;
    pprpt.DeviceType :='Screen';
    pprpt.PrintToDevices;
    qf.close;
//    tishi.Caption :='第'+inttostr(pprpt.page)+'页，共'+inttostr(pprpt.Pagecount)+'页。';
  end;
end;

procedure Tfrm_main.Button4Click(Sender: TObject);
var
  begdate,enddate:tdatetime;
  dlry,xmmc:string;
//  spm:Tadostoredproc;
begin
  begdate:=datetimepicker4.date;
  enddate:=datetimepicker3.Date;
  dlry:=trim(frm_dl.edt_zgdm.Text);
  xmmc:=trim(edt_dxmmc.Text);
  if xmmc='' then
  begin
    messagebox(self.Handle,'请输入单项目名称!','查询',MB_ICONERROR);
    exit;
  end;
  qf.close;
  qf.sql.clear;
  qf.SQL.Add('exec usp_tj_dxmtj :a,:b,:c,:d,:e');
  qf.Parameters.ParamByName('a').Value :=begdate;
  qf.parameters.parambyname('b').value :=enddate;
  qf.Parameters.ParamByName('c').value :=dlry;
  qf.parameters.ParamByName('d').Value :=xmmc;
  qf.Parameters.ParamByName('e').Value :=xmmc;
  qf.open;
  pprpt.Reset;
  pprpt.CloseDataPipelines;
  pprpt.Template.FileName :='tj_dxmtj.rtm';
  pprpt.Template.LoadFromFile;
  ppline.DataSource.DataSet :=qf;
  if dlry='00' then
  begin
    ppdsg.Close;
    ppdsg.Report.DataPipeline :=ppline;
    ppdsg.Showmodal;
    qf.close;
  end
  else
  begin
    pp_View.Reset;
    pprpt.DeviceType :='Screen';
    pprpt.PrintToDevices;
    qf.close;
  end;
end;

procedure Tfrm_main.cbb_ysEnter(Sender: TObject);
begin
  cbb_ys.Clear;
  qf.Close;
  qf.sql.Clear;
  qf.sql.add('select xm from czryk where sscjxh=1');
  qf.Prepared :=true;
  qf.Open;
  while not qf.Eof do
  begin
    cbb_ys.Items.Add(qf.fieldbyname('xm').AsString);
    qf.Next;
  end;
end;

procedure Tfrm_main.Button6Click(Sender: TObject);
var
  ysmc,dlry:string;
  begdate,enddate:tdatetime;
begin
  begdate:= datetimepicker6.Date;
  enddate:= datetimepicker5.Date;
  dlry:=trim(frm_dl.edt_zgdm.Text );
  ysmc:=trim(cbb_ys.Text);
  if ysmc='' then
  begin
    messagebox(self.Handle,'请先选择医师！','报表',MB_ICONERROR);
    exit;
  end;
  qf.Close;
  qf.sql.Clear;
  qf.sql.add('exec usp_tj_ysgzltj :a,:b,:c');
  qf.Parameters.ParamByName('a').value :=begdate;
  qf.Parameters.parambyname('b').Value :=enddate;
  qf.Parameters.parambyname('c').Value :=ysmc;
//  qf.Prepared :=true;
  qf.Open;
  pprpt.Reset;
  pprpt.CloseDataPipelines;
  pprpt.Template.FileName :='tj_ysgzltj.rtm';
  pprpt.Template.LoadFromFile;
  ppline.DataSource.dataset :=qf;
  if dlry='00' then
  begin
    ppdsg.close;
    ppdsg.Report.DataPipeline :=ppline;
    ppdsg.Showmodal;
    qf.close;
  end
  else
  begin
    pp_View.Reset;
    pprpt.DeviceType :='Screen';
    pprpt.PrintToDevices;
//    tishi.Caption :='第'+inttostr(pprpt.page)+'页，共'+inttostr(pprpt.Pagecount)+'页。';
    qf.close;
  end;
end;

procedure Tfrm_main.cbb_zlsEnter(Sender: TObject);
begin
  cbb_zls.Clear;
  qf.close;
  qf.SQL.clear;
  qf.SQL.add('select xm from czryk where sscjxh=1');
  qf.Prepared :=true;
  qf.open;
  while not qf.Eof do
  begin
    cbb_zls.Items.Add(qf.fieldbyname('xm').AsString );
    qf.Next;
  end;
end;

procedure Tfrm_main.Button8Click(Sender: TObject);
var
  zlsmc,dlry:string;
  begdate,enddate:tdatetime;
begin
  begdate:= datetimepicker8.Date;
  enddate:= datetimepicker7.Date;
  dlry:=trim(frm_dl.edt_zgdm.Text );
  zlsmc:=trim(cbb_zls.Text);
  if zlsmc='' then
  begin
    messagebox(self.Handle,'请先选择医师！','报表',MB_ICONERROR);
    exit;
  end;
  qf.Close;
  qf.sql.clear;
  qf.SQL.add('exec usp_tj_zlsgzltj :a,:b,:c');
  qf.Parameters.ParamByName('a').Value :=begdate;
  qf.Parameters.parambyname('b').Value :=enddate;
  qf.Parameters.parambyname('c').Value :=zlsmc;
  qf.Open;
  pprpt.Reset;
  pprpt.CloseDataPipelines;
  pprpt.Template.FileName :='tj_zlsgzltj.rtm';
  pprpt.Template.LoadFromFile;
  ppline.DataSource.dataset :=qf;
  if dlry='00' then
  begin
    ppdsg.close;
    ppdsg.report.datapipeline :=ppline;
    ppdsg.Showmodal;
    qf.close;
  end
  else
  begin
    pp_View.Reset;
    pprpt.DeviceType :='Screen';
    pprpt.PrintToDevices;
//    tishi.Caption :='第'+inttostr(pprpt.page)+'页，共'+inttostr(pprpt.Pagecount)+'页。';
    qf.close;
  end;
end;

procedure Tfrm_main.Button10Click(Sender: TObject);
var
  kbh,zlh,xm:string;
  dlry:string;
  qm:tadoquery;
  ds:tdatasource;
begin
  qm:=tadoquery.Create(self);
  ds:=tdatasource.Create(self);
  qm.Connection :=dm.adocon;
  ds.DataSet :=qm;
  dlry:=trim(frm_dl.edt_zgdm.Text );
  kbh:=trim(edt_zlkbh.Text);
  zlh:=trim(edt_cxzlh.Text);
  xm:=trim(edt_cxxm.Text);
  if ((kbh='')and(zlh='')and(xm='')) then
  begin
     messagebox(self.Handle,'请先输入需要查找的条件！','病人信息查询',MB_ICONERROR);
     exit;
  end;
  qm.Close;
  qm.sql.Clear;
  qm.sql.add('exec usp_cx_brxx_mx :a,:b,:c,:d');
  qm.Parameters.ParamByName('a').Value :=kbh;
  qm.Parameters.parambyname('b').value :=zlh;
  qm.parameters.ParamByName('c').Value :=xm;
  qm.parameters.ParamByName('d').Value :=dlry;
  qm.Prepared :=true;
  qm.Open;
  ppmline.DataSource :=ds;
  qf.Close;
  qf.SQL.Clear;
  qf.sql.Add('exec usp_cx_brxx :a,:b,:c,:d');
  qf.Parameters.ParamByName('a').Value :=kbh;
  qf.Parameters.parambyname('b').value :=zlh;
  qf.parameters.ParamByName('c').Value :=xm;
  qf.parameters.ParamByName('d').Value :=dlry;
  qf.Prepared :=true;
  qf.Open;
  pprpt.Reset;
  pprpt.CloseDataPipelines;
  pprpt.Template.FileName :='tj_cx_brxx.rtm';
  pprpt.Template.LoadFromFile;
  ppline.DataSource.dataset :=qf;
  if dlry='00' then
  begin
    ppdsg.close;
    ppdsg.report.datapipeline:=ppline;
    ppdsg.Showmodal;
    qf.close;
    qm.free;
  end
  else
  begin
    pp_View.Reset;
    pprpt.DeviceType :='Screen';
    pprpt.PrintToDevices;
    qf.close;
    qm.free;
  end;
end;

procedure Tfrm_main.PageControl1Change(Sender: TObject);
begin
    pp_View.Reset;
    pprpt.CloseDataPipelines;
    ppline.Close;
    ppline.CloseDataSource :=true;
    ppdsg.Close;
    n3.Click;
    tishi.Caption :='';
    qf.close;
    case pagecontrol1.ActivePageIndex  of
    1: begin
      end;
    2: begin
      //
      end;
    end;
end;

procedure Tfrm_main.N1Click(Sender: TObject);
var
  op:integer;
begin
  op :=pp_view.ZoomPercentage;
  pp_view.ZoomPercentage :=op+10;
end;

procedure Tfrm_main.N3Click(Sender: TObject);
begin
  pp_view.ZoomPercentage :=75;
end;

procedure Tfrm_main.N2Click(Sender: TObject);
var
  op:integer;
begin
  op :=pp_view.ZoomPercentage;
  pp_view.ZoomPercentage :=op-10;
end;

procedure Tfrm_main.N5Click(Sender: TObject);
begin
  pp_view.NextPage;
end;

procedure Tfrm_main.N6Click(Sender: TObject);
begin
  pp_view.PriorPage;
end;

procedure Tfrm_main.Button2Click(Sender: TObject);
begin
  pprpt.DeviceType :='Printer';
  pprpt.Print;
end;



procedure Tfrm_main.Button9Click(Sender: TObject);
begin
  sg_cf.RowCount :=sg_cf.RowCount +1;
end;

procedure Tfrm_main.edt_cfKeyPress(Sender: TObject; var Key: Char);
var
  str1,str2,str3,str4:string;
begin
  if key =#13 then
  begin
    key:=#0;
    if trim(edt_jkzlcs.Text)='' then
    begin
      messagebox(self.handle,'请先输入治疗次数，再录入治疗项目！','警告',mb_iconstop+mb_ok);
      exit;
    end;
    sb_zlxmlb.Click;
    if dm.q_ts.State=dsInactive then exit;
    if dm.q_ts.RecordCount >0 then
    begin
      str1:=dm.q_ts.FieldByName('名称').AsString ;
      str2:=trim(edt_jkzlcs.Text);
      str3:=dm.q_ts.FieldByName('单价').AsString ;
      str4:=floattostr(strtoint(str2)*strtofloat(str3));
      strtogrid(str1,str2,str3,str4);
    end;
    edt_cf.SelectAll;
  end;
end;

procedure Tfrm_main.sb_zlxmlbClick(Sender: TObject);
begin
  //用列表显示项目
    if assigned(frm_ts) then frm_ts.Free;
    frm_ts:=tfrm_ts.Create(frm_main);
    frm_ts.Position :=poOwnerFormCenter;
    frm_ts.edt_cztj.Text :=trim(edt_cf.Text);
    frm_ts.ShowModal;
end;

procedure Tfrm_main.sg_cfKeyPress(Sender: TObject; var Key: Char);
var
  recid,bh:string;
  gridcount,i,zdid,xmxh:integer;
  cfmc:string;
//  str1,str2,str3,str4:string;
begin
  if (key='d') or (key='D')then
  begin
    key:=#0;
    recid:=sg_cf.Cells[0,sg_cf.row];
    gridcount:=sg_cf.RowCount;
    if gridcount=1 then
    begin
      xszje;
      exit;
    end;
    if recid='' then exit;
    //需要判断病人的治疗记录是否已经发生，如果发生则不能删除
    cfmc:=sg_cf.Cells[1,sg_cf.Row];
    bh:=trim(edt_jkbh.Text);
    qf.Close;
    qf.sql.clear;
    qf.sql.add('select zdid from kf_brzdk where bh=:abh');
    qf.Parameters.ParamByName('abh').Value :=bh;
    qf.Open;
    if qf.RecordCount <=0 then
    begin
      if strtoint(recid)=gridcount-1 then //删除最后一个记录
      begin
        sg_cf.RowCount :=gridcount-1;
        xszje;
      end;
      if strtoint(recid)<gridcount-1 then //删除中间和第一条记录
      begin
        for i:=strtoint(recid) to gridcount-1 do
        begin
//        sg_cf.cells[0,strtoint(recid)]:=sg_cf.Cells[0,strtoint(recid)+1];
          sg_cf.cells[1,i]:=sg_cf.Cells[1,i+1];
          sg_cf.cells[2,i]:=sg_cf.Cells[2,i+1];
          sg_cf.cells[3,i]:=sg_cf.Cells[3,i+1];
          sg_cf.cells[4,i]:=sg_cf.Cells[4,i+1];
        end;
        sg_cf.rowcount :=gridcount-1;
        xszje;
      end;
      exit;
    end;
    zdid :=qf.fieldbyname('zdid').AsInteger;
    qf.close;
    qf.SQL.clear;
    qf.sql.add('select cflsid from kf_brcfmxk where zdid=:aid and xmmc=:amc');
    qf.Parameters.ParamByName('aid').Value :=zdid;
    qf.Parameters.parambyname('amc').Value :=cfmc;
    qf.Open;
    if qf.RecordCount <=0 then exit;
    xmxh:=qf.fieldbyname('cflsid').AsInteger;
    qf.Close;
    qf.sql.clear;
    qf.sql.Add('select 1 from kf_zllsmxk where zdid=:aid and cfmxxh=:axh and wzbz=1');
    qf.Parameters.ParamByName('aid').value :=zdid;
    qf.Parameters.ParamByName('axh').value :=xmxh;
    qf.Open;
    if qf.RecordCount >0 then
    begin
      messagebox(self.Handle,'想要删除的处方项目已经发生过治疗，不能删除！','错误',mb_iconstop);
      exit;
    end;

    if strtoint(recid)=gridcount-1 then //删除最后一个记录
    begin
      sg_cf.RowCount :=gridcount-1;
      xszje;
    end;
    if strtoint(recid)<gridcount-1 then //删除中间和第一条记录
    begin
      for i:=strtoint(recid) to gridcount-1 do
      begin
//        sg_cf.cells[0,strtoint(recid)]:=sg_cf.Cells[0,strtoint(recid)+1];
        sg_cf.cells[1,i]:=sg_cf.Cells[1,i+1];
        sg_cf.cells[2,i]:=sg_cf.Cells[2,i+1];
        sg_cf.cells[3,i]:=sg_cf.Cells[3,i+1];
        sg_cf.cells[4,i]:=sg_cf.Cells[4,i+1];
      end;
      sg_cf.rowcount :=gridcount-1;
      xszje;
    end;
  end;
end;

procedure Tfrm_main.edt_cfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=vk_return) and (ssctrl in shift) then
  begin
    mem_yp.SetFocus;
  end;
end;

procedure Tfrm_main.mem_ypKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=vk_return) and (ssctrl in shift) then
  begin
//    key:=#0;
    dtp_jkzdrq.SetFocus;
  end;
end;

procedure Tfrm_main.edt_brbhKeyPress(Sender: TObject; var Key: Char);
var
  brbh:integer;
begin
  if key=#13 then
  begin
    key:=#0;
    if trim(edt_brbh.text)='' then
    begin
      messagebox(self.Handle,'请输入病人编号，再按回车!','提示',mb_iconinformation);
      exit;
    end;
    brbh:=strtoint(edt_brbh.Text);
    qf.Close;
    qf.SQL.clear;
    qf.SQL.Add('select * from kf_brxxk where brid=:brbh');
    qf.Parameters.ParamByName('brbh').Value :=brbh;
    qf.Open;
    if qf.RecordCount <=0 then
    begin
      messagebox(self.Handle ,'没有找到病人基本信息！','警告',mb_iconstop);
      exit;
    end
    else
    begin
      edt_jkxm.Text :=qf.fieldbyname('xm').AsString;
      cbb_jkxb.Text :=qf.fieldbyname('xb').AsString;
      edt_jknl.Text :=qf.fieldbyname('nl').AsString;
      edt_jkdw.Text :=qf.fieldbyname('dw').AsString;
      edt_jkzz.Text :=qf.fieldbyname('dz').AsString;
    end;
  end;
end;

procedure Tfrm_main.edt_jkbhKeyPress(Sender: TObject; var Key: Char);
var
  jkbh:string;
  str1,str2,str3,str4:string;
begin
  if key=#13 then
  begin
    key:=#0;
    jkbh:=trim(edt_jkbh.Text);
    //清屏处理（包括处方明细）
    clear_jk_face(sender);
    if jkbh='' then  exit;
    qf.Close;
    qf.sql.clear;
    qf.sql.add('select sfjs from kf_brzdk where bh=:jkbh');
    qf.Parameters.ParamByName('jkbh').Value :=jkbh;
    qf.Open;
    if qf.RecordCount <=0 then
    begin
      messagebox(self.Handle,'没有找到相应的病人治疗信息！','警告',mb_iconinformation+mb_ok);
      exit;
    end;
    if qf.FieldByName('sfjs').AsInteger =0 then
    begin
      messagebox(self.Handle,'该病人的治疗已经全部完成，注意不能修改任何资料！','警告',mb_iconinformation+mb_ok);
    end;
    qf.Close;
    qf.sql.clear;
    qf.sql.add('select a.brid,a.xm,a.xb,a.nl,a.dz,a.dw,b.zyh,b.zdrq,b.zdzz,b.cf,b.zdr,'+
      'b.zlcs,b.sfje,b.czy,c.pcmc,isnull(b.mzlx,''n'') as mzlx '+
      'from kf_brxxk a,kf_brzdk b,kf_zlpck c where a.brid=b.brid and b.zlpc=c.zlpc and b.bh=:jkbh');
    qf.Parameters.ParamByName('jkbh').Value :=jkbh;
    qf.Open;
    //装载除处方明细以外的全部信息
    edt_brbh.Text :=qf.fieldbyname('brid').AsString;
    if qf.FieldByName('mzlx').AsString ='m' then rb_mzh.Checked :=true;
    if qf.FieldByName('mzlx').AsString ='z' then rb_zyh.Checked :=true;
    if qf.FieldByName('mzlx').AsString ='n' then begin rb_mzh.Checked :=false; rb_zyh.Checked :=false; end;
    edt_jkzyh.Text :=qf.fieldbyname('zyh').AsString;
    edt_jkxm.Text :=qf.fieldbyname('xm').AsString;
    cbb_jkxb.Text :=qf.fieldbyname('xb').AsString;
    edt_jknl.Text :=qf.fieldbyname('nl').AsString;
    edt_jkdw.Text :=qf.fieldbyname('dw').AsString;
    edt_jkzz.Text :=qf.fieldbyname('dz').AsString;
    mem_jkzd.Lines.Add(qf.fieldbyname('zdzz').AsString);
    cbb_jkzlpc.Text :=qf.FieldByName('pcmc').AsString;
    edt_jkzlcs.Text :=inttostr(qf.fieldbyname('zlcs').Asinteger);
    edt_jksfje.Text :=floattostr(qf.fieldbyname('sfje').AsCurrency);
    mem_yp.Lines.Add(qf.fieldbyname('cf').AsString);
    dtp_jkzdrq.Date :=qf.fieldbyname('zdrq').AsDateTime;
    cbb_jkzdys.Text :=qf.fieldbyname('zdr').AsString;
    //处理装载处方明细情况
    qf.close;
    qf.sql.clear;
    qf.sql.add('select b.xmmc,b.xmdw,b.xmsl,b.xmdj,b.sfje'+
      ' from kf_brcfmxk b,kf_brzdk a where a.zdid=b.zdid and a.bh=:jkbh');
    qf.Parameters.ParamByName('jkbh').Value :=jkbh;
    qf.Open;
    if qf.RecordCount <=0 then exit;
    qf.First;
    while not qf.Eof do
    begin
      str1:=qf.fieldbyname('xmmc').asstring;
      str2:=inttostr(qf.fieldbyname('xmsl').asinteger);
      str3:=floattostr(qf.fieldbyname('xmdj').AsFloat);
      str4:=floattostr(qf.fieldbyname('sfje').AsFloat);
      strtogrid(str1,str2,str3,str4);
      qf.Next;
    end;
  end;
end;

procedure Tfrm_main.cbb_zlxmSelect(Sender: TObject);
var
  zdid:integer;
  xmmc :string;
begin
  zdid :=strtoint(trim(label53.caption));
  xmmc:=trim(cbb_zlxm.Text);
  loadzlmx(zdid,xmmc);
end;

procedure Tfrm_main.gbClick(Sender: TObject);
var
  ndjc,zdid,cfh:integer;
begin
  //用来显示当前的记录状况即点击记录显示时间和治疗的医师时间等信息
  ndjc :=gb.ItemIndex +1;
  if ndjc=0 then exit;
  if ((trim(label53.Caption)='label53')or(trim(label54.Caption)='label54')) then exit;
  zdid :=strtoint(trim(label53.Caption));
  cfh:=strtoint(trim(label54.Caption));
  qf.Close;
  qf.sql.Clear;
  qf.sql.add('select zlys,czry,zlrq from kf_zllsmxk where zdid=:aid and cfmxxh=:axh and djc=:adjc and wzbz=1');
  qf.Parameters.ParamByName('aid').Value :=zdid;
  qf.Parameters.ParamByName('axh').Value :=cfh;
  qf.Parameters.ParamByName('adjc').Value :=ndjc;
  qf.Open;
  if qf.RecordCount >0 then
  begin
    cbb_zlzlys.Text :=qf.fieldbyname('czry').AsString;
    edt_czry.Text :=qf.fieldbyname('zlys').AsString;
    dtp_zlrq.DateTime:=qf.fieldbyname('zlrq').AsDateTime;
  end;
end;

procedure Tfrm_main.edt_dxmmcKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    if assigned(frm_ts) then frm_ts.Free;
    frm_ts:=tfrm_ts.Create(frm_main);
    frm_ts.Position :=poOwnerFormCenter;
    frm_ts.edt_cztj.Text :=trim(edt_dxmmc.Text);
    frm_ts.ShowModal;
    if dm.q_ts.State=dsInactive then exit;
    if dm.q_ts.RecordCount >0 then
    begin
      edt_dxmmc.Text :=dm.q_ts.FieldByName('名称').AsString ;
    end;
  end;
end;

procedure Tfrm_main.N7Click(Sender: TObject);
var
  cbh,s:string;
begin
  cbh:=dbgrid1.SelectedField.AsString;
  if cbh='' then exit;
  s:='是否需要结束卡号为"'+cbh+'"病人的治疗记录?';
  if messagebox(self.handle,pchar(s),'确认?',MB_ICONQUESTION +mb_yesno)= idno then exit;
  qf.Close;
  qf.sql.clear;
  qf.sql.add('update kf_brzdk set sfjs=0 where bh=:abh');
  qf.Parameters.ParamByName('abh').Value :=cbh;
  qf.ExecSQL;
  dbgrid1.DataSource.DataSet.Close;
  dbgrid1.DataSource.dataset.Open; 
end;

procedure Tfrm_main.FormCreate(Sender: TObject);
begin
  frm_main.Top :=0;
  frm_main.Left :=0;
  cfxz_bz:=0;
end;
//MessageDlg('这是由Gexpert生成测试用的提示！', mtWarning, [mbOK], 0);

//if MessageDlg('test it use gexpert', mtWarning, [mbOK,mbCancel], 0) = mrOk then 

procedure Tfrm_main.ts_xgjbxxShow(Sender: TObject);
begin
//清空界面
 edit1.Clear;
 edit2.Clear;
 edit3.Clear;
 edit4.Clear;
 edit5.Clear;
 edit6.clear;
 edit7.Clear;
// edit8.Clear;
 edit9.Clear;
 edit10.Clear;
 edt_xgbrbh.Clear;
 edt_xgbrbh.SetFocus;
end;

procedure Tfrm_main.edt_xgbrbhKeyPress(Sender: TObject; var Key: Char);
var
  chr_brbh:string;
begin
//查找病人基本信息
  if key=#13 then
  begin
    key:=#0;
    chr_brbh:=trim(edt_xgbrbh.Text);
    if chr_brbh='' then exit;
    qf.Close;
    qf.SQL.clear;
    qf.sql.add('select a.* from kf_brxxk a,kf_brzdk b where a.brid=b.brid and b.bh=:aid');
    qf.Parameters.ParamByName('aid').Value :=chr_brbh;
    qf.Open;
    if qf.RecordCount <=0 then
    begin
      messagebox(self.handle,'没有找到病人的基本信息，请检查！','修改病人基本信息',MB_iconinformation);
      exit;
    end;
    edit1.Text :=qf.fieldbyname('xm').AsString;
    edit6.Text :=qf.fieldbyname('xm').AsString;
    edit2.Text :=qf.fieldbyname('xb').AsString;
    if trim(edit2.Text)='男' then cbb_xgsex.ItemIndex :=0
    else cbb_xgsex.ItemIndex :=1;
    edit3.Text :=qf.fieldbyname('dz').AsString;
    edit10.Text :=edit3.Text;
    edit4.Text :=qf.fieldbyname('nl').AsString;
    edit7.Text :=edit4.Text ;
    edit5.Text :=qf.fieldbyname('dw').asstring;
    edit9.Text :=edit5.Text ;
  end;
end;

procedure Tfrm_main.btn_xgjbxxClick(Sender: TObject);
var
  chr_xgbrbh:string;
  sbrid:integer;
begin
  //修改病人基本信息
  chr_xgbrbh:=trim(edt_xgbrbh.Text);
  if chr_xgbrbh='' then
  begin
    messagebox(self.Handle,'请先输入病人编号，请检查!','修改病人基本信息',MB_iconinformation);
    exit;
  end;
  qf.Close;
  qf.SQL.clear;
  qf.sql.add('select brid from kf_brzdk where bh=:abh');
  qf.parameters.parambyname('abh').value :=chr_xgbrbh;
  qf.open;
  if qf.recordcount <=0 then exit;
  sbrid:=qf.fieldbyname('brid').asinteger;
  qf.close;
  qf.sql.clear;
  qf.sql.Add('update kf_brxxk set xm=:axm,xb=:axb,nl=:anl,dz=:adz,dw=:adw where brid=:aid');
//  qf.SQL.Add('update kf_brxxk set kf_brxxk.xm=:axm,kf_brxxk.xb=:axb,kf_brxxk.nl=:anl,'+
//             'kf_brxxk.dz=:adz,kf_brxxk.dw=:adw '+
//             'from kf_brxxk join kf_brzdk on kf_brxxk.brid=kf_brzdk.brid and kf_brzdk.bh=:aid');
  qf.Parameters.ParamByName('axm').Value :=trim(edit6.Text);
  qf.Parameters.ParamByName('axb').Value :=trim(cbb_xgsex.Text);
  qf.Parameters.ParamByName('anl').Value :=trim(edit7.Text);
  qf.Parameters.ParamByName('adz').Value :=trim(edit10.Text);
  qf.Parameters.ParamByName('adw').Value :=trim(edit9.Text);
  qf.Parameters.ParamByName('aid').Value :=sbrid;
  if qf.ExecSQL >=0 then
  begin
    messagebox(self.handle,'修改病人基本信息成功！','修改',mb_iconinformation);
    exit;
  end
  else messagebox(self.handle,'修改病人基本信息失败！','修改',mb_iconerror);
end;

procedure Tfrm_main.dxfColorButton1Click(Sender: TObject);
begin
//application.Terminate;
end;



procedure Tfrm_main.FormResize(Sender: TObject);
begin
  if nb.activepage='cx' then
  begin
     pp_view.PaintTo(self.Canvas,0,0);
  end;
end;

procedure Tfrm_main.bbtn_cfkjClick(Sender: TObject);
var
  jkbh:string;
begin
  jkbh:=trim(edt_brbh.Text);
  if (jkbh<>'') and (trim(edt_jkxm.Text)<>'') then
  begin
    show_hz_zlxx(jkbh,trim(edt_jkxm.Text),trim(cbb_jkxb.Text));
    nb.ActivePage :='cf';
    show_zhenduan_history(jkbh);
    show_yslb;
    show_yzpc;
    dtp_jkzdrq.DateTime :=now;
    cfxz_bz:=0;     //置处方新增标志为否
    lscfxz_bz:=0;    //置历史处方选择标志为否
    lab_zdid.Caption :='null';
  end
  else
  begin
    messagebox(self.handle,'请在建卡界面选择或新建患者！','编辑',mb_iconerror);
    exit;
  end;
end;

procedure Tfrm_main.show_hz_zlxx(bh:string;name:string;sex:string);
begin
   //显示患者的基本信息
   lab_bh.caption:=bh;
   lab_name.caption:=name;
   lab_sex.caption :=sex;
   //显示患者的历次治疗信息
end;

procedure Tfrm_main.bbtn_savezldClick(Sender: TObject);
var
  yp,zdr,czy,zlpcs,mzlx,bh,zdzz,zyh:string;
  zlcs,brid,zdid,cfjls:integer; //cfjls处方记录数
  sfje,zlpc:double;
  zdrq:Tdatetime;
  xz_or_fg:integer;//新增或者修改  0：覆盖 1：新增
begin
//保存或更新治疗单

{需要有个逻辑   lscfxz_bz历史处方选择标志  cfxz_bz处方新增标志
当选择过历史记录的时候，没有处方新增的情况，直接覆盖，
当选择过历史记录的时候，需要处方新增的情况，那么新增
当没有选择过历史记录的时候，直接新增
}
  if lscfxz_bz=1 then
  begin
    if cfxz_bz=0 then
    begin
      xz_or_fg:=0;
    end
    else xz_or_fg:=1;
  end
  else
  begin
    xz_or_fg:=1;
  end;
  bh:=trim(lab_bh.Caption);
  if bh='' then exit;
  yp:=trim(mem_yp.Text);
  zdr:=trim(cbb_jkzdys.Text);
  czy:=trim(frm_dl.edt_zgxm.Text);
  zlpcs:=trim(cbb_jkzlpc.Text);
  zlcs:=strtoint(trim(edt_jkzlcs.Text));
  sfje:=strtofloat(trim(edt_jksfje.Text));
  zdrq:=dtp_jkzdrq.Date;
  zdzz:=trim(mem_jkzd.lines.text);
  zyh:=trim(edt_jkzyh.Text);
  brid:=strtoint(edt_brbh.Text);
  if xz_or_fg=0 then
  begin
    //覆盖保存病人处方信息
      zdid :=q_zdhis.fieldbyname('zdid').AsInteger;
      //保存病人处方信息
      cfjls:=sg_cf.RowCount ;//cfjls>1
      if cfjls>=1 then
      gridtosql(zdid);
      //生成治疗流水记录
      sczlmx(zdid);
      //删除保存过但是没有治疗的处方项目对应的治疗流水记录
      //sclszljl(zdid);
      //added by fwq 2004.6.24 ---用来保存修改后的病人诊断信息 begin
      qf.Close;
      qf.sql.Clear;
      qf.sql.add('update kf_brzdk set zdzz=:azz,cf=:acf,sfje=:aje,zdrq=:azdrq,zdr=:azdr,zlcs=:azlcs where zdid=:azdid');
      qf.Parameters.ParamByName('azz').Value :=zdzz;
      qf.Parameters.ParamByName('acf').Value :=yp;
      qf.Parameters.ParamByName('aje').Value :=sfje;
      qf.Parameters.ParamByName('azdrq').Value :=zdrq;
      qf.Parameters.ParamByName('azdr').Value :=zdr;
      qf.Parameters.ParamByName('azlcs').Value :=zlcs;
      qf.Parameters.ParamByName('azdid').Value :=zdid;
      qf.ExecSQL;
      //added end
      show_zhenduan_history(inttostr(brid));
      lab_zdid.Caption :=inttostr(zdid);
      messagebox(self.Handle,'保存病人处方信息成功！','处方',MB_ICONINFORMATION);
      exit;
  end;
  //下面是新增
  qf.Close;
  qf.SQL.clear;
  qf.SQL.add('select zlpc from kf_zlpck where pcmc=:apcmc');
  qf.Parameters.ParamByName('apcmc').Value :=zlpcs;
  qf.Open;
  if qf.RecordCount <=0 then
  begin
      messagebox(self.Handle,'请选择治疗频次，或治疗频次设置不正确！','建卡',MB_ICONERROR );
      exit;
  end;
  zlpc:=qf.fieldbyname('zlpc').AsFloat;
  qf.Close;
  qf.SQL.Clear;
  qf.sql.add('select max(zdid+1) as mzdid from kf_brzdk');
  qf.Prepared :=true;
  qf.Open;
  zdid :=qf.fieldbyname('mzdid').AsInteger;
  //保存病人诊断信息
  mzlx :='';
  if rb_mzh.Checked  then mzlx:='m';
  if rb_zyh.Checked then mzlx:='z';
  qf.Close;
  qf.SQL.clear;
  qf.sql.add('insert into kf_brzdk values'+
  '(:zdid,:brid,:zyh,:bh,:zdrq,:zdzz,:cf,:zdr,:zlcs,:zlbz,:sfje,:czy,:sfjs,:dqcs,:zlpc,:mzlx)');
  qf.Parameters.ParamByName('zdid').Value :=zdid;
  qf.Parameters.ParamByName('brid').Value :=brid;
  qf.Parameters.ParamByName('zyh').Value :=zyh;
  qf.Parameters.ParamByName('bh').Value :=bh;
  qf.Parameters.ParamByName('zdrq').Value :=zdrq;
  qf.Parameters.ParamByName('zdzz').Value :=zdzz;
  qf.Parameters.ParamByName('cf').Value :=yp;
  qf.Parameters.ParamByName('zdr').Value :=zdr;
  qf.Parameters.ParamByName('zlcs').Value :=zlcs;
  qf.Parameters.ParamByName('zlbz').Value :='';
  qf.Parameters.ParamByName('sfje').Value :=sfje;
  qf.Parameters.ParamByName('czy').Value :=czy;
  qf.Parameters.ParamByName('sfjs').Value :=1;//没有结束
  qf.Parameters.ParamByName('dqcs').Value :=1;
  qf.Parameters.ParamByName('zlpc').Value :=zlpc;
  qf.Parameters.ParamByName('mzlx').Value :=mzlx;
  qf.Prepared :=true;
  qf.ExecSQL;
  //保存病人处方信息
  gridtosql(zdid);
  //生成治疗流水记录
  sczlmx(zdid);
  show_zhenduan_history(inttostr(brid));
  lscfxz_bz:=1;
  cfxz_bz:=0;
  lab_zdid.Caption :=inttostr(zdid);
  messagebox(self.Handle,'保存病人处方成功！','处方',MB_ICONINFORMATION);
end;

procedure Tfrm_main.grd_zdhisCellClick(Column: TColumn);
var
  bh,zlpc:string;
  mc,cs,dj,je,zdid:string;
begin
//显示本次治疗的明细内容，以及处方的明细内容。
  if q_zdhis.State=dsinactive then exit;
  clear_grid_content;
  bh:=trim(lab_bh.Caption);
  mem_jkzd.Text :=q_zdhis.fieldbyname('zdzz').AsString;
  zlpc:=q_zdhis.fieldbyname('zlpc').asstring;
  qf.Close;
  qf.SQL.Clear;
  qf.sql.Add('select pcmc from kf_zlpck where pcid='+zlpc);
  qf.open;
  cbb_jkzlpc.Text :=qf.fieldbyname('pcmc').AsString;
  edt_jkzlcs.Text :=inttostr(q_zdhis.fieldbyname('zlcs').asinteger);
  edt_jksfje.Text :=floattostr(q_zdhis.fieldbyname('sfje').AsFloat);
  mem_yp.Text :=q_zdhis.fieldbyname('cf').AsString;
  dtp_jkzdrq.DateTime :=q_zdhis.fieldbyname('zdrq').AsDateTime;
  cbb_jkzdys.Text :=q_zdhis.fieldbyname('zdr').AsString;
  zdid:=inttostr(q_zdhis.fieldbyname('zdid').asinteger);
  qf.Close;
  qf.SQL.Clear;
  qf.SQL.add('select a.* from kf_brcfmxk a,kf_brzdk b where a.zdid=b.zdid and b.brid='+bh+' and b.zdid='+zdid);
  qf.Open;
  qf.First;
  while not qf.Eof do
  begin
    mc:=qf.FieldByName('xmmc').AsString ;
    cs:=inttostr(qf.FieldByName('xmsl').Asinteger);
    dj:=floattostr(qf.FieldByName('xmdj').Asfloat) ;
    je:=floattostr(qf.FieldByName('sfje').Asfloat);
    strtogrid(mc,cs,dj,je);
    qf.Next;
  end;
  lscfxz_bz:=1;//历史处方已经被单击过。
  lab_zdid.Caption :=zdid;
end;

procedure Tfrm_main.bbtn_newzldClick(Sender: TObject);
begin
//新增加治疗单 （清除界面）
  edt_jksfje.Text :='0';
  sg_cf.RowCount :=1;
  mem_yp.Lines.Clear;
  dtp_jkzdrq.Datetime:=now;
  cbb_jkzdys.Text :='';
  cfxz_bz:=1;
end;

end.
