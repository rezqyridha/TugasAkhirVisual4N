unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    edtnmwlkls: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    cbbjrs: TComboBox;
    btnbaru: TButton;
    btnsimpan: TButton;
    btnedit: TButton;
    btnhps: TButton;
    btnbtl: TButton;
    btnlpr: TButton;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    edtket: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

end.
