unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm8 = class(TForm)
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
    Label1: TLabel;
    Label5: TLabel;
    edt1: TEdit;
    Label4: TLabel;
    edt2: TEdit;
    cbb1: TComboBox;
    Label9: TLabel;
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
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnlprClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  id:string;

implementation

{$R *.dfm}

procedure TForm8.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.posisiawal;
begin
editclear;
edt1.Enabled:= False;
edt2.Enabled:= False;
cbb1.Enabled:= False;

btnbaru.Enabled:= True;
btnsimpan.Enabled:= False;
btnedit.Enabled:= False;
btnhps.Enabled:= False;
btnbtl.Enabled:= False;
btnlpr.Enabled:= True;
end;

procedure TForm8.editclear;
begin
edt1.Text:='';
edt2.Text:='';
cbb1.Clear;
end;

procedure TForm8.editenable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
cbb1.Enabled:= True;
end;

procedure TForm8.btnbaruClick(Sender: TObject);
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

procedure TForm8.btnsimpanClick(Sender: TObject);
begin
 if edt1.Text='' then
    begin
     ShowMessage('POIN BELUM DIISI DENGAN BENAR');
    end else
    if edt2.Text='' then
  begin
    ShowMessage('BOBOT POIN BELUM DIISI DENGAN BENAR');
    end else
    if cbb1.Text='' then
    begin
     ShowMessage('TIPE POIN BELUM DIISI DENGAN BENAR');
    end else
     if Form8.zqry1.Locate('Nama_poin',edt1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
 zqry1.SQL.Add('insert into poin values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from poin');
 zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm8.btneditClick(Sender: TObject);
begin
if (edt1.Text='')or(edt2.Text ='')or(cbb1.Text='') then
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
zqry1.SQL.Add('Update poin set Bobot= "'+edt2.Text+'" where Id_poin="'+Id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from poin');
zqry1.Open;

posisiawal;
end;
end;



procedure TForm8.btnhpsClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from poin where Id_poin="'+Id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from poin');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end;
end;

procedure TForm8.btnbtlClick(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
begin
Id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[2].AsString;
cbb1.Text:= zqry1.Fields[3].AsString;

editenable;

btnbaru.Enabled:= false;
btnsimpan.Enabled:= False;
btnedit.Enabled:= True;
btnhps.Enabled:= True;
btnbtl.Enabled:= True;
btnlpr.Enabled:= True;
end;

procedure TForm8.btnlprClick(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
