unit uResultados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniLabel, unimLabel, uniGUIBaseClasses, unimPanel,
  uniBasicGrid, uniDBGrid, unimDBListGrid, uniBitBtn, unimBitBtn, Data.DB,
  uniDBNavigator, unimDBNavigator, unimDBGrid, uniSweetAlert, uniEdit, unimEdit,
  Vcl.Menus, uniMainMenu, uniImageList, uniPanel, uniHTMLFrame, unimHTMLFrame;

type
  TformResultados = class(TUnimForm)
    DataSourceUsuario: TDataSource;
    UnimDBListGrid1: TUnimDBListGrid;
    UnimPanel1: TUnimPanel;
    UnimLabel4: TUnimLabel;
    UniSweetAlert1: TUniSweetAlert;
    edBusca: TUnimEdit;
    lbAberto: TUnimLabel;
    UniNativeImageList1: TUniNativeImageList;
    UnimHTMLFrame1: TUnimHTMLFrame;
    procedure btSalvarClick(Sender: TObject);
    procedure UnimFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UnimLabel1Click(Sender: TObject);
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UnimDBListGrid1ClickHold(Sender: TObject);
    procedure UnimDBListGrid1DblClick(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure edBuscaChange(Sender: TObject);
    procedure lbAbertoClick(Sender: TObject);
    procedure UnimHTMLFrame1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UnimFormCreate(Sender: TObject);
  private
    { Private declarations }
     xDeletando, xSalvando : Boolean;
  public
    { Public declarations }
  end;

function formResultados: TformResultados;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uDados, Mainm;

function formResultados: TformResultados;
begin
  Result := TformResultados(UniMainModule.GetFormInstance(TformResultados));
end;

procedure TformResultados.btSalvarClick(Sender: TObject);
begin
    dmdados.FDQueryUsuario.Open;
end;

procedure TformResultados.edBuscaChange(Sender: TObject);
begin
    // pesquisa dinamica na tabela Usuario
     dmDados.FDQueryUsuario.SQL.Clear;
     dmDados.FDQueryUsuario.SQL.Add('select * from USUARIO where');
     dmDados.FDQueryUsuario.SQL.Add('(NOME LIKE  '+QuotedStr('%'+edBusca.Text+'%') );
     dmDados.FDQueryUsuario.SQL.Add(' or TIPO LIKE  '+QuotedStr('%'+edBusca.Text+'%') );
     dmDados.FDQueryUsuario.SQL.Add(')order by NOME');
     dmDados.FDQueryUsuario.Open;
end;

procedure TformResultados.lbAbertoClick(Sender: TObject);
begin
  Close;
  dmDados.FDQueryUsuario.Open();
end;

procedure TformResultados.UnimDBListGrid1ClickHold(Sender: TObject);
begin
  //  ShowMessage(dmDados.FDQueryUsuarioSENHA.Value);
   UniSweetAlert1.InputType := ItNone;
   UniSweetAlert1.AlertType := atSuccess;
   UniSweetAlert1.ShowCancelButton := False;
   UniSweetAlert1.ShowConfirmButton := False;
   UniSweetAlert1.ConfirmButtonText := 'Ok';
   UniSweetAlert1.Title := 'Sua Senha é';
   UniSweetAlert1.Show(dmDados.FDQueryUsuarioSENHA.Value );
end;

procedure TformResultados.UnimDBListGrid1DblClick(Sender: TObject);
begin
   xDeletando := true;
   xSalvando := False;
   UniSweetAlert1.InputType := ItNone;
   UniSweetAlert1.AlertType := atQuestion;
   UniSweetAlert1.ShowConfirmButton := True;
   UniSweetAlert1.ShowCancelButton := True;
   UniSweetAlert1.Title := 'Deseja Excluir ?';
   UniSweetAlert1.Show( dmDados.FDQueryUsuarioUSUARIO.Text );

end;

procedure TformResultados.UnimFormClose(Sender: TObject; var Action: TCloseAction);
begin
     //dmdados.FDQueryUsuario.Close;
end;

procedure TformResultados.UnimFormCreate(Sender: TObject);
begin
  UnimHTMLFrame1.HTML.LoadFromFile('./files/index.html');
end;

procedure TformResultados.UnimHTMLFrame1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
if EventName = 'valor1' then
  begin
    dmDados.FDQueryUsuario.Open();
    Close;
  end;
  if EventName = 'valor2' then
  begin
    xDeletando := true;
    xSalvando := False;
    UniSweetAlert1.InputType := ItNone;
    UniSweetAlert1.AlertType := atQuestion;
    UniSweetAlert1.ShowConfirmButton := True;
    UniSweetAlert1.ShowCancelButton := True;
    UniSweetAlert1.Title := 'Deseja Excluir ?';
    UniSweetAlert1.Show( dmDados.FDQueryUsuarioUSUARIO.Text );

  end;
  if EventName = 'valor3' then
  begin
    //  ShowMessage(dmDados.FDQueryUsuarioSENHA.Value);
   UniSweetAlert1.InputType := ItNone;
   UniSweetAlert1.AlertType := atSuccess;
   UniSweetAlert1.ShowCancelButton := False;
   UniSweetAlert1.ShowConfirmButton := False;
   UniSweetAlert1.ConfirmButtonText := 'Ok';
   UniSweetAlert1.Title := 'Sua Senha é';
   UniSweetAlert1.Show(dmDados.FDQueryUsuarioSENHA.Value );
  end;
end;

procedure TformResultados.UnimLabel1Click(Sender: TObject);
begin
  Close;
   dmDados.FDQueryUsuario.Open();
end;

procedure TformResultados.UniSweetAlert1Confirm(Sender: TObject);
begin
  if xDeletando then
   begin
     dmDados.FDQueryUsuario.delete ;
     dmDados.FDQueryUsuario.Refresh ;
     dmDados.FDQueryUsuario.Close();
     dmDados.FDQueryUsuario.Open();
     xDeletando := False;
   end;
end;

procedure TformResultados.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
   if xDeletando then
     begin
       dmDados.FDQueryUsuario.Cancel;
       dmDados.FDQueryUsuario.Close();
       dmDados.FDQueryUsuario.Open();
       xDeletando := False;
     end;
end;

end.
