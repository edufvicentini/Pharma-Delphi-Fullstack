inherited ConPessoas: TConPessoas
  Caption = 'ConPessoas'
  TextHeight = 15
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        object columnNome: TcxGridDBColumn [1]
          Caption = 'Nome'
          DataBinding.FieldName = 'nome'
        end
        object columnCPF: TcxGridDBColumn [2]
          Caption = 'CPF'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object columnTipo: TcxGridDBColumn [3]
          Caption = 'Tipo'
          DataBinding.FieldName = 'tipo'
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
      end>
  end
end
