unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, ComCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtnmwlkls: TEdit;
    edtpnddkn: TEdit;
    cbbjk: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edttelp: TEdit;
    edtwlkls: TEdit;
    cbbstts: TComboBox;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
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
  Form2: TForm2;

implementation

{$R *.dfm}

end.
