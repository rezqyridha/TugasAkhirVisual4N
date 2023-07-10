object Form8: TForm8
  Left = 230
  Top = 243
  Width = 816
  Height = 491
  Caption = 'FORM POIN'
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
    Width = 111
    Height = 25
    Caption = 'FORM POIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 64
    Width = 70
    Height = 18
    Caption = 'Nama Poin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 296
    Top = 64
    Width = 38
    Height = 18
    Caption = 'Bobot'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 528
    Top = 64
    Width = 59
    Height = 18
    Caption = 'Tipe Poin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 240
    Width = 689
    Height = 177
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnbaru: TButton
    Left = 32
    Top = 168
    Width = 97
    Height = 41
    Caption = 'Baru'
    TabOrder = 1
  end
  object btnsimpan: TButton
    Left = 160
    Top = 168
    Width = 99
    Height = 41
    Caption = 'Simpan'
    TabOrder = 2
  end
  object btnedit: TButton
    Left = 288
    Top = 168
    Width = 89
    Height = 41
    Caption = 'Edit'
    TabOrder = 3
  end
  object btnhps: TButton
    Left = 408
    Top = 168
    Width = 89
    Height = 41
    Caption = 'Hapus'
    TabOrder = 4
  end
  object btnbtl: TButton
    Left = 528
    Top = 168
    Width = 89
    Height = 41
    Caption = 'Batal'
    TabOrder = 5
  end
  object btnlpr: TButton
    Left = 648
    Top = 168
    Width = 89
    Height = 41
    Caption = 'Laporan'
    TabOrder = 6
  end
  object edtnmpoin: TEdit
    Left = 112
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 7
  end
  object edtbobot: TEdit
    Left = 352
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 8
  end
  object cbbjrs: TComboBox
    Left = 600
    Top = 64
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = '---PILIH TIPE POIN---'
    Items.Strings = (
      'PRESTASI'
      'PELANGGARAN')
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
    Left = 760
    Top = 352
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from poin')
    Params = <>
    Left = 760
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 760
    Top = 248
  end
end
