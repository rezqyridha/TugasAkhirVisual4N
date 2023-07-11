unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    zqry1: TZQuery;
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    edt1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    cbb1: TComboBox;
    btnbaru: TButton;
    btnsimpan: TButton;
    btnedit: TButton;
    btnhps: TButton;
    btnbtl: TButton;
    btnlpr: TButton;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    edt2: TEdit;
    Label5: TLabel;
    cbb2: TComboBox;
    ZQuery2: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
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
  Form5: TForm5;
  id:String;

implementation

{$R *.dfm}

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.posisiawal;
begin
editclear;
edt1.Enabled:= False;
edt2.Enabled:= False;
cbb1.Enabled:= False;
cbb2.Enabled:= False;

btnbaru.Enabled:= True;
btnsimpan.Enabled:= False;
btnedit.Enabled:= False;
btnhps.Enabled:= False;
btnbtl.Enabled:= False;
btnlpr.Enabled:= True;
end;

procedure TForm5.editclear;
begin
edt1.Text:='';
edt2.Text:='';
cbb1.Text:='';
cbb2.Text:='';
end;

procedure TForm5.editenable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
cbb1.Enabled:= True;
cbb2.Enabled:= True;
end;

procedure TForm5.btnbaruClick(Sender: TObject);
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

procedure TForm5.btnsimpanClick(Sender: TObject);
begin
if edt1.Text='' then
  begin
    ShowMessage('ID SISWA BELUM DIISI DENGAN BENAR');
    end else
    if edt2.Text=''then
    begin
     ShowMessage('ID ORANG TUA BELUM DIISI DENGAN BENAR');
    end else
     if cbb1.Text='' then
    begin
     ShowMessage('STATUS HUBUNGAN ANAK BELUM DIISI DENGAN BENAR');
    end else
     if cbb2.Text='' then
    begin
     ShowMessage('KETERANGAN BELUM DIISI DENGAN BENAR');
    end else
  if Form5.zqry1.Locate('Id_siswa',edt1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
 zqry1.SQL.Add('insert into hubungan values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from hubungan');
 zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm5.btneditClick(Sender: TObject);
begin
if (edt1.Text= '')or(edt2.Text ='')or(cbb1.Text='')or(cbb2.Text='') then
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
zqry1.SQL.Add('Update hubungan set Id_siswa= "'+edt1.Text+'",Id_orgtua="'+edt2.Text+'" where Id_user="'+Id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from hubungan');
zqry1.Open;

posisiawal;
end;
end;

procedure TForm5.btnhpsClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from user where Id_hubungan="'+Id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from hubungan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end;
end;



procedure TForm5.btnbtlClick(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.btnlprClick(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
Id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[2].AsString;
cbb1.Text:= zqry1.Fields[3].AsString;
cbb2.Text:= zqry1.Fields[4].AsString;

editenable;

btnbaru.Enabled:= false;
btnsimpan.Enabled:= False;
btnedit.Enabled:= True;
btnhps.Enabled:= True;
btnbtl.Enabled:= True;
btnlpr.Enabled:= True;
end;

end.
