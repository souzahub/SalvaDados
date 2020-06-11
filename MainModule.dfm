object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Theme = 'gray'
  TouchTheme = 'material'
  DocumentKeyOptions = []
  BrowserOptions = [boDisableMouseRightClick, boDisableChromeRefresh]
  MonitoredKeys.Keys = <>
  ServerMessages.UnavailableErrMsg = 'Erro de comunica'#231#227'o'
  ServerMessages.LoadingMessage = 'Carregando...'
  ServerMessages.ExceptionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    
      '<p style="text-align:center;color:#A05050">Ocorreu uma exce'#231#227'o n' +
      'o aplicativo:</p>'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reinicie o aplicativo</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reinicie o aplicativo</a></p>'
    '</body>'
    '</html>')
  ServerMessages.TerminateTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reinicie o aplicativo</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionMessage = 'Sess'#227'o inv'#225'lida ou tempo limite da sess'#227'o.'
  ServerMessages.TerminateMessage = 'Sess'#227'o da Web encerrada.'
  ModernToolkitModes.Phone = mtNormal
  DesktopViewport.Scrollable = False
  Title = 'SR'
  Height = 246
  Width = 271
end
