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
    dtp1: TDateTimePicker;
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
    ZQuery2: TZQuery;
    frxReport1: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure posisiawal;
    procedure editclear;
    procedure editenable;
    procedure btnbaruClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnbatalClick(Sender: TObject);
    procedure btnlprClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id:string;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.editclear;
begin
edtalmt.Text:='';
edtkls.Text:='';
edtnama.Text:='';
edtnik.Text:='';
edtnis.Text:='';
edttelp.Text:='';
edtwlkls.Text:='';
cbbjk.Text:='';


end;

procedure TForm1.posisiawal;
begin
editclear;
edtalmt.Enabled:= False;
edtkls.Enabled:= False;
edtnama.Enabled:= False;
edtnik.Enabled:= False;
edtnis.Enabled:= False;
edtnisn.Enabled:= False;
edttelp.Enabled:= False;
edtwlkls.Enabled:= False;
cbbjk.Enabled:= False;
cbbjrs.Enabled:= False;
cbbstts.Enabled:= False;
dtp1.Enabled:= False;

btnbaru.Enabled:= True;
btnsimpan.Enabled:= False;
btnedit.Enabled:= False;
btnhapus.Enabled:= False;
btnbatal.Enabled:= False;
btnlpr.Enabled:= True;
end;

procedure TForm1.editenable;
begin
edtalmt.Enabled:= True;
edtkls.Enabled:= True;
edtnama.Enabled:= True;
edtnik.Enabled:= True;
edtnis.Enabled:= True;
edtnisn.Enabled:= True;
edttelp.Enabled:= True;
edtwlkls.Enabled:= True;
cbbjk.Enabled:= True;
cbbjrs.Enabled:= True;
cbbstts.Enabled:= True;
dtp1.Enabled:= True;
end;

procedure TForm1.btnbaruClick(Sender: TObject);
begin
editclear;
editenable;

btnbaru.Enabled:= False;
btnsimpan.Enabled:= True;
btnedit.Enabled:= False;
btnhapus.Enabled:= False;
btnbatal.Enabled:= True;
btnlpr.Enabled:= True;
end;

procedure TForm1.btnsimpanClick(Sender: TObject);
begin
if edtnis.Text='' then
  begin
    ShowMessage('NIS BELUM DIISI DENGAN BENAR');
    end else
    if edtnisn.Text=''then
    begin
     ShowMessage('NISN BELUM DIISI DENGAN BENAR');
    end else
    if edtnama.text=''then
    begin
     ShowMessage('NAMA SISWA BELUM DIISI DENGAN BENAR');
    end else
    if edtnik.text=''then
    begin
    ShowMessage('NIK BELUM SESUAI');
    end else
    if cbbjk.Text='' then
    begin
     ShowMessage('JENIS KELAMIN BELUM DIISI DENGAN BENAR');
    end else
    if edtkls.text=''then
    begin
     ShowMessage('INPUTAN TINGKAT KELAS  BELUM SESUAI');
    end else
     if (cbbjrs.Text='')or(cbbjrs.Text='---PILIH JURUSAN---') then
    begin
     ShowMessage('JURUSAN BELUM DIISI DENGAN BENAR');
    end else
    if edtwlkls.Text='' then
     begin
     ShowMessage(' NAMA WALI KELAS BELUM SESUAI');
    end else
     if edtalmt.text=''then
    begin
     ShowMessage('INPUTAN ALAMAT BELUM SESUAI');
    end else
    if (edttelp.Text='-') then
      begin
     ShowMessage(' NO TELP BELUM SESUAI');
    end else
     if cbbstts.Text='' then
    begin
     ShowMessage('STATUS BELUM DIISI DENGAN BENAR');
    end else
  if (ZQuery1.Locate('Nis',edtnis.Text,[])) and (ZQuery1.Locate('Nisn',edtnisn.Text,[])) and (ZQuery1.Locate('Nik',edtnik.Text,[]))
  then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into siswa values(null,"'+edtnis.Text+'","'+edtnisn.Text+'","'+edtnama.Text+'","'+edtnik.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+cbbjk.Text+'","'+edtkls.Text+'","'+cbbjrs.Text+'","'+edtwlkls.Text+'","'+edtalmt.Text+'","'+edttelp.Text+'","'+cbbstts.Text+'")');
 ZQuery1.ExecSQL ;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from siswa');
 ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;


procedure TForm1.btneditClick(Sender: TObject);
begin
if (edtnis.Text= '')or (edtnisn.Text ='')or(edtnama.Text= '')or (edtnik.Text ='')or(cbbjk.Text='')or(edtkls.Text ='')or(cbbjrs.Text='')or(edtwlkls.Text='')or(edtalmt.Text='')or(edttelp.Text='')or(cbbstts.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edtnis.Text = ZQuery1.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update siswa set Nis= "'+edtnis.Text+'",Nisn="'+edtnisn.Text+'",Nama_Siswa="'+edtnama.Text+'",Nik="'+edtnik.Text+'" where Id_Siswa="'+Id+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from siswa');
ZQuery1.Open;

posisiawal;
end;
end;


procedure TForm1.btnhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from siswa where Id_Siswa="'+Id+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from siswa');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
Id:= ZQuery1.Fields[0].AsString;
edtnis.Text:= ZQuery1.Fields[1].AsString;
edtnisn.Text:= ZQuery1.Fields[2].AsString;
edtnama.Text:= ZQuery1.Fields[3].AsString;
edtnik.Text:= ZQuery1.Fields[4].AsString;
cbbjk.Text:= ZQuery1.Fields[6].AsString;
edtkls.Text:= ZQuery1.Fields[7].AsString;
cbbjrs.Text:= ZQuery1.Fields[8].AsString;
edtwlkls.Text:= ZQuery1.Fields[9].AsString;
edtalmt.Text:= ZQuery1.Fields[10].AsString;
edttelp.Text:= ZQuery1.Fields[11].AsString;
cbbstts.Text:= ZQuery1.Fields[12].AsString;

editenable;

btnbaru.Enabled:= false;
btnsimpan.Enabled:= False;
btnedit.Enabled:= True;
btnhapus.Enabled:= True;
btnbatal.Enabled:= True;
btnlpr.Enabled:= True;
end;

procedure TForm1.btnbatalClick(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.btnlprClick(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
