unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, uniBitBtn, unimBitBtn, uniEdit, unimEdit, uniGUIBaseClasses,
  uniLabel, unimLabel, unimPanel, uniSweetAlert, uniImageList, uniImage,
  uniDBImage, unimDBImage, uniFileUpload, unimFileUpload, DB, unimButton,
  Vcl.Imaging.jpeg, unimImage, Vcl.Imaging.pngimage, uniPanel, uniHTMLFrame,
  unimHTMLFrame;

type
  TUnimLoginForm1 = class(TUnimLoginForm)
    UnimBitBtn1: TUnimBitBtn;
    edSenha: TUnimEdit;
    UniNativeImageList1: TUniNativeImageList;
    UniSweetAlert1: TUniSweetAlert;
    DataSourceUsuario: TDataSource;
    EdUsuario: TUnimEdit;
    lbAberto: TUnimLabel;
    lbFehado: TUnimLabel;
    CntPnlTop: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    UnimLabel2: TUnimLabel;
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimLoginFormShow(Sender: TObject);
    procedure UnimBitBtn2Click(Sender: TObject);
    procedure UnimFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure lbFehadoClick(Sender: TObject);
    procedure lbAbertoClick(Sender: TObject);
    procedure UnimLoginFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimLoginForm1: TUnimLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Mainm, udados, ServerModule,
  formFotos;

function UnimLoginForm1: TUnimLoginForm1;
begin
  Result := TUnimLoginForm1(UniMainModule.GetFormInstance(TUnimLoginForm1));
end;

procedure TUnimLoginForm1.lbFehadoClick(Sender: TObject);
begin
    edSenha.PasswordChar := #0 ;
    lbFehado.Visible := False ;
    lbAberto.Visible := True;

end;

procedure TUnimLoginForm1.lbAbertoClick(Sender: TObject);
begin
    edSenha.PasswordChar := '*' ;
    lbFehado.Visible := True ;
    lbAberto.Visible := False ;

end;

procedure TUnimLoginForm1.UnimBitBtn1Click(Sender: TObject);
begin

     dmDados.FDQueryCadastroUsuario.Open;
      if dmDados.FDQueryCadastroUsuario.Locate('NOME', EdUsuario.Text, []) then
      begin
        if dmDados.FDQueryCadastroUsuarioSENHA.Value <> edSenha.Text then
        begin
//        ShowMessage('ATENÇÃO: USUARIO ou SENHA INVÁLIDA.');
          UniSweetAlert1.Title            := 'ATENÇÃO';
          UniSweetAlert1.InputType        := ItNone;
          UniSweetAlert1.AlertType        := atInfo;
          UniSweetAlert1.ShowCancelButton := False;
          UniSweetAlert1.Show('Usuario / Senha Incorreta !') ;
        exit;
        end;
      end
      else
      begin
//        ShowMessage('ATENÇÃO: USUARIO ou SENHA INVÁLIDA.');
        UniSweetAlert1.InputType := ItNone;
        UniSweetAlert1.AlertType := atWarning;
        UniSweetAlert1.ShowCancelButton := False;
        UniSweetAlert1.Title := 'ATENÇÃO';
        UniSweetAlert1.Show('Usuario / Senha Incorreta');
        edUsuario.SetFocus;
        exit;
      end;

      UniSweetAlert1.InputType := ItNone;
      UniSweetAlert1.AlertType := atSuccess;
      UniSweetAlert1.ShowCancelButton := False;
      UniSweetAlert1.ConfirmButtonText := 'Ok';
      UniSweetAlert1.Title := 'Senha';
      UniSweetAlert1.Show('Aprovada');
      ModalResult := mrOk;

end;

procedure TUnimLoginForm1.UnimBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TUnimLoginForm1.UnimFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
begin
 with UniMainModule do
    if dmDados.FDQueryUsuario.Active then
    begin
      dmDados.FDQueryUsuario.Edit;
      try
          TBlobField(dmDados.FDQueryUsuario.FieldByName('FOTOS')).LoadFromStream(AStream);
//          TBlobField(dmDados.FDQueryUsuario.FieldByName('FOTOS')).LoadFromFile(UnimFileUpload1.FileName);
//          dmDados.FDQueryUsuario.Post;
      except
        dmDados.FDQueryUsuario.Cancel;
        raise;
      end;
    end;
end;

procedure TUnimLoginForm1.UnimLoginFormCreate(Sender: TObject);
begin
 lbAberto.Visible := False;
end;

procedure TUnimLoginForm1.UnimLoginFormShow(Sender: TObject);
begin

    EdUsuario.SetFocus;

end;

initialization
  RegisterAppFormClass(TUnimLoginForm1);

end.
