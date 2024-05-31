inherited FrmServicos: TFrmServicos
  Caption = 'FrmServicos'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxLabel1: TcxLabel
      Caption = 'Cadastro de Servi'#231'os'
    end
    inherited btnConsultar: TcxButton
      OnClick = btnConsultarClick
    end
    inherited btnConfirmar: TcxButton
      TabOrder = 12
    end
    inherited btnCancelar: TcxButton
      TabOrder = 11
    end
    inherited dtCriado: TcxDBDateEdit
      TabOrder = 9
    end
    inherited dtModificado: TcxDBDateEdit
      TabOrder = 10
    end
    object DBLookupComboBox1: TDBLookupComboBox [11]
      Left = 107
      Top = 214
      Width = 521
      Height = 23
      DataField = 'tipo'
      DataSource = DSCadastro
      KeyField = 'id'
      ListField = 'descricao'
      ListSource = DSLookup
      TabOrder = 13
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [12]
      Left = 107
      Top = 163
      DataBinding.DataField = 'valor'
      DataBinding.DataSource = DSCadastro
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 521
    end
    object cxDBTextEdit1: TcxDBTextEdit [13]
      Left = 107
      Top = 112
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DSCadastro
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 521
    end
    inherited dxLayoutGroup4: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Index = 3
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = DBLookupComboBox1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Valor'
      CaptionOptions.Layout = clTop
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited CadastroMemTable: TFDMemTable
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'created_at'
        DataType = ftDateTime
      end
      item
        Name = 'updated_at'
        DataType = ftDateTime
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'valor'
        DataType = ftFloat
      end
      item
        Name = 'tipo'
        DataType = ftInteger
      end>
    Left = 216
    Top = 312
  end
  inherited DSCadastro: TDataSource
    Left = 312
    Top = 312
  end
  object MemTableLookup: TFDMemTable
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'created_at'
        DataType = ftDateTime
      end
      item
        Name = 'updated_at'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 424
    Top = 312
  end
  object DSLookup: TDataSource
    DataSet = MemTableLookup
    Left = 512
    Top = 312
  end
end
