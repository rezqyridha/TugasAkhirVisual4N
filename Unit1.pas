unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, ComCtrls,
  frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtnis: TEdit;
    edtnisn: TEdit;
    edtnik: TEdit;
    edtnama: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    DateTimePicker1: TDateTimePicker;
    cbbjk: TComboBox;
    edtkls: TEdit;
    cbbjrs: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edtwlkls: TEdit;
    edtalmt: TEdit;
    edttelp: TEdit;
    cbbstts: TComboBox;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    btnbaru: TButton;
    btnsimpan: TButton;
    btnedit: TButton;
    btnhapus: TButton;
    btnbatal: TButton;
    btnlpr: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
