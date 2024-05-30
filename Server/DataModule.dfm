object ServerContainer: TServerContainer
  Height = 210
  Width = 431
  object SparkleHttpSysDispatcher: TSparkleHttpSysDispatcher
    Active = True
    Left = 72
    Top = 16
  end
  object XDataServer: TXDataServer
    BaseUrl = 'http://+:2001/tms/xdata'
    Dispatcher = SparkleHttpSysDispatcher
    Pool = XDataConnectionPool
    RoutingPrecedence = Service
    DefaultEntitySetPermissions = [List, Get, Insert, Modify, Delete]
    EntitySetPermissions = <>
    SwaggerOptions.Enabled = True
    OnModuleCreate = XDataServerModuleCreate
    Left = 216
    Top = 16
  end
  object XDataConnectionPool: TXDataConnectionPool
    Connection = AureliusConnection
    Left = 216
    Top = 72
  end
  object AureliusConnection: TAureliusConnection
    AdapterName = 'FireDac'
    AdaptedConnection = FDConnection1
    SQLDialect = 'MySQL'
    Params.Strings = (
      'Server=http://localhost:2001/tms/xdata'
      'Database=banco'
      'UserName=root'
      'Password=root')
    Left = 216
    Top = 128
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=banco'
      'User_Name=root'
      'Password=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Left = 104
    Top = 128
  end
end
