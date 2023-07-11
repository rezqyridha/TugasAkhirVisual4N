unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, ComCtrls,
  frxClass, frxDBSet;

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
    dtp1: TDateTimePicker;
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
    ZQuery2: TZQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure posisiawal;
    procedure editclear;
    procedure editenable;
    procedure FormShow(Sender: TObject);
    procedure btnbaruClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhpsClick(Sender: TObject);
    procedure btnbtlClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnlprClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  id:string;

implementation

{$R *.dfm}

procedure TForm2.editclear;
begin
edtnmwlkls.Text:='';
edtpnddkn.Text:='';
edttelp.Text:='';
edtwlkls.Text:='';
cbbjk.Text:='';
cbbstts.Text:='';

end;

procedure TForm2.posisiawal;
begin
editclear;
edtnmwlkls.Enabled:= False;
edtpnddkn.Enabled:= False;
edttelp.Enabled:= False;
edtwlkls.Enabled:= False;
cbbjk.Enabled:= False;
cbbstts.Enabled:= False;
dtp1.Enabled:= False;

btnbaru.Enabled:= True;
btnsimpan.Enabled:= False;
btnedit.Enabled:= False;
btnhps.Enabled:= False;
btnbtl.Enabled:= False;
btnlpr.Enabled:= True;
end;

procedure TForm2.editenable;
begin
edtnmwlkls.Enabled:= True;
edtpnddkn.Enabled:= True;
edttelp.Enabled:= True;
edtwlkls.Enabled:= True;
cbbjk.Enabled:= True;
cbbstts.Enabled:= True;
dtp1.Enabled:= True;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.btnbaruClick(Sender: TObject);
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

procedure TForm2.btnsimpanClick(Sender: TObject);
begin
if edtnmwlkls.Text='' then
  begin
    ShowMessage('NAMA WALI KELAS BELUM DIISI DENGAN BENAR');
    end else
    if edttelp.Text=''then
    begin
     ShowMessage('TELP BELUM DIISI DENGAN BENAR');
    end else
    if edtpnddkn.text=''then
    begin
     ShowMessage('PENDIDKAM BELUM DIISI DENGAN BENAR');
    end else
    if cbbstts.Text='' then
    begin
     ShowMessage('STATUS BELUM DIISI DENGAN BENAR');
    end else
    if edtwlkls.text=''then
    begin
    ShowMessage('WALI KELAS BELUM SESUAI');
    end else
    if cbbjk.Text='' then
    begin
     ShowMessage('JENIS KELAMIN BELUM DIISI DENGAN BENAR');
    end else
  if (ZQuery1.Locate('Nama_wali_kelas',edtnmwlkls.Text,[])) and (ZQuery1.Locate('Telp',edttelp.Text,[]))
then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into wali_kelas values(null,"'+edtnmwlkls.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+edttelp.Text+'","'+edtpnddkn.Text+'","'+cbbstts.Text+'","'+edtwlkls.Text+'","'+cbbjk.Text+'")');
 ZQuery1.ExecSQL ;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from wali_kelas');
 ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm2.btneditClick(Sender: TObject);
begin
if (edtnmwlkls.Text= '')or(edttelp.Text ='')or(edtpnddkn.Text= '')or(cbbstts.Text='')or(edtwlkls.Text ='')or(cbbjk.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edtnmwlkls.Text = ZQuery1.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update wali_kelas set Nama_wali_kelas= "'+edtnmwlkls.Text+'",Telp="'+edttelp.Text+'",Pendidikan="'+edtpnddkn.Text+'",Wali_kelas="'+edtwlkls.Text+'" where id_wali="'+id+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from wali_kelas');
ZQuery1.Open;

posisiawal;
end;
end;

procedure TForm2.btnhpsClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from wali_kelas where id_wali="'+id+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from wali_kelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end;
end;

procedure TForm2.btnbtlClick(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
id:= ZQuery1.Fields[0].AsString;
edtnmwlkls.Text:= ZQuery1.Fields[1].AsString;
edttelp.Text:= ZQuery1.Fields[3].AsString;
edtpnddkn.Text:= ZQuery1.Fields[4].AsString;
cbbstts.Text:= ZQuery1.Fields[5].AsString;
edtwlkls.Text:= ZQuery1.Fields[6].AsString;
cbbjk.Text:= ZQuery1.Fields[7].AsString;

editenable;

btnbaru.Enabled:= false;
btnsimpan.Enabled:= False;
btnedit.Enabled:= True;
btnhps.Enabled:= True;
btnbtl.Enabled:= True;
btnlpr.Enabled:= True;
end;

procedure TForm2.btnlprClick(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
