object Principal: TPrincipal
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
  Position = poScreenCenter
  TextHeight = 15
  object layoutControl: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 636
    Height = 479
    Align = alClient
    TabOrder = 0
    object dxTileControl1: TdxTileControl
      Left = 12
      Top = 54
      Width = 612
      Height = 413
      Align = alNone
      OptionsBehavior.ItemMoving = False
      OptionsView.CenterContentHorz = True
      OptionsView.CenterContentVert = True
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      TabOrder = 0
      Transparent = True
      object dxTileControl1Group1: TdxTileControlGroup
        Index = 0
      end
      object dxTileControl1Group2: TdxTileControlGroup
        Index = 1
      end
      object btnPessoas: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 0
        Text1.IndentVert = 0
        Text1.Value = 'PESSOAS'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnPessoasClick
      end
      object btnAtendimentos: TdxTileControlItem
        GroupIndex = 1
        IndexInGroup = 0
        Size = tcisLarge
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 0
        Text1.IndentVert = 0
        Text1.Value = 'ATENDIMENTOS'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnAtendimentosClick
      end
      object btnServiços: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 0
        Text1.IndentVert = 0
        Text1.Value = 'SERVI'#199'OS'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnServiçosClick
      end
      object btnSobre: TdxTileControlItem
        GroupIndex = 1
        IndexInGroup = 1
        Style.GradientBeginColor = 45232
        Style.GradientEndColor = 44718
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 0
        Text1.IndentVert = 0
        Text1.Value = 'SOBRE'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnSobreClick
      end
      object btnSair: TdxTileControlItem
        GroupIndex = 1
        IndexInGroup = 2
        Style.GradientBeginColor = clRed
        Style.GradientEndColor = 168
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 0
        Text1.Value = 'SAIR'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnSairClick
      end
    end
    object Label1: TLabel
      Left = 12
      Top = 12
      Width = 612
      Height = 35
      Caption = 'PHARMA SYSTEMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object layoutControlGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = layoutControlGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dxTileControl1'
      CaptionOptions.Visible = False
      Control = dxTileControl1
      ControlOptions.OriginalHeight = 300
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = layoutControlGroup_Root
      CaptionOptions.Text = 'Label1'
      CaptionOptions.Visible = False
      Control = Label1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
