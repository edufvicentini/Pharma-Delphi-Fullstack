object FrmPessoas: TFrmPessoas
  Left = 0
  Top = 0
  Caption = 'FrmPessoas'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 624
    ExplicitHeight = 441
    object btnConsulta: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      TabOrder = 10
      Visible = False
      OnClick = btnConsultaClick
    end
    object btnCadastro: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      TabOrder = 18
      Visible = False
      OnClick = btnCadastroClick
    end
    object btnNovo: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      TabOrder = 9
      Visible = False
    end
    object btnEditar: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      TabOrder = 11
      Visible = False
    end
    object btnExcluir: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      TabOrder = 12
      Visible = False
    end
    object btnVoltar: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      TabOrder = 13
      Visible = False
    end
    object btnCancelar: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      TabOrder = 15
      Visible = False
    end
    object cxTextEdit1: TcxTextEdit
      Left = 60
      Top = 112
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Text = 'cxTextEdit1'
      Width = 556
    end
    object cxTextEdit2: TcxTextEdit
      Left = 60
      Top = 61
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Text = 'cxTextEdit2'
      Width = 121
    end
    object cxTextEdit3: TcxTextEdit
      Left = 60
      Top = 163
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Text = 'cxTextEdit1'
      Width = 556
    end
    object cxDateEdit1: TcxDateEdit
      Left = 60
      Top = 325
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 217
    end
    object cxDateEdit2: TcxDateEdit
      Left = 284
      Top = 325
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 318
    end
    object cxComboBox1: TcxComboBox
      Left = 60
      Top = 214
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Text = 'cxComboBox1'
      Width = 556
    end
    object cxLabel1: TcxLabel
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
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 187
      Top = 244
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
      TabOrder = 5
      Width = 429
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 187
      Top = 274
      Width = 429
      Height = 23
      ListSource = LookupDatasource
      TabOrder = 6
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup3
      Index = 0
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup3
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      Index = 1
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
      ControlOptions.OriginalWidth = 153
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
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
