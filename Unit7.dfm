object Form7: TForm7
  Left = 516
  Top = 303
  Width = 822
  Height = 540
  Caption = 'FORM USER'
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
    Width = 113
    Height = 25
    Caption = 'FORM USER'
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
    Width = 25
    Height = 18
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 328
    Top = 64
    Width = 39
    Height = 18
    Caption = 'Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 32
    Top = 120
    Width = 33
    Height = 18
    Caption = 'Level'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 328
    Top = 120
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
  object edtnik: TEdit
    Left = 112
    Top = 64
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object edtnama: TEdit
    Left = 408
    Top = 64
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object cbbstts: TComboBox
    Left = 408
    Top = 120
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = '---PILIH STATUS---'
    Items.Strings = (
      'GURU'
      'MURID')
  end
  object cbbjrs: TComboBox
    Left = 112
    Top = 120
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = '---PILIH LEVEL---'
    Items.Strings = (
      'ADMIN'
      'MEMBER')
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 288
    Width = 689
    Height = 177
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnbaru: TButton
    Left = 32
    Top = 216
    Width = 97
    Height = 41
    Caption = 'Baru'
    TabOrder = 5
  end
  object btnsimpan: TButton
    Left = 160
    Top = 216
    Width = 99
    Height = 41
    Caption = 'Simpan'
    TabOrder = 6
  end
  object btnedit: TButton
    Left = 288
    Top = 216
    Width = 89
    Height = 41
    Caption = 'Edit'
    TabOrder = 7
  end
  object btnhps: TButton
    Left = 408
    Top = 216
    Width = 89
    Height = 41
    Caption = 'Hapus'
    TabOrder = 8
  end
  object btnbtl: TButton
    Left = 528
    Top = 216
    Width = 89
    Height = 41
    Caption = 'Batal'
    TabOrder = 9
  end
  object btnlpr: TButton
    Left = 648
    Top = 216
    Width = 89
    Height = 41
    Caption = 'Laporan'
    TabOrder = 10
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
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 760
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 768
    Top = 120
  end
end
