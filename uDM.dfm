object dm: Tdm
  OldCreateOrder = False
  Height = 209
  Width = 307
  object DB_GATE: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=gdx4852T;Persist Security Info=True;' +
      'User ID=root;Extended Properties="DRIVER={MySQL ODBC 5.3 Unicode' +
      ' Driver};UID=root;PWD=gdx4852T;SERVER=localhost;DATABASE=db_cppn' +
      ';PORT=3306;COLUMN_SIZE_S32=1;";Initial Catalog=db_cppn;OPTION=2'
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object qSensor: TADOQuery
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Datchik')
    Left = 112
    Top = 16
    object qSensorID_datchik: TAutoIncField
      FieldName = 'ID_datchik'
      ReadOnly = True
    end
    object qSensorID_object: TIntegerField
      FieldName = 'ID_object'
    end
    object qSensorNaimenovanie: TWideStringField
      FieldName = 'Naimenovanie'
      Size = 256
    end
    object qSensorOboznachenie: TWideStringField
      FieldName = 'Oboznachenie'
      Size = 64
    end
    object qSensorNomer: TWideStringField
      FieldName = 'Nomer'
      Size = 64
    end
    object qSensorMAX: TFloatField
      FieldName = 'MAX'
    end
    object qSensorMIN: TFloatField
      FieldName = 'MIN'
    end
    object qSensorID_sostoianie: TIntegerField
      FieldName = 'ID_sostoianie'
    end
    object qSensorPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object qSensorObject: TStringField
      FieldKind = fkLookup
      FieldName = 'Object'
      LookupDataSet = qObject
      LookupKeyFields = 'ID_object'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'ID_object'
      Size = 256
      Lookup = True
    end
  end
  object dsSensor: TDataSource
    DataSet = qSensor
    Left = 176
    Top = 16
  end
  object qParameter: TADOQuery
    Connection = DB_GATE
    CursorType = ctStatic
    DataSource = dsSensor
    Parameters = <
      item
        Name = 'ID_datchik'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 16
        Precision = 255
        Value = 1
      end>
    SQL.Strings = (
      'Select * From Model'
      'Where ID_datchik = :ID_datchik')
    Left = 112
    Top = 72
    object qParameterID_model: TAutoIncField
      FieldName = 'ID_model'
      ReadOnly = True
    end
    object qParameterID_datchik: TIntegerField
      FieldName = 'ID_datchik'
    end
    object qParameterMx: TFloatField
      FieldName = 'Mx'
      DisplayFormat = '#,####0.0000'
    end
    object qParameterDx: TFloatField
      FieldName = 'Dx'
      DisplayFormat = '#,####0.0000'
    end
    object qParameterPokazanie: TFloatField
      FieldName = 'Pokazanie'
      DisplayFormat = '#,####0.0000'
    end
    object qParameterPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object qParameterNomerEdit: TIntegerField
      FieldName = 'NomerEdit'
    end
    object qParameterActive: TSmallintField
      FieldName = 'Active'
    end
  end
  object dsParameter: TDataSource
    DataSet = qParameter
    Left = 176
    Top = 72
  end
  object qTemp: TADOQuery
    Connection = DB_GATE
    Parameters = <>
    Left = 112
    Top = 128
  end
  object qObject: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Object')
    Left = 176
    Top = 128
  end
end
