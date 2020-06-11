object formvideo: Tformvideo
  Left = 0
  Top = 0
  ClientHeight = 527
  ClientWidth = 320
  Caption = 'Videos'
  Color = 16745216
  ShowTitle = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object painelmenu: TUnimPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 26
    Hint = ''
    Align = alTop
    Color = 16719904
    BorderStyle = ubsNone
    Title = 'GGG'
    object UnimLabel4: TUnimLabel
      Left = 145
      Top = 3
      Width = 88
      Height = 26
      Hint = ''
      Margins.Bottom = 50
      Alignment = taCenter
      AutoSize = False
      Caption = 'Videos'
      ParentFont = False
      Font.Color = clWhite
    end
    object UnimBitBtn3: TUnimBitBtn
      Left = 0
      Top = 0
      Width = 57
      Height = 26
      Hint = ''
      Align = alLeft
      UI = 'plain'
      IconCls = 'arrow_left'
      Caption = ''
      OnClick = UnimBitBtn3Click
    end
  end
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 26
    Width = 320
    Height = 16
    Hint = ''
    Align = alTop
    Color = 16745216
  end
  object UnimVideo1: TUnimVideo
    AlignWithMargins = True
    Left = 3
    Top = 45
    Width = 314
    Height = 148
    Hint = ''
    PosterUrl = 'https://content.jwplatform.com/thumbs/tfmdVXKM-640.jpg'
    Urls.Strings = (
      'https://content.jwplatform.com/videos/tfmdVXKM-fAbtfUu4.mp4'
      '')
    Align = alTop
    ScreenMask.Color = clBlack
    ExplicitLeft = 8
  end
  object UnimVideo2: TUnimVideo
    AlignWithMargins = True
    Left = 3
    Top = 199
    Width = 314
    Height = 148
    Hint = ''
    PosterUrl = 'https://content.jwplatform.com/thumbs/cSPHidoU-640.jpg'
    Urls.Strings = (
      'https://content.jwplatform.com/videos/cSPHidoU-fAbtfUu4.mp4')
    Align = alTop
    ScreenMask.Color = clBlack
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 64
    Images = {
      0400000000000000060E0000004E657749636F6E436C733B66613B0000000006
      08000000757365723B66613B00000000060D000000626F6F6B6D61726B733B66
      613B00000000060A0000006C6F636174653B66613B}
  end
end
