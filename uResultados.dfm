object formResultados: TformResultados
  AlignWithMargins = True
  Left = 0
  Top = 0
  ClientHeight = 617
  ClientWidth = 321
  Caption = 'formResultados'
  BorderIcons = []
  ShowTitle = False
  TitleButtons = <>
  OnCreate = UnimFormCreate
  OnClose = UnimFormClose
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimPanel1: TUnimPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 40
    Hint = ''
    Align = alTop
    Color = clNavy
    object UnimLabel4: TUnimLabel
      AlignWithMargins = True
      Left = 95
      Top = 9
      Width = 222
      Height = 27
      Hint = ''
      Margins.Left = 30
      Margins.Top = 8
      AutoSize = False
      Caption = 'Dados'
      Align = alClient
      ParentFont = False
      Font.Color = clWindow
      Font.Height = -27
    end
    object lbAberto: TUnimLabel
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 54
      Height = 30
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 0
      AutoSize = False
      Caption = '<i class="fa fa-angle-left 5x"></i>'
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentColor = False
      Color = clWhite
      ClientEvents.Enabled = False
      ParentFont = False
      Font.Color = clHighlightText
      Font.Height = -27
      OnClick = lbAbertoClick
    end
  end
  object edBusca: TUnimEdit
    AlignWithMargins = True
    Left = 10
    Top = 40
    Width = 306
    Height = 25
    Hint = ''
    Margins.Left = 10
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 2
    InputRTL = False
    Align = alTop
    Text = ''
    ClearButton = False
    CharCase = ecUpperCase
    EmptyText = 'BUSCA DIN'#194'MICA'
    ParentFont = False
    TabOrder = 1
    InputType = 'search'
    OnChange = edBuscaChange
  end
  object UnimDBListGrid1: TUnimDBListGrid
    Left = 0
    Top = 67
    Width = 321
    Height = 550
    Hint = ''
    ParentCustomHint = False
    ParentRTL = False
    ParentShowHint = False
    BodyRTL = False
    Align = alClient
    DataSource = DataSourceUsuario
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit='#13#10#13#10#13#10'function beforeInit(sender, config)'#13#10'{'#13#10' '#13#10'conf' +
        'ig.loadingText='#39'Carregando...'#39';'#13#10'config.grouped=false;'#13#10'config.s' +
        'electedCls='#39'grid-item-ativo'#39';'#13#10'config.itemTpl='#39'<div class="produ' +
        'ct-info">'#39'+'#13#10'        // '#39'<p>&nbsp;C'#243'digo: {0}</p>'#39'+          '#13#10' ' +
        '                                          '#13#10'         '#39'<h1><image' +
        ' src="files/img/Actions.png"/>  &nbsp;Nome: {0}</h1>'#39'+'#13#10'        ' +
        ' '#39'<p><image src="files/img/avatar1.png"/>  &nbsp;Usu'#225'rio: {1}</p' +
        '>'#39'+ '#13#10'         '#39'<p><image src="files/img/email.png"/>   &nbsp;Em' +
        'ail: {3}</p>'#39'+ '#13#10'         '#39'<p><image src="files/img/Folder.png"/' +
        '>  &nbsp;Tipo: {4}</p>'#39'+         '#13#10'         '#39'</div>'#39'; '#13#10'}')
    Options = [dgAutoRefreshRow]
    WebOptions.PageSize = 200
    WebOptions.FetchAll = True
    DisclosureIcon = True
    DirectionLock = True
    ScrollToSelected = True
    OnClickHold = UnimDBListGrid1ClickHold
    OnDblClick = UnimDBListGrid1DblClick
    Columns = <
      item
        Title.Caption = 'NOME'
        FieldName = 'NOME'
        Width = 664
      end
      item
        Title.Caption = 'USUARIO'
        FieldName = 'USUARIO'
        Width = 664
      end
      item
        Title.Caption = 'VALOR'
        FieldName = 'VALOR'
        Width = 114
      end
      item
        Title.Caption = 'EMAIL'
        FieldName = 'EMAIL'
        Width = 664
      end
      item
        Title.Caption = 'TIPO'
        FieldName = 'TIPO'
        Width = 664
      end
      item
        Title.Caption = 'SENHA'
        FieldName = 'SENHA'
        Width = 136
      end>
  end
  object UnimHTMLFrame1: TUnimHTMLFrame
    Left = 248
    Top = 464
    Width = 65
    Height = 145
    Hint = ''
    BodyRTL = False
    OnAjaxEvent = UnimHTMLFrame1AjaxEvent
  end
  object DataSourceUsuario: TDataSource
    DataSet = dmDados.FDQueryUsuario
    Left = 248
    Top = 240
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    ConfirmButtonColor = clMaroon
    ImageIndex = 0
    InputType = ItText
    Width = 300
    Padding = 20
    OnDismiss = UniSweetAlert1Dismiss
    OnConfirm = UniSweetAlert1Confirm
    Left = 144
    Top = 344
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 96
    Top = 120
    Images = {0100000000000000060E0000006172726F775F6C6566743B66613B}
  end
end
