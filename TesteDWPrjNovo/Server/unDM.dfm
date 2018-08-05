object DM: TDM
  OldCreateOrder = False
  Height = 241
  Width = 360
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=sgh'
      'User_Name=postgres'
      'Password=Teste123'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object RESTDWDriverFD: TRESTDWDriverFD
    CommitRecords = 100
    Connection = FDConexao
    Left = 40
    Top = 96
  end
  object RESTDWPoolerDB: TRESTDWPoolerDB
    RESTDriver = RESTDWDriverFD
    Compression = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    Active = True
    PoolerOffMessage = 'RESTPooler not active.'
    ParamCreate = True
    Left = 40
    Top = 152
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 128
    Top = 32
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    Left = 208
    Top = 32
  end
  object DWServerEvents: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'ObjPaciente'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odOUT
            ObjectValue = ovString
            ParamName = 'Result'
            Encoded = True
          end>
        JsonMode = jmDataware
        Name = 'InsertPaciente'
        OnReplyEvent = DWServerEventsEventsInsertPacienteReplyEvent
      end>
    Left = 152
    Top = 120
  end
  object WebServerEvents: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <>
    Left = 256
    Top = 120
  end
  object qryGeral: TFDQuery
    Connection = FDConexao
    Left = 152
    Top = 176
  end
end
