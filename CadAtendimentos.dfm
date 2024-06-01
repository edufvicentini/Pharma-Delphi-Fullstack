inherited FrmAtendimentos: TFrmAtendimentos
  Caption = 'FrmAtendimentos'
  OnCreate = FormCreate
  TextHeight = 15
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxLabel1: TcxLabel
      Caption = 'Cadastro de Atendimentos'
    end
    inherited btnConsultar: TcxButton
      OnClick = btnConsultarClick
    end
    inherited btnConfirmar: TcxButton
      TabOrder = 19
    end
    inherited btnCancelar: TcxButton
      TabOrder = 18
    end
    inherited dtCriado: TcxDBDateEdit
      TabOrder = 16
    end
    inherited dtModificado: TcxDBDateEdit
      TabOrder = 17
    end
    object cxGrid1: TcxGrid [11]
      Left = 107
      Top = 187
      Width = 521
      Height = 133
      TabOrder = 13
      object gridProdutos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSServicos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            FieldName = 'valor'
            Column = gridProdutosColumn3
            DisplayText = 'Total'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object gridProdutosColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object gridProdutosColumn2: TcxGridDBColumn
          Caption = 'Cod. Servi'#231'o'
          DataBinding.FieldName = 'servico'
          Width = 74
        end
        object gridProdutosColumn4: TcxGridDBColumn
          Caption = 'Servi'#231'o'
          DataBinding.FieldName = 'servicoDescricao'
          Width = 128
        end
        object gridProdutosColumn3: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'valor'
          Width = 119
        end
        object gridProdutosColumn5: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'servicoTipo'
          Width = 198
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridProdutos
      end
    end
    object edtPacienteNome: TcxDBTextEdit [12]
      Left = 320
      Top = 61
      DataBinding.DataField = 'pacienteNome'
      DataBinding.DataSource = DSPaciente
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 308
    end
    object btnAdicionarServico: TcxButton [13]
      Left = 107
      Top = 155
      Width = 121
      Height = 25
      Caption = 'Adicionar Servi'#231'o'
      TabOrder = 11
      OnClick = btnAdicionarServicoClick
    end
    object btnRemoverServico: TcxButton [14]
      Left = 235
      Top = 155
      Width = 126
      Height = 25
      Caption = 'Remover Servi'#231'o'
      TabOrder = 12
      OnClick = btnRemoverServicoClick
    end
    object edtPacienteCodigo: TcxDBButtonEdit [15]
      Left = 235
      Top = 61
      DataBinding.DataField = 'paciente'
      DataBinding.DataSource = DSCadastro
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtPacienteCodigoPropertiesButtonClick
      Properties.OnEditValueChanged = edtPacienteCodigoPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Width = 78
    end
    object edtFarmaceuticoCodigo: TcxDBButtonEdit [16]
      Left = 235
      Top = 112
      AutoSize = False
      DataBinding.DataField = 'farmaceutico'
      DataBinding.DataSource = DSCadastro
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtFarmaceuticoCodigoPropertiesButtonClick
      Properties.OnEditValueChanged = edtFarmaceuticoCodigoPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 9
      Height = 23
      Width = 78
    end
    object edtFarmaceuticoNome: TcxDBTextEdit [17]
      Left = 320
      Top = 112
      DataBinding.DataField = 'farmaceuticoNome'
      DataBinding.DataSource = DSFarmaceutico
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Width = 308
    end
    object edtObservacao: TcxDBTextEdit [18]
      Left = 107
      Top = 378
      DataBinding.DataField = 'observacao'
      DataBinding.DataSource = DSCadastro
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Width = 521
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [19]
      Left = 507
      Top = 327
      DataBinding.DataField = 'valor_total'
      DataBinding.DataSource = DSCadastro
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Width = 121
    end
    inherited dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Index = 6
    end
    inherited dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxGrid1
      ControlOptions.OriginalHeight = 133
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Paciente'
      CaptionOptions.Layout = clTop
      Control = edtPacienteNome
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnAdicionarServico
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnRemoverServico
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup4
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup4
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'C'#243'digo '
      CaptionOptions.Layout = clTop
      Control = edtPacienteCodigo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'C'#243'digo'
      CaptionOptions.Layout = clTop
      Control = edtFarmaceuticoCodigo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Farmac'#234'utico'
      CaptionOptions.Layout = clTop
      Control = edtFarmaceuticoNome
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtObservacao
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      CaptionOptions.Text = 'Valor Total'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited CadastroMemTable: TFDMemTable
    FieldOptions.AutoCreateMode = acCombineComputed
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
        Name = 'paciente'
        DataType = ftInteger
      end
      item
        Name = 'farmaceutico'
        DataType = ftInteger
      end
      item
        Name = 'observacao'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'valor_total'
        DataType = ftFloat
      end>
    Left = 128
  end
  inherited DSCadastro: TDataSource
    Left = 128
    Top = 336
  end
  object ServicosMemTable: TFDMemTable
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'atendimento'
        DataType = ftInteger
      end
      item
        Name = 'servico'
        DataType = ftInteger
      end
      item
        Name = 'valor'
        DataType = ftFloat
      end
      item
        Name = 'servicoDescricao'
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
      end
      item
        Name = 'servicoTipo'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    MasterSource = DSCadastro
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 240
    Top = 280
  end
  object DSServicos: TDataSource
    DataSet = ServicosMemTable
    Left = 240
    Top = 336
  end
  object FarmaceuticoMemTable: TFDMemTable
    FieldDefs = <
      item
        Name = 'farmaceuticoId'
        DataType = ftInteger
      end
      item
        Name = 'farmaceuticoNome'
        DataType = ftString
        Size = 100
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
    Left = 368
    Top = 280
  end
  object PacienteMemTable: TFDMemTable
    FieldDefs = <
      item
        Name = 'pacienteId'
        DataType = ftInteger
      end
      item
        Name = 'pacienteNome'
        DataType = ftString
        Size = 100
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
    Left = 496
    Top = 280
  end
  object DSFarmaceutico: TDataSource
    DataSet = FarmaceuticoMemTable
    Left = 368
    Top = 336
  end
  object DSPaciente: TDataSource
    DataSet = PacienteMemTable
    Left = 496
    Top = 336
  end
end
