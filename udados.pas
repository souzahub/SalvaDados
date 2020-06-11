unit udados;

interface

uses
  SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TdmDados = class(TDataModule)
    FDConnection1: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDQueryUsuario: TFDQuery;
    FDQueryUsuarioID: TIntegerField;
    FDQueryUsuarioSENHA: TStringField;
    FDQueryUsuarioUSUARIO: TStringField;
    FDQueryUsuarioTIPO: TStringField;
    FDQueryUsuarioEMAIL: TStringField;
    FDQueryUsuarioNOME: TStringField;
    FDQueryUsuarioFOTOS: TBlobField;
    FDQueryCadastroUsuario: TFDQuery;
    FDQueryCadastroUsuarioID: TIntegerField;
    FDQueryCadastroUsuarioNOME: TStringField;
    FDQueryCadastroUsuarioSENHA: TStringField;
    FDQueryUsuarioVALOR: TFloatField;
    procedure tbUsuarioSENHAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function dmDados: TdmDados;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function dmDados: TdmDados;
begin
  Result := TdmDados(UniMainModule.GetModuleInstance(TdmDados));
end;

procedure TdmDados.tbUsuarioSENHAGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DisplayText then
    Text := 'Senha';
end;

initialization
  RegisterModuleClass(TdmDados);

end.
