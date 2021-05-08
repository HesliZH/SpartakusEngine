object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 156
  Width = 254
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=hitkilldb'
      'User_Name=postgres'
      'Password=postgres'
      'DriverID=PG')
    Left = 48
    Top = 32
  end
  object QueryUsuarios: TFDQuery
    Connection = Conexao
    Left = 144
    Top = 32
  end
end
