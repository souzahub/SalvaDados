object dmDados: TdmDados
  OldCreateOrder = False
  Height = 363
  Width = 347
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\app1\bd\BD.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    UpdateOptions.AssignedValues = [uvCountUpdatedRecords]
    UpdateOptions.CountUpdatedRecords = False
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 40
    Top = 239
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 40
    Top = 184
  end
  object FDQueryUsuario: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select *  from USUARIO order by ID desc'
      '')
    Left = 40
    Top = 96
    object FDQueryUsuarioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object FDQueryUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 12
    end
    object FDQueryUsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 60
    end
    object FDQueryUsuarioTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 60
    end
    object FDQueryUsuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 60
    end
    object FDQueryUsuarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object FDQueryUsuarioFOTOS: TBlobField
      FieldName = 'FOTOS'
      Origin = 'FOTOS'
    end
    object FDQueryUsuarioVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
  end
  object FDQueryCadastroUsuario: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select *  from CADASTROUSUARIO order by ID desc'
      '')
    Left = 144
    Top = 96
    object FDQueryCadastroUsuarioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object FDQueryCadastroUsuarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQueryCadastroUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 10
    end
  end
end
