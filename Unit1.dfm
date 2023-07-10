object Form1: TForm1
  Left = 501
  Top = 152
  Width = 846
  Height = 603
  Caption = 'FORM SISWA'
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
    Left = 280
    Top = 16
    Width = 126
    Height = 25
    Caption = 'FORM SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 80
    Width = 32
    Height = 18
    Caption = 'NIS*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 248
    Top = 80
    Width = 42
    Height = 18
    Caption = 'NISN*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 128
    Width = 79
    Height = 18
    Caption = 'Nama Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 472
    Top = 80
    Width = 33
    Height = 18
    Caption = 'NIK*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 32
    Top = 168
    Width = 87
    Height = 18
    Caption = 'Tanggal Lahir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 32
    Top = 208
    Width = 86
    Height = 18
    Caption = 'Jenis Kelamin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 32
    Top = 248
    Width = 87
    Height = 18
    Caption = 'Tingkat Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 32
    Top = 288
    Width = 50
    Height = 18
    Caption = 'Jurusan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 376
    Top = 128
    Width = 109
    Height = 18
    Caption = 'Nama Wali Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 376
    Top = 168
    Width = 45
    Height = 18
    Caption = 'Alamat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 376
    Top = 208
    Width = 51
    Height = 18
    Caption = 'No Telp'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 376
    Top = 248
    Width = 41
    Height = 18
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtnis: TEdit
    Left = 88
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtnisn: TEdit
    Left = 312
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtnik: TEdit
    Left = 528
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtnama: TEdit
    Left = 144
    Top = 128
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object DateTimePicker1: TDateTimePicker
    Left = 144
    Top = 168
    Width = 193
    Height = 21
    Date = 45116.943965277780000000
    Time = 45116.943965277780000000
    TabOrder = 4
  end
  object cbbjk: TComboBox
    Left = 144
    Top = 208
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'LAKI-LAKI'
      'PEREMPUAN')
  end
  object edtkls: TEdit
    Left = 144
    Top = 248
    Width = 193
    Height = 21
    TabOrder = 6
  end
  object cbbjrs: TComboBox
    Left = 144
    Top = 288
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = '---PILIH JURUSAN---'
    Items.Strings = (
      'IPA'
      'IPS'
      'PAI')
  end
  object edtwlkls: TEdit
    Left = 504
    Top = 128
    Width = 145
    Height = 21
    TabOrder = 8
  end
  object edtalmt: TEdit
    Left = 504
    Top = 168
    Width = 145
    Height = 21
    TabOrder = 9
  end
  object edttelp: TEdit
    Left = 504
    Top = 208
    Width = 145
    Height = 21
    TabOrder = 10
  end
  object cbbstts: TComboBox
    Left = 504
    Top = 248
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Text = '---PILIH STATUS---'
    Items.Strings = (
      'AKTIF '
      'TIDAK AKTIF')
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 408
    Width = 705
    Height = 120
    DataSource = DataSource1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnbaru: TButton
    Left = 32
    Top = 336
    Width = 75
    Height = 41
    Caption = 'Baru'
    TabOrder = 13
  end
  object btnsimpan: TButton
    Left = 144
    Top = 336
    Width = 75
    Height = 41
    Caption = 'Simpan'
    TabOrder = 14
  end
  object btnedit: TButton
    Left = 256
    Top = 336
    Width = 75
    Height = 41
    Caption = 'Edit'
    TabOrder = 15
  end
  object btnhapus: TButton
    Left = 368
    Top = 336
    Width = 75
    Height = 41
    Caption = 'Hapus'
    TabOrder = 16
  end
  object btnbatal: TButton
    Left = 480
    Top = 336
    Width = 75
    Height = 41
    Caption = 'Batal'
    TabOrder = 17
  end
  object btnlpr: TButton
    Left = 592
    Top = 336
    Width = 75
    Height = 41
    Caption = 'Laporan'
    TabOrder = 18
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
    Left = 792
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 792
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 792
    Top = 120
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 792
    Top = 176
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45117.287259502310000000
    ReportOptions.LastChange = 45117.287259502310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 792
    Top = 232
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
