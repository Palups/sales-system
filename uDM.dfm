object DM: TDM
  OldCreateOrder = False
  Height = 164
  Width = 223
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=db_system'
      'User_Name=postgres'
      'Server=127.0.0.1'
      'Password=admin'
      'DriverID=PG')
    Left = 48
    Top = 48
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 144
    Top = 48
  end
end
