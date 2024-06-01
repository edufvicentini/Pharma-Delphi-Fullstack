inherited ConAtendimentos: TConAtendimentos
  Caption = 'ConAtendimentos'
  TextHeight = 15
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        inherited columnId: TcxGridDBColumn
          DataBinding.IsNullValueType = True
          Width = 93
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn [1]
          Caption = 'Paciente'
          DataBinding.FieldName = 'paciente'
          DataBinding.IsNullValueType = True
          Width = 88
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn [2]
          Caption = 'Farmac'#234'utico'
          DataBinding.FieldName = 'responsavel'
          DataBinding.IsNullValueType = True
          Width = 112
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn [3]
          Caption = 'Valor'
          DataBinding.FieldName = 'valor_total'
          DataBinding.IsNullValueType = True
          Width = 66
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn [4]
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'observacao'
          DataBinding.IsNullValueType = True
          Width = 85
        end
        inherited columnDtModificacao: TcxGridDBColumn
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 102
        end
        inherited columnDtCriacao: TcxGridDBColumn
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 60
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
        Name = 'responsavel'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'paciente'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'valor_total'
        DataType = ftFloat
      end
      item
        Name = 'observacao'
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
  end
end
