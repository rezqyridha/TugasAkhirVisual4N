unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, ComCtrls,
  frxClass, frxDBSet;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    edtnmortu: TEdit;
    edtpnddknortu: TEdit;
    dtp1: TDateTimePicker;
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
    Label11: TLabel;
    cbbortu: TComboBox;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    ZQuery2: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure posisiawal;
    procedure editclear;
    procedure editenable;
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
  Form3: TForm3;
  id:string;

implementation

{$R *.dfm}

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.posisiawal;
begin
editclear;
edtnmortu.Enabled:= False;
edttelp.Enabled:= False;
edtpnddknortu.Enabled:= False;
edtnik.Enabled:= False;
edtpkrjn.Enabled:= False;
edtalmat.Enabled:= False;
cbbstts.Enabled:= False;
cbbortu.Enabled:= False;
dtp1.Enabled:= False;

btnbaru.Enabled:= True;
btnsimpan.Enabled:= False;
btnedit.Enabled:= False;
btnhps.Enabled:= False;
btnbtl.Enabled:= False;
btnlpr.Enabled:= True;
end;

procedure TForm3.editclear;
begin
edtnmortu.Text:='';
edttelp.Text:='';
edtpnddknortu.Text:='';
edtnik.Text:='';
edtpkrjn.Text:='';
edtalmat.Text:='';
cbbstts.Text:='';
cbbortu.Text:='';

end;

procedure TForm3.editenable;
begin
edtnmortu.Enabled:= True;
edttelp.Enabled:= True;
edtpnddknortu.Enabled:= True;
edtnik.Enabled:= True;
edtpkrjn.Enabled:= True;
edtalmat.Enabled:= True;

cbbstts.Enabled:= True;
cbbortu.Enabled:= True;
dtp1.Enabled:= True;
end;

procedure TForm3.btnbaruClick(Sender: TObject);
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

procedure TForm3.btnsimpanClick(Sender: TObject);
begin
if edtnmortu.Text='' then
  begin
    ShowMessage('NAMA ORANG TUA BELUM DIISI DENGAN BENAR');
    end else
    if edttelp.Text=''then
    begin
     ShowMessage('TELP BELUM DIISI DENGAN BENAR');
    end else
    if edtpnddknortu.text=''then
    begin
     ShowMessage('PENDIDKAM BELUM DIISI DENGAN BENAR');
    end else
    if cbbstts.Text='' then
    begin
     ShowMessage('STATUS PEKERJAAN BELUM DIISI DENGAN BENAR');
    end else
    if edtpkrjn.text=''then
    begin
    ShowMessage('PEKERJAAN BELUM SESUAI');
    end else
    if edtnik.text=''then
    begin
    ShowMessage('NIK ATAU NOMOR KTP BELUM SESUAI');
    end else
    if edtalmat.text=''then
    begin
    ShowMessage('ALAMAT BELUM SESUAI');
    end else
    if cbbortu.Text='' then
    begin
     ShowMessage('STATUS ORANG TUA BELUM DIISI DENGAN BENAR');
    end else
  if Form3.ZQuery1.Locate('Telp',edttelp.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into orang_tua values(null,"'+edtnmortu.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+edttelp.Text+'","'+edtpnddknortu.Text+'","'+cbbstts.Text+'","'+edtpkrjn.Text+'","'+edtnik.Text+'","'+edtalmat.Text+'","'+cbbortu.Text+'")');
 ZQuery1.ExecSQL ;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from orang_tua');
 ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm3.btneditClick(Sender: TObject);
begin
if (edtnmortu.Text= '')or(edtpnddknortu.Text ='')or(edttelp.Text= '')or(cbbstts.Text='')or(edtnik.Text ='')or(edtalmat.Text ='')or(edtpkrjn.Text ='')or(cbbortu.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edtnmortu.Text = ZQuery1.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update orang_tua set Nama_orangtua= "'+edtnmortu.Text+'",Telp="'+edttelp.Text+'",Pendidikan_terakhir="'+edtpnddknortu.Text+'",Pekerjaan="'+edtpkrjn.Text+'" where Id_orgtua="'+Id+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from orang_tua');
ZQuery1.Open;

posisiawal;
end;

end;

procedure TForm3.btnhpsClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from wali_kelas where Id_orgtua="'+Id+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from orang_tua');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end;
end;

procedure TForm3.btnbtlClick(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
Id:= ZQuery1.Fields[0].AsString;
edtnmortu.Text:= ZQuery1.Fields[1].AsString;
edttelp.Text:= ZQuery1.Fields[3].AsString;
edtpnddknortu.Text:= ZQuery1.Fields[4].AsString;
cbbstts.Text:= ZQuery1.Fields[5].AsString;
edtpkrjn.Text:= ZQuery1.Fields[6].AsString;
edtnik.Text:= ZQuery1.Fields[7].AsString;
edtalmat.Text:= ZQuery1.Fields[8].AsString;
cbbortu.Text:= ZQuery1.Fields[9].AsString;

editenable;

btnbaru.Enabled:= false;
btnsimpan.Enabled:= False;
btnedit.Enabled:= True;
btnhps.Enabled:= True;
btnbtl.Enabled:= True;
btnlpr.Enabled:= True;
end;

procedure TForm3.btnlprClick(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
