object uFormFotos: TuFormFotos
  Left = 0
  Top = 0
  ClientHeight = 527
  ClientWidth = 320
  Caption = 'uFormFotos'
  ShowTitle = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimPanel1: TUnimPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 60
    Hint = ''
    Align = alTop
    Color = clNavy
    ExplicitWidth = 315
    object UnimLabel1: TUnimLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 312
      Height = 60
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'FOTOS'
      Align = alTop
      ParentFont = False
      Font.Color = clWindow
      Font.Height = -27
    end
  end
  object btFotos: TUnimBitBtn
    AlignWithMargins = True
    Left = 10
    Top = 63
    Width = 300
    Height = 47
    Hint = ''
    Margins.Left = 10
    Margins.Right = 10
    Align = alTop
    UI = 'action'
    IconCls = 'bookmarks'
    Caption = 'Foto'
    OnClick = btFotosClick
    ExplicitLeft = 3
    ExplicitTop = 26
    ExplicitWidth = 317
  end
  object UnimImage1: TUnimImage
    Left = 48
    Top = 143
    Width = 225
    Height = 167
    Hint = ''
    Center = True
    Stretch = True
    Proportional = True
  end
  object UnimList: TUnimList
    Left = 0
    Top = 332
    Width = 320
    Height = 152
    Hint = ''
    Align = alBottom
    OnClick = UnimListClick
    ExplicitLeft = 8
    ExplicitTop = 326
  end
  object btAtualizar: TUnimBitBtn
    Left = 0
    Top = 484
    Width = 320
    Height = 43
    Hint = ''
    Align = alBottom
    UI = 'small'
    Caption = 'Atualizar'
    OnClick = btAtualizarClick
    ExplicitTop = 490
  end
  object DataSource1: TDataSource
    DataSet = dmDados.FDQueryUsuario
    Left = 280
    Top = 16
  end
  object UnimFileUpload1: TUnimFileUpload
    Title = 'Upload Foto'
    Messages.Uploading = 'Enviando'
    Messages.PleaseWait = 'Aguarde...'
    Messages.Cancel = 'Cancelar'
    Messages.Processing = 'Processando...'
    Messages.UploadError = 'Erro no Upload'
    Messages.Upload = 'Iniciar Upload'
    Messages.NoFileError = 'Por favor, selecione a foto'
    Messages.BrowseText = 'Selecionar'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    TargetFolder = 'uploads'
    Left = 149
    Top = 165
  end
end
