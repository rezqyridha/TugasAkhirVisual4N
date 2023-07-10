unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtnmwlkls: TEdit;
    Label3: TLabel;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    btnlpr: TButton;
    btnbtl: TButton;
    btnhps: TButton;
    btnedit: TButton;
    btnsimpan: TButton;
    btnbaru: TButton;
    DBGrid1: TDBGrid;
    cbbjrs: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

end.
