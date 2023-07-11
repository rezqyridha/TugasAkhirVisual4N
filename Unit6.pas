unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, ComCtrls,
  frxClass, frxDBSet;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    dtp1: TDateTimePicker;
    edt3: TEdit;
    edt5: TEdit;
    DBGrid1: TDBGrid;
    btnbaru: TButton;
    btnsimpan: TButton;
    btnedit: TButton;
    btnhps: TButton;
    btnbtl: TButton;
    btnlpr: TButton;
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    DataSource1: TDataSource;
    edt4: TEdit;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    ZQuery2: TZQuery;
    procedure posisiawal;
    procedure editclear;
    procedure editenable;
    procedure FormShow(Sender: TObject);
    procedure btnbaruClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhpsClick(Sender: TObject);
    procedure btnbtlClick(Sender: TObject);
    procedure btnlprClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id:string;

implementation

{$R *.dfm}

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.posisiawal;
begin
editclear;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
dtp1.Enabled:= False;

btnbaru.Enabled:= True;
btnsimpan.Enabled:= False;
btnedit.Enabled:= False;
btnhps.Enabled:= False;
btnbtl.Enabled:= False;
btnlpr.Enabled:= True;
end;

procedure TForm6.editclear;
begin
edt1.Text:='';
edt2.Text:='';
edt3.Text:='';
edt4.Text:='';
edt5.Text:='';
end;

procedure TForm6.editenable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
dtp1.Enabled:= True;
end;

procedure TForm6.btnbaruClick(Sender: TObject);
begin
editclear;
editenable;

btnbaru.Enabled:= False;
btnsimpan.Enabled:= True;
btnedit.Enabled:= False;
btnhps.Enabled:= False;
btnbtl.Enabled:= True;
btnlpr.Enabled:= True;
end;

procedure TForm6.btnsimpanClick(Sender: TObject);
begin
if edt1.Text='' then
  begin
    ShowMessage('SEMESTER BELUM DIISI DENGAN BENAR');
    end else
    if edt2.Text=''then
    begin
     ShowMessage('ID SISWA BELUM DIISI DENGAN BENAR');
    end else
    if edt3.text=''then
    begin
     ShowMessage('ID WALI KELAS BELUM DIISI DENGAN BENAR');
    end else
    if edt4.text=''then
    begin
    ShowMessage('ID WALI KELAS BELUM SESUAI');
    end else
    if edt5.Text='' then
    begin
     ShowMessage('ID POIN BELUM DIISI DENGAN BENAR');
    end else
  if Form6.zqry1.Locate('Semester',edt1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
 zqry1.SQL.Add('insert into catatan values(null,"'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from catatan');
 zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm6.btneditClick(Sender: TObject);
begin
if (edt1.Text= '')or(edt2.Text ='')or(edt3.Text= '')or(edt4.Text ='')or(edt5.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edt1.Text = zqry1.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update catatan set Semester= "'+edt1.Text+'",Id_siswa="'+edt2.Text+'",Id_walikelas="'+edt3.Text+'",Id_orgtua="'+edt4.Text+'",Id_poin="'+edt5.Text+'" where Id_catatan="'+Id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from catatan');
zqry1.Open;

posisiawal;
end;
end;

procedure TForm6.btnhpsClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from catatan where Id_catatan="'+Id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from catatan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end;

end;

procedure TForm6.btnbtlClick(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.btnlprClick(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[2].AsString;
edt2.Text:= zqry1.Fields[3].AsString;
edt3.Text:= zqry1.Fields[4].AsString;
edt4.Text:= zqry1.Fields[5].AsString;
edt5.Text:= zqry1.Fields[6].AsString;

editenable;

btnbaru.Enabled:= false;
btnsimpan.Enabled:= False;
btnedit.Enabled:= True;
btnhps.Enabled:= True;
btnbtl.Enabled:= True;
btnlpr.Enabled:= True;
end;

end.
