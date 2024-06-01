inherited ConPessoas: TConPessoas
  Caption = 'ConPessoas'
  TextHeight = 15
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        inherited columnId: TcxGridDBColumn
          Width = 91
        end
        object columnNome: TcxGridDBColumn [1]
          Caption = 'Nome'
          DataBinding.FieldName = 'nome'
          Width = 90
        end
        object columnCPF: TcxGridDBColumn [2]
          Caption = 'CPF'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn [3]
          Caption = 'CPF'
          DataBinding.FieldName = 'cpf'
          Width = 131
        end
        object columnTipo: TcxGridDBColumn [4]
          Caption = 'Tipo'
          DataBinding.FieldName = 'tipo'
          Width = 79
        end
        inherited columnDtModificacao: TcxGridDBColumn
          Visible = False
          Width = 135
        end
        inherited columnDtCriacao: TcxGridDBColumn
          Visible = False
          Width = 80
        end
      end
    end
  end
  inherited MemTable: TFDMemTable
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
        Name = 'tipo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cpf'
        DataType = ftString
        Size = 11
      end>
  end
end
