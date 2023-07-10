unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtsmtr: TEdit;
    edtidsiswa: TEdit;
    DateTimePicker1: TDateTimePicker;
    edtidwlkls: TEdit;
    edtidpoin: TEdit;
    DBGrid1: TDBGrid;
    btnbaru: TButton;
    btnsimpan: TButton;
    btnedit: TButton;
    btnhps: TButton;
    btnbtl: TButton;
    btnlpr: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    edtidortu: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

end.
