object UnimLoginForm1: TUnimLoginForm1
  AlignWithMargins = True
  Left = 0
  Top = 0
  ClientHeight = 627
  ClientWidth = 431
  Caption = ''
  OnShow = UnimLoginFormShow
  Color = clWindow
  BorderIcons = []
  DisplayCaption = False
  FreeOnClose = False
  ShowTitle = False
  CloseButton.Visible = False
  TitleButtons = <>
  OnCreate = UnimLoginFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 193
  PlatformData = {}
  object CntPnlTop: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 431
    Height = 201
    Hint = ''
    Align = alTop
    Color = 15963681
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'     config.c' +
        'ls = "pnlround" '#13#10'}')
    LayoutConfig.Cls = 'pnlround'
    DesignSize = (
      431
      201)
    object UnimLabel1: TUnimLabel
      Left = 232
      Top = 132
      Width = 73
      Height = 29
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Login'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -24
    end
    object UnimLabel2: TUnimLabel
      Left = 164
      Top = 48
      Width = 46
      Height = 70
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = '<i class="fa fa-expeditedssl fa-5x" aria-hidden="true"></i>'
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      Color = clSilver
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
    end
  end
  object EdUsuario: TUnimEdit
    Left = 43
    Top = 254
    Width = 295
    Height = 33
    Hint = ''
    Margins.Left = 25
    Margins.Top = 25
    Margins.Right = 25
    BodyRTL = False
    Text = ''
    CharCase = ecLowerCase
    EmptyText = 'USU'#193'RIO'
    ParentFont = False
    TabOrder = 2
  end
  object edSenha: TUnimEdit
    AlignWithMargins = True
    Left = 43
    Top = 335
    Width = 270
    Height = 33
    Hint = ''
    Margins.Left = 25
    Margins.Top = 25
    Margins.Right = 120
    Text = ''
    PasswordChar = '*'
    EmptyText = 'senha'
    ParentFont = False
    TabOrder = 0
  end
  object lbFehado: TUnimLabel
    Left = 330
    Top = 335
    Width = 17
    Height = 17
    Hint = ''
    AutoSize = False
    Caption = '<i class="fa fa-eye-slash fa-2x"></i> '
    ParentFont = False
    OnClick = lbFehadoClick
  end
  object lbAberto: TUnimLabel
    Left = 330
    Top = 335
    Width = 17
    Height = 17
    Hint = ''
    AutoSize = False
    Caption = '<i class="fa fa-eye fa-2x"></i> '
    ParentFont = False
    OnClick = lbAbertoClick
  end
  object UnimBitBtn1: TUnimBitBtn
    AlignWithMargins = True
    Left = 43
    Top = 479
    Width = 295
    Height = 50
    Hint = ''
    Margins.Left = 25
    Margins.Top = 20
    Margins.Right = 25
    ParentShowHint = False
    UI = 'round'
    Caption = 'Entrar'
    Font.Height = -17
    LayoutConfig.Cls = 'bntLogin'
    OnClick = UnimBitBtn1Click
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 40
    Top = 9
    Images = {
      0200000000000000060E0000004E657749636F6E436C733B66613B0000000006
      0B0000007369676E2D696E3B66613B}
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    Width = 360
    Padding = 20
    Left = 112
    Top = 16
  end
  object DataSourceUsuario: TDataSource
    DataSet = dmDados.FDQueryCadastroUsuario
    Left = 176
    Top = 16
  end
end
