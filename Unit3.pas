unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, ComCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtnmortu: TEdit;
    edtpnddknortu: TEdit;
    cbbjk: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edttelp: TEdit;
    edtpkrjn: TEdit;
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
    Label9: TLabel;
    edtalmat: TEdit;
    Label10: TLabel;
    edtnik: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
