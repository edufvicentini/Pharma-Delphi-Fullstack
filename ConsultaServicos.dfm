inherited ConServicos: TConServicos
  Caption = 'ConServicos'
  TextHeight = 15
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        inherited columnId: TcxGridDBColumn
          DataBinding.IsNullValueType = True
          Width = 127
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn [1]
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'descricao'
          DataBinding.IsNullValueType = True
          Width = 127
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn [2]
          Caption = 'Valor'
          DataBinding.FieldName = 'valor'
          DataBinding.IsNullValueType = True
          Width = 111
        end
        inherited columnDtModificacao: TcxGridDBColumn
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 97
        end
        inherited columnDtCriacao: TcxGridDBColumn
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          DataBinding.IsNullValueType = True
          Width = 241
        end
      end
    end
  end
  inherited MemTable: TFDMemTable
    FieldOptions.PositionMode = poFieldNo
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'valor'
        DataType = ftFloat
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Tipo'
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
