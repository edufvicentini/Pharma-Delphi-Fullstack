object CadM: TCadM
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'CadM'
  ClientHeight = 480
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    Align = alClient
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 12
      Top = 12
      Caption = 'Cadastro'
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
    object btnNovo: TcxButton
      Left = 12
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 2
    end
    object btnConsultar: TcxButton
      Left = 12
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
    end
    object btnEditar: TcxButton
      Left = 12
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 4
    end
    object btnExcluir: TcxButton
      Left = 12
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 5
    end
    object btnVoltar: TcxButton
      Left = 12
      Top = 443
      Width = 75
      Height = 25
      Caption = 'Voltar'
      TabOrder = 1
      OnClick = btnVoltarClick
    end
    object btnConfirmar: TcxButton
      Left = 530
      Top = 443
      Width = 98
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 10
    end
    object btnCancelar: TcxButton
      Left = 448
      Top = 443
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 9
    end
    object edtCodigo: TcxDBTextEdit
      Left = 107
      Top = 61
      DataBinding.DataField = 'id'
      DataBinding.DataSource = DSCadastro
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 121
    end
    object dtCriado: TcxDBDateEdit
      Left = 107
      Top = 445
      DataBinding.DataField = 'created_at'
      DataBinding.DataSource = DSCadastro
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 164
    end
    object dtModificado: TcxDBDateEdit
      Left = 278
      Top = 445
      DataBinding.DataField = 'updated_at'
      DataBinding.DataSource = DSCadastro
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 163
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 153
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnNovo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnConsultar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = btnEditar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = btnExcluir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = btnVoltar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = btnConfirmar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = btnCancelar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup4
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'digo'
      CaptionOptions.Layout = clTop
      Control = edtCodigo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Criado em'
      CaptionOptions.Layout = clTop
      Control = dtCriado
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Modificado em'
      CaptionOptions.Layout = clTop
      Control = dtModificado
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object CadastroMemTable: TFDMemTable
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
    Left = 264
    Top = 280
  end
  object DSCadastro: TDataSource
    DataSet = CadastroMemTable
    Left = 360
    Top = 280
  end
end
