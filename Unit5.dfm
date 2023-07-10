object Form5: TForm5
  Left = 303
  Top = 259
  Width = 789
  Height = 540
  Caption = 'Form HUBUNGAN'
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
    Width = 154
    Height = 23
    Caption = 'FORM HUBUNGAN'
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
    Width = 66
    Height = 18
    Caption = 'ID SISWA'
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
  object Label4: TLabel
    Left = 376
    Top = 64
    Width = 104
    Height = 18
    Caption = 'ID ORANG TUA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 376
    Top = 104
    Width = 75
    Height = 18
    Caption = 'Keterangan'
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
  object cbbjrs: TComboBox
    Left = 176
    Top = 104
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = '---PILIH STATUS---'
  end
  object btnbaru: TButton
    Left = 32
    Top = 184
    Width = 97
    Height = 41
    Caption = 'Baru'
    TabOrder = 2
  end
  object btnsimpan: TButton
    Left = 160
    Top = 184
    Width = 99
    Height = 41
    Caption = 'Simpan'
    TabOrder = 3
  end
  object btnedit: TButton
    Left = 288
    Top = 184
    Width = 89
    Height = 41
    Caption = 'Edit'
    TabOrder = 4
  end
  object btnhps: TButton
    Left = 408
    Top = 184
    Width = 89
    Height = 41
    Caption = 'Hapus'
    TabOrder = 5
  end
  object btnbtl: TButton
    Left = 528
    Top = 184
    Width = 89
    Height = 41
    Caption = 'Batal'
    TabOrder = 6
  end
  object btnlpr: TButton
    Left = 648
    Top = 184
    Width = 89
    Height = 41
    Caption = 'Laporan'
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 256
    Width = 689
    Height = 177
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 520
    Top = 64
    Width = 169
    Height = 21
    TabOrder = 9
  end
  object edtket: TEdit
    Left = 520
    Top = 104
    Width = 169
    Height = 21
    TabOrder = 10
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from hubungan')
    Params = <>
    Left = 608
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 664
    Top = 16
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
end
