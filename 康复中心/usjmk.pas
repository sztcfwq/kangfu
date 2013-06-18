unit usjmk;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdm = class(TDataModule)
    adocon: TADOConnection;
    fq: TADOQuery;
    ds_ts: TDataSource;
    q_ts: TADOQuery;
    acon_this4: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}
//adocon.connectstring :Provider=SQLOLEDB.1;Password=sacseyhis;Persist Security Info=True;User ID=sa;Initial Catalog=yyother;Data Source=zx_db01
//ado_this4.connectstring :Provider=SQLOLEDB.1;Password=sacseyhis;Persist Security Info=True;User ID=sa;Initial Catalog=This4;Data Source=zx_db01
end.
