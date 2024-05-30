object CadM: TCadM
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Principal'
  ClientHeight = 479
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 636
    Height = 479
    Align = alClient
    TabOrder = 0
    object btnConsulta: TcxButton
      Left = 12
      Top = 44
      Width = 75
      Height = 25
      Caption = 'Consulta'
      TabOrder = 3
    end
    object btnCadastro: TcxButton
      Left = 549
      Top = 442
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 1
    end
    object btnNovo: TcxButton
      Left = 12
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 2
    end
    object btnEditar: TcxButton
      Left = 12
      Top = 76
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 4
    end
    object btnExcluir: TcxButton
      Left = 12
      Top = 108
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 5
    end
    object btnVoltar: TcxButton
      Left = 12
      Top = 442
      Width = 75
      Height = 25
      Caption = 'Voltar'
      TabOrder = 6
      OnClick = btnVoltarClick
    end
    object btnCancelar: TcxButton
      Left = 467
      Top = 442
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 0
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnConsulta
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnCadastro
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Novo'
      CaptionOptions.Visible = False
      Control = btnNovo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnEditar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = btnExcluir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = btnVoltar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = btnCancelar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
