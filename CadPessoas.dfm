inherited FrmPessoas: TFrmPessoas
  Caption = 'FrmPessoas'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxLabel1: TcxLabel
      Caption = 'Cadastro de Pessoas'
    end
    inherited btnConsultar: TcxButton
      OnClick = btnConsultarClick
    end
    inherited btnConfirmar: TcxButton
      TabOrder = 9
    end
    inherited btnCancelar: TcxButton
      TabOrder = 8
    end
    inherited edtCodigo: TcxDBTextEdit
      TabOrder = 10
    end
    inherited dtCriado: TcxDBDateEdit
      TabOrder = 6
    end
    inherited dtModificado: TcxDBDateEdit
      TabOrder = 7
    end
    object edtNome: TcxDBTextEdit [11]
      Left = 107
      Top = 112
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DSCadastro
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Width = 521
    end
    object DBLookupComboBox1: TDBLookupComboBox [12]
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
    object edtCPF: TcxDBTextEdit [13]
      Left = 107
      Top = 163
      DataBinding.DataField = 'cpf'
      DataBinding.DataSource = DSCadastro
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Width = 521
    end
    inherited dxLayoutGroup4: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Index = 0
    end
    inherited dxLayoutItem12: TdxLayoutItem
      ControlOptions.AlignHorz = ahLeft
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nome'
      CaptionOptions.Layout = clTop
      Control = edtNome
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object cbxLookupTipoPessoa: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Tipo Pessoa'
      CaptionOptions.Layout = clTop
      Control = DBLookupComboBox1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'CPF'
      CaptionOptions.Layout = clTop
      Control = edtCPF
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
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
        Name = 'nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'cpf'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'tipo'
        DataType = ftInteger
      end>
    Left = 248
  end
  inherited DSCadastro: TDataSource
    Left = 344
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
    Left = 448
    Top = 280
  end
  object DSLookup: TDataSource
    DataSet = MemTableLookup
    Left = 536
    Top = 280
  end
end
