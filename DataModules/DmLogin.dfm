object DataModuleUsuarios: TDataModuleUsuarios
  OldCreateOrder = False
  Height = 156
  Width = 254
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\HitKill Studios\SpartakusEngine\db\HITKILLDB.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Left = 48
    Top = 32
  end
  object QueryUsuarios: TFDQuery
    Connection = Conexao
    Left = 144
    Top = 32
  end
end
