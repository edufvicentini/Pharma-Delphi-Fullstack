inherited ConServicos: TConServicos
  Caption = 'ConServicos'
  TextHeight = 15
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        inherited columnId: TcxGridDBColumn
          Width = 107
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn [1]
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'descricao'
          Width = 106
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn [2]
          Caption = 'Valor'
          DataBinding.FieldName = 'valor'
          Width = 107
        end
        inherited columnDtModificacao: TcxGridDBColumn
          Width = 97
        end
        inherited columnDtCriacao: TcxGridDBColumn
          Visible = False
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Width = 189
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
        Size = 20
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
