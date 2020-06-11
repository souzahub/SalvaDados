program Project1;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  udados in 'udados.pas' {dmDados: TDataModule},
  uLogin in 'uLogin.pas' {UnimLoginForm1: TUnimLoginForm},
  uResultados in 'uResultados.pas' {formResultados: TUnimForm},
  uVideo in 'uVideo.pas' {formvideo: TUnimForm},
  uFuncoes in 'uFuncoes.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
