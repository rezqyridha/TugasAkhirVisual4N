object Form2: TForm2
  Left = 187
  Top = 184
  Width = 768
  Height = 540
  Caption = 'Form WALI KELAS'
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
    Width = 159
    Height = 23
    Caption = 'FORM WALI KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 64
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
  object Label3: TLabel
    Left = 32
    Top = 104
    Width = 67
    Height = 18
    Caption = 'Pendidikan'
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
  object Label5: TLabel
    Left = 32
    Top = 184
    Width = 89
    Height = 18
    Caption = 'Tanggal Lahir'
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
  object Label7: TLabel
    Left = 392
    Top = 104
    Width = 28
    Height = 18
    Caption = 'Telp'
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
    Width = 65
    Height = 18
    Caption = 'Wali Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtnmwlkls: TEdit
    Left = 176
    Top = 64
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object edtpnddkn: TEdit
    Left = 176
    Top = 104
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object cbbjk: TComboBox
    Left = 176
    Top = 144
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = '---PILIH JENIS KELAMIN---'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 176
    Top = 184
    Width = 169
    Height = 21
    Date = 45117.291780601850000000
    Time = 45117.291780601850000000
    TabOrder = 3
  end
  object edttelp: TEdit
    Left = 488
    Top = 104
    Width = 169
    Height = 21
    TabOrder = 4
  end
  object edtwlkls: TEdit
    Left = 488
    Top = 144
    Width = 169
    Height = 21
    TabOrder = 5
  end
  object cbbstts: TComboBox
    Left = 488
    Top = 72
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = '---PILIH STATUS---'
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 304
    Width = 689
    Height = 177
    DataSource = DataSource1
    TabOrder = 7
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
    TabOrder = 8
  end
  object btnsimpan: TButton
    Left = 160
    Top = 232
    Width = 99
    Height = 41
    Caption = 'Simpan'
    TabOrder = 9
  end
  object btnedit: TButton
    Left = 288
    Top = 232
    Width = 89
    Height = 41
    Caption = 'Edit'
    TabOrder = 10
  end
  object btnhps: TButton
    Left = 408
    Top = 232
    Width = 89
    Height = 41
    Caption = 'Hapus'
    TabOrder = 11
  end
  object btnbtl: TButton
    Left = 528
    Top = 232
    Width = 89
    Height = 41
    Caption = 'Batal'
    TabOrder = 12
  end
  object btnlpr: TButton
    Left = 648
    Top = 232
    Width = 89
    Height = 41
    Caption = 'Laporan'
    TabOrder = 13
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
      'select * from wali_kelas')
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
