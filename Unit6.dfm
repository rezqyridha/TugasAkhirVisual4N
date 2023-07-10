object Form6: TForm6
  Left = 185
  Top = 153
  Width = 785
  Height = 540
  Caption = 'FORM CATATAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 312
    Top = 16
    Width = 135
    Height = 23
    Caption = 'FORM CATATAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 104
    Width = 56
    Height = 18
    Caption = 'ID Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 144
    Width = 92
    Height = 18
    Caption = 'ID Orang Tua'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 64
    Width = 52
    Height = 18
    Caption = 'Tanggal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 392
    Top = 64
    Width = 62
    Height = 18
    Caption = 'Semester'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 392
    Top = 104
    Width = 86
    Height = 18
    Caption = 'ID Wali Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 392
    Top = 144
    Width = 47
    Height = 18
    Caption = 'ID Poin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtsmtr: TEdit
    Left = 488
    Top = 64
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object edtidsiswa: TEdit
    Left = 176
    Top = 104
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 176
    Top = 64
    Width = 169
    Height = 21
    Date = 45117.291780601850000000
    Time = 45117.291780601850000000
    TabOrder = 2
  end
  object edtidwlkls: TEdit
    Left = 488
    Top = 104
    Width = 169
    Height = 21
    TabOrder = 3
  end
  object edtidpoin: TEdit
    Left = 488
    Top = 144
    Width = 169
    Height = 21
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 304
    Width = 689
    Height = 177
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnbaru: TButton
    Left = 32
    Top = 232
    Width = 97
    Height = 41
    Caption = 'Baru'
    TabOrder = 6
  end
  object btnsimpan: TButton
    Left = 160
    Top = 232
    Width = 99
    Height = 41
    Caption = 'Simpan'
    TabOrder = 7
  end
  object btnedit: TButton
    Left = 288
    Top = 232
    Width = 89
    Height = 41
    Caption = 'Edit'
    TabOrder = 8
  end
  object btnhps: TButton
    Left = 408
    Top = 232
    Width = 89
    Height = 41
    Caption = 'Hapus'
    TabOrder = 9
  end
  object btnbtl: TButton
    Left = 528
    Top = 232
    Width = 89
    Height = 41
    Caption = 'Batal'
    TabOrder = 10
  end
  object btnlpr: TButton
    Left = 648
    Top = 232
    Width = 89
    Height = 41
    Caption = 'Laporan'
    TabOrder = 11
  end
  object edtidortu: TEdit
    Left = 176
    Top = 144
    Width = 169
    Height = 21
    TabOrder = 12
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_ma_smpibanjarmasin'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Kuliah\VISUAL\UAS Visual 2\libmysql.dll'
    Left = 712
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from catatan')
    Params = <>
    Left = 712
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 712
    Top = 128
  end
end
