unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniLabel, unimLabel, uniButton, uniBitBtn, unimBitBtn, Data.DB,
  uniGUIBaseClasses, uniEdit, uniDBEdit, unimDBEdit, unimEdit, ACBrBase, ACBrLCB,
  uniImageList, unimPanel, uniCheckBox, unimCheckBox, uniDBCheckBox,
  unimDBCheckBox, Vcl.Imaging.pngimage, uniImage, unimImage, unimVideo, uniSweetAlert,
  unimButton;

type
  TMainmForm = class(TUnimForm)
    DataSourceUsuario: TDataSource;
    UnimLabel2: TUnimLabel;
    lbNome: TUnimLabel;
    edEmail: TUnimEdit;
    edSenha: TUnimEdit;
    UnimLabel3: TUnimLabel;
    edUsuario: TUnimEdit;
    UnimLabel1: TUnimLabel;
    edTipo: TUnimEdit;
    edNome: TUnimEdit;
    UnimLabel5: TUnimLabel;
    UnimBitBtn1: TUnimBitBtn;
    UnimPanel1: TUnimPanel;
    UnimLabel4: TUnimLabel;
    UnimBitBtn2: TUnimBitBtn;
    UniSweetAlert1: TUniSweetAlert;
    UnimLabel6: TUnimLabel;
    UnimLabel7: TUnimLabel;
    UnimLabel8: TUnimLabel;
    UnimLabel9: TUnimLabel;
    UnimLabel10: TUnimLabel;
    lbAberto: TUnimLabel;
    lbFehado: TUnimLabel;
    UnimLabel11: TUnimLabel;
    UnimLabel12: TUnimLabel;
    editValor: TUnimEdit;
    UnimLabel13: TUnimLabel;
    UnimLabel14: TUnimLabel;
    btSalvar: TUnimBitBtn;
    procedure btSalvarClick(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure UnimFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimBitBtn2Click(Sender: TObject);
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure lbAbertoClick(Sender: TObject);
    procedure lbFehadoClick(Sender: TObject);
    procedure UnimLabel13Click(Sender: TObject);
    procedure UnimLabel14Click(Sender: TObject);
  private
    { Private declarations }
     xDeletando, xSalvando : Boolean;
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication,udados, uResultados, uVideo,
  formFotos, uFuncoes, uLogin;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.btSalvarClick(Sender: TObject);
begin
 if edNome.Text = '' then
    begin
       UniSweetAlert1.InputType := ItNone;
       UniSweetAlert1.AlertType := atWarning;
       UniSweetAlert1.ShowCancelButton := False;
       UniSweetAlert1.Title := 'ATENÇÃO';
       UniSweetAlert1.Show('Nome Obrigatório');
       edNome.SetFocus;
       exit;
    end;

  //  Salvando com SweetAlert1
     xDeletando := False;
     xSalvando := True;
     UniSweetAlert1.Title := 'Deseja salvar esse Usuario ?';
     UniSweetAlert1.AlertType := atQuestion;
     UniSweetAlert1.AlertType := atQuestion;
     UniSweetAlert1.ShowConfirmButton := True;
     UniSweetAlert1.ShowCancelButton := True;
     UniSweetAlert1.Show( edNome.Text );
end;

procedure TMainmForm.lbAbertoClick(Sender: TObject);
begin
    edSenha.PasswordChar := '*' ;
    lbFehado.Visible := True ;
    lbAberto.Visible := False ;
end;

procedure TMainmForm.lbFehadoClick(Sender: TObject);
begin
    edSenha.PasswordChar := #0 ;
    lbFehado.Visible := False ;
    lbAberto.Visible := True;
end;

procedure TMainmForm.btSairClick(Sender: TObject);
begin
    Close;
end;

procedure TMainmForm.UnimBitBtn1Click(Sender: TObject);
begin
      formvideo.ShowModal;
end;

procedure TMainmForm.UnimBitBtn2Click(Sender: TObject);
begin
  uFormFotos.ShowModal;
end;

procedure TMainmForm.UnimFormClose(Sender: TObject; var Action: TCloseAction);
begin
// dmDados.FDQueryUsuario.Close();
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
    dmDados.FDQueryUsuario.Open();
    lbAberto.Visible := False;
    editValor.Clear;
end;

procedure TMainmForm.UnimLabel13Click(Sender: TObject);
begin
  formResultados.ShowModal;
end;

procedure TMainmForm.UnimLabel14Click(Sender: TObject);
begin
  UnimLoginForm1.ShowModal;
end;

procedure TMainmForm.UniSweetAlert1Confirm(Sender: TObject);
begin
     if xDeletando then
   begin
     dmDados.FDQueryUsuario.delete ;
     dmDados.FDQueryUsuario.Refresh ;
     dmDados.FDQueryUsuario.Close();
     dmDados.FDQueryUsuario.Open();
     xDeletando := False;
   end;

   if xSalvando then
   begin
     dmDados.FDQueryUsuario.Open;
     dmDados.FDQueryUsuario.Append;

     dmDados.FDQueryUsuarioNOME.AsString:= edNome.Text;
     dmDados.FDQueryUsuarioUSUARIO.AsString:= edUsuario.Text;
     dmDados.FDQueryUsuarioEMAIL.AsString:= edEmail.Text;
     dmDados.FDQueryUsuarioSENHA.AsString := edSenha.Text;
     dmDados.FDQueryUsuarioTIPO.AsString := edTipo.Text;
//     dmDados.FDQueryUsuarioVALOR.Value:= StrToFloat( TiraStr( editValor.Text, '.') );
     dmDados.FDQueryUsuario.post ;
//
     edNome.SetFocus;
     edNome.Clear;
     edUsuario.Clear;
     edEmail.Clear;
     edTipo.Clear;
     edSenha.Clear;
     editValor.Clear;

     dmDados.FDQueryUsuario.Close();
     dmDados.FDQueryUsuario.Open();
     xSalvando := False;



   end;

end;

procedure TMainmForm.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
    if xSalvando then
     begin
       dmDados.FDQueryUsuario.Cancel;
       edNome.Clear;
       edUsuario.Clear;
       edEmail.Clear;
       edTipo.Clear;
       edSenha.Clear;
       edSenha.Clear;
       edNome.SetFocus;
       dmDados.FDQueryUsuario.Close();
       dmDados.FDQueryUsuario.Open();
       xSalvando := False;
     end;

end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
