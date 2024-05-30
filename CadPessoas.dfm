inherited FrmPessoas: TFrmPessoas
  Caption = 'FrmPessoas'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxLabel1: TcxLabel
      Caption = 'Cadastro de Pessoas'
    end
    inherited btnNovo: TcxButton
      OnClick = btnNovoClick
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
    object edtNome: TcxDBTextEdit [8]
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
    object edtCPF: TcxDBTextEdit [9]
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
    inherited edtCodigo: TcxDBTextEdit
      TabOrder = 10
    end
    inherited dtCriado: TcxDBDateEdit
      TabOrder = 6
    end
    inherited dtModificado: TcxDBDateEdit
      TabOrder = 7
    end
    inherited dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem [29]
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
    object liedtCPF: TdxLayoutItem [30]
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'CPF'
      CaptionOptions.Layout = clTop
      Control = edtCPF
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    inherited dxLayoutItem12: TdxLayoutItem
      ControlOptions.AlignHorz = ahLeft
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
end
