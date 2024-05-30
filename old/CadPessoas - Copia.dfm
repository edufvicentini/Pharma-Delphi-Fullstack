inherited FrmPessoas: TFrmPessoas
  Caption = 'FrmPessoas'
  OnCreate = FormCreate
  TextHeight = 15
  inherited dxLayoutControl1: TdxLayoutControl
    inherited btnConsulta: TcxButton
      Left = 10000
      Top = 10000
      TabOrder = 5
      Visible = False
      OnClick = btnConsultaClick
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited btnCadastro: TcxButton
      Left = 10000
      Top = 10000
      TabOrder = 18
      Visible = False
      OnClick = btnCadastroClick
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited btnNovo: TcxButton
      Left = 10000
      Top = 10000
      TabOrder = 4
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited btnEditar: TcxButton
      Left = 10000
      Top = 10000
      TabOrder = 6
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited btnExcluir: TcxButton
      Left = 10000
      Top = 10000
      TabOrder = 7
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited btnVoltar: TcxButton
      Left = 10000
      Top = 10000
      TabOrder = 8
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited btnCancelar: TcxButton
      Left = 10000
      Top = 10000
      TabOrder = 17
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    object cxTextEdit1: TcxTextEdit [7]
      Left = 10000
      Top = 10000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Text = 'cxTextEdit1'
      Visible = False
      Width = 121
    end
    object cxTextEdit2: TcxTextEdit [8]
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Text = 'cxTextEdit2'
      Visible = False
      Width = 121
    end
    object cxTextEdit3: TcxTextEdit [9]
      Left = 10000
      Top = 10000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Text = 'cxTextEdit1'
      Visible = False
      Width = 353
    end
    object cxDateEdit1: TcxDateEdit [10]
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Visible = False
      Width = 50
    end
    object cxDateEdit2: TcxDateEdit [11]
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Visible = False
      Width = 50
    end
    object cxComboBox1: TcxComboBox [12]
      Left = 10000
      Top = 10000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Text = 'cxComboBox1'
      Visible = False
      Width = 121
    end
    object cxLabel1: TcxLabel [13]
      Left = 12
      Top = 12
      Caption = 'Cadastro de Pessoas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLookupComboBox1: TcxLookupComboBox [14]
      Left = 10000
      Top = 10000
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'descricao'
        end>
      Properties.ListSource = LookupDatasource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Visible = False
      Width = 145
    end
    object DBLookupComboBox1: TDBLookupComboBox [15]
      Left = 10000
      Top = 10000
      Width = 145
      Height = 23
      ListSource = LookupDatasource
      TabOrder = 14
      Visible = False
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      LayoutDirection = ldVertical
    end
    inherited dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup3
      Index = 0
    end
    inherited dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup3
      Index = 1
    end
    inherited dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = GrupoCadastro
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nome'
      CaptionOptions.Layout = clTop
      Control = cxTextEdit1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = GrupoCadastro
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'digo'
      CaptionOptions.Layout = clTop
      Control = cxTextEdit2
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoCadastro: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = GrupoCadastro
      CaptionOptions.Text = 'CPF'
      CaptionOptions.Layout = clTop
      Control = cxTextEdit3
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 353
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Criado em'
      CaptionOptions.Layout = clTop
      Control = cxDateEdit1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      CaptionOptions.Text = 'Modificado em'
      CaptionOptions.Layout = clTop
      Control = cxDateEdit2
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = GrupoCadastro
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 6
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = GrupoCadastro
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = cxComboBox1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'PESSOAS'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = GrupoCadastro
      CaptionOptions.Text = 'cxLookupComboBox1'
      Control = cxLookupComboBox1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = GrupoCadastro
      CaptionOptions.Text = 'DBLookupComboBox1'
      Control = DBLookupComboBox1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  object LookupMemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 448
    Top = 376
  end
  object LookupDatasource: TDataSource
    DataSet = LookupMemTable
    Left = 448
    Top = 320
  end
end
