unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt1: TEdit;
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
    cbb1: TComboBox;
    ZQuery2: TZQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure posisiawal;
    procedure editclear;
    procedure editenable;
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
  Form4: TForm4;
  id:String;

implementation

{$R *.dfm}

procedure TForm4.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.posisiawal;
begin
editclear;
edt1.Enabled:= False;
cbb1.Enabled:= False;

btnbaru.Enabled:= True;
btnsimpan.Enabled:= False;
btnedit.Enabled:= False;
btnhps.Enabled:= False;
btnbtl.Enabled:= False;
btnlpr.Enabled:= True;
end;

procedure TForm4.editclear;
begin
edt1.Text:='';
cbb1.Text:='';
end;

procedure TForm4.editenable;
begin
edt1.Enabled:= True;
cbb1.Enabled:= True;
end;

procedure TForm4.btnbaruClick(Sender: TObject);
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

procedure TForm4.btnsimpanClick(Sender: TObject);
begin
if edt1.Text='' then
  begin
    ShowMessage('NAMA KELAS BELUM DIISI DENGAN BENAR');
    end else
    if cbb1.Text=''then
    begin
     ShowMessage('Jurusan BELUM DIISI DENGAN BENAR');
    end else
     if Form4.ZQuery1.Locate('Nama_kelas',edt1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin
    ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('insert into kelas values(null,"'+edt1.Text+'","'+cbb1.Text+'")');
 ZQuery1.ExecSQL ;

 ZQuery1.SQL.Clear;
 ZQuery1.SQL.Add('select * from kelas');
 ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm4.btneditClick(Sender: TObject);
begin
if (edt1.Text='')or(cbb1.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edt1.Text = ZQuery1.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update kelas set Nama_kelas= "'+edt1.Text+'",Jurusan="'+cbb1.Text+'" where id_kelas="'+id+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kelas');
ZQuery1.Open;

posisiawal;
end;
end;

procedure TForm4.btnhpsClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from kelas where id_kelas="'+id+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end;
end;

procedure TForm4.btnbtlClick(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.btnlprClick(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
id:= ZQuery1.Fields[0].AsString;
edt1.Text:= ZQuery1.Fields[1].AsString;
cbb1.Text:= ZQuery1.Fields[2].AsString;

editenable;

btnbaru.Enabled:= false;
btnsimpan.Enabled:= False;
btnedit.Enabled:= True;
btnhps.Enabled:= True;
btnbtl.Enabled:= True;
btnlpr.Enabled:= True;
end;

end.
