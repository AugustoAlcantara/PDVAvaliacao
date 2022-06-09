object Frm_Principal: TFrm_Principal
  Left = 0
  Top = 0
  Caption = 'PDV'
  ClientHeight = 506
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnCliente: TPanel
    Left = 0
    Top = 0
    Width = 578
    Height = 86
    Align = alTop
    TabOrder = 0
    object lbCodCliente: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object sbConsultaCliente: TSpeedButton
      Left = 81
      Top = 27
      Width = 24
      Height = 21
      OnClick = sbConsultaClienteClick
    end
    object Label1: TLabel
      Left = 111
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 399
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label3: TLabel
      Left = 527
      Top = 8
      Width = 13
      Height = 13
      Caption = 'UF'
    end
    object edCodCliente: TEdit
      Left = 16
      Top = 27
      Width = 66
      Height = 21
      TabOrder = 0
      OnExit = edCodClienteExit
      OnKeyPress = FormKeyPress
    end
    object edCidade: TEdit
      Left = 399
      Top = 27
      Width = 122
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 2
    end
    object edUF: TEdit
      Left = 527
      Top = 27
      Width = 34
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 3
    end
    object edNomeCliente: TEdit
      Left = 111
      Top = 27
      Width = 281
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 1
    end
    object btConfCli: TButton
      Left = 244
      Top = 54
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 4
      OnClick = btConfCliClick
    end
  end
  object pnPedido: TPanel
    Left = 0
    Top = 86
    Width = 578
    Height = 336
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 137
      Width = 576
      Height = 198
      Align = alBottom
      TabOrder = 2
      object dbgItensPedido: TDBGrid
        Left = 1
        Top = 1
        Width = 574
        Height = 166
        Align = alTop
        DataSource = dsItensPedido
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEnter = dbgItensPedidoEnter
        OnKeyDown = dbgItensPedidoKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'IdPedido'
            ReadOnly = True
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CodProduto'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'DescricaoProd'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Produto'
            Width = 257
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            ReadOnly = True
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrUnitario'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Valor Unit'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'controle'
            Visible = False
          end>
      end
      object DBNavigator2: TDBNavigator
        Left = 235
        Top = 171
        Width = 108
        Height = 21
        DataSource = dsItensPedido
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 0
      Width = 576
      Height = 54
      Align = alBottom
      TabOrder = 0
      object Label4: TLabel
        Left = 177
        Top = 5
        Width = 87
        Height = 13
        Caption = 'N'#250'mero do Pedido'
      end
      object Label5: TLabel
        Left = 299
        Top = 5
        Width = 79
        Height = 13
        Caption = 'Data de Emiss'#227'o'
      end
      object edNumPedido: TEdit
        Left = 177
        Top = 24
        Width = 87
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 0
      end
      object dtDataEmi: TDateTimePicker
        Left = 299
        Top = 24
        Width = 97
        Height = 21
        Date = 44720.000000000000000000
        Time = 0.447935312498884700
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 54
      Width = 576
      Height = 83
      Align = alBottom
      TabOrder = 1
      object Label8: TLabel
        Left = 11
        Top = 9
        Width = 38
        Height = 13
        Caption = 'Produto'
      end
      object Label10: TLabel
        Left = 360
        Top = 9
        Width = 62
        Height = 13
        Caption = 'Pre'#231'o Tabela'
      end
      object sbConsultaProduto: TSpeedButton
        Left = 76
        Top = 28
        Width = 23
        Height = 21
        OnClick = sbConsultaProdutoClick
      end
      object Label11: TLabel
        Left = 508
        Top = 9
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object Label16: TLabel
        Left = 444
        Top = 9
        Width = 60
        Height = 13
        Caption = 'Pre'#231'o Venda'
      end
      object edCodProduto: TEdit
        Left = 11
        Top = 28
        Width = 66
        Height = 21
        TabOrder = 0
        OnExit = edCodProdutoExit
        OnKeyPress = FormKeyPress
      end
      object edPrecoTabela: TEdit
        Left = 360
        Top = 28
        Width = 62
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object edDescricaoProduto: TEdit
        Left = 103
        Top = 28
        Width = 252
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 1
      end
      object edQuantPedida: TEdit
        Left = 508
        Top = 28
        Width = 56
        Height = 21
        TabOrder = 4
        OnChange = edQuantPedidaChange
        OnExit = edQuantPedidaExit
        OnKeyPress = FormKeyPress
      end
      object edPrecoVenda: TEdit
        Left = 444
        Top = 28
        Width = 60
        Height = 21
        TabOrder = 3
        OnExit = edPrecoVendaExit
        OnKeyPress = FormKeyPress
      end
      object btAdicionarItem: TButton
        Left = 234
        Top = 52
        Width = 98
        Height = 25
        Caption = 'Adicionar Item'
        TabOrder = 5
        OnClick = btAdicionarItemClick
      end
    end
  end
  object pnBotoes: TPanel
    Left = 0
    Top = 422
    Width = 578
    Height = 62
    Align = alBottom
    TabOrder = 2
    object btExcluirPedido: TButton
      Left = 322
      Top = 5
      Width = 113
      Height = 49
      Caption = 'Excluir Pedido'
      TabOrder = 3
      OnClick = btExcluirPedidoClick
    end
    object btConsultarPedido: TButton
      Left = 157
      Top = 5
      Width = 113
      Height = 49
      Caption = 'Consultar/Editar'
      ImageAlignment = iaRight
      TabOrder = 0
      OnClick = btConsultarPedidoClick
    end
    object btNovoPedido: TButton
      Left = 296
      Top = 5
      Width = 113
      Height = 48
      Caption = 'Novo Pedido'
      TabOrder = 2
      OnClick = btNovoPedidoClick
    end
    object btGravarPedido: TButton
      Left = 175
      Top = 5
      Width = 113
      Height = 48
      Caption = 'Gravar Pedido'
      TabOrder = 1
      OnClick = btGravarPedidoClick
    end
  end
  object pnRodaPe: TPanel
    Left = 0
    Top = 484
    Width = 578
    Height = 22
    Align = alBottom
    TabOrder = 3
    object Label6: TLabel
      Left = 211
      Top = 3
      Width = 105
      Height = 13
      Caption = 'Valor Total do Pedido:'
    end
    object Label7: TLabel
      Left = 7
      Top = 3
      Width = 103
      Height = 13
      Caption = 'Quantidade de Itens:'
    end
    object lbValorTotal: TLabel
      Left = 319
      Top = 3
      Width = 39
      Height = 13
      Caption = 'R$0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbQuantidadeTotal: TLabel
      Left = 114
      Top = 3
      Width = 21
      Height = 13
      Caption = '000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object dsItensPedido: TDataSource
    DataSet = CDSItem
    Left = 276
    Top = 336
  end
  object CDSItem: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    AfterInsert = CDSItemAfterInsert
    AfterPost = CDSItemAfterPost
    Left = 256
    Top = 336
    object CDSItemIdPedido: TIntegerField
      FieldName = 'IdPedido'
    end
    object CDSItemCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object CDSItemQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object CDSItemVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
      DisplayFormat = '###0.00;0.00'
      currency = True
    end
    object CDSItemVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###0.00;0.00'
      currency = True
    end
    object CDSItemDescricaoProd: TStringField
      FieldName = 'DescricaoProd'
    end
    object CDSItemcontrole: TAutoIncField
      FieldName = 'controle'
    end
    object CDSItemCalcVlrTotal: TAggregateField
      FieldName = 'CalcVlrTotal'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '###000;000'
      Expression = 'Sum(VlrTotal)'
    end
    object CDSItemCalcQuantidade: TAggregateField
      FieldName = 'CalcQuantidade'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = 'R$###0.00;0.00'
      Expression = 'Sum(Quantidade)'
    end
  end
end
