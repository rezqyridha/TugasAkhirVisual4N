unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm7 = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label5: TLabel;
    edtnik: TEdit;
    Label4: TLabel;
    edtnama: TEdit;
    cbbstts: TComboBox;
    cbbjrs: TComboBox;
    Label9: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    btnbaru: TButton;
    btnsimpan: TButton;
    btnedit: TButton;
    btnhps: TButton;
    btnbtl: TButton;
    btnlpr: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

end.
