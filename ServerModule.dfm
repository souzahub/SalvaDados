object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Port = 8080
  Title = 'Salva Registro'
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomFiles.Strings = (
    'files/css/estilo.css')
  CustomCSS.Strings = (
    ''
    '/* tela de Login elegante*/'
    '.pnlround {'
    '    border-radius: 0px 0px 0px 100px;'
    '    border-color:#fff;'
    '    flex-direction: column;'
    '}'
    ''
    '.bntLogin'
    '{'
    ' background:#2196f3 !important;'
    ' color:#fff !important;'
    ' -webkit-transition: background 0.5s ease-in-out;'
    ' transition: background 0.5s ease-in-out;'
    '}'
    ''
    '.bntLogin:hover'
    '{'
    ' background:#828282 !important;'
    ' -webkit-transition: background 0.5s ease-in-out;'
    ' transition: background 0.5s ease-in-out;'
    '}'
    '/*     /*'
    ''
    ' /*linha da orda lateral */'
    '/*.product-info {'
    '   border-left: .20rem solid #4e73df !important;    '
    '} */ '
    '.product-info h1 {'
    '   font-size: 15px ;'
    '   color:#004080 ;'
    '}'
    ''
    '.product-info p {'
    '   color:#001080 ;'
    '   line-height: 24px ;'
    '   margin-top: 5px ;'
    '}'
    ''
    '.product-info p a {'
    '   color:#069 ;'
    '} '
    ''
    ' /*Imagens e Bot'#245'es aredondares com CSS/ cl  */'
    '.borda, .circulo img {'
    ' border-radius:2px;  '
    '} '
    ''
    ' .grid-item-ativo {'
    '  background-color: #F0F8FF !important;'
    '}'
    ''
    '/*.x-tool .x-icon-el {'
    '    color: '
    '    #aa0606;'
    '    width: 16px;'
    '    height: 16px;'
    '    background-color: #000;'
    '} '
    ''
    ''
    ''
    '')
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
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem '
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 305
  Width = 279
end
