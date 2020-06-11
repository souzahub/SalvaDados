unit formFotos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniLabel, unimLabel, unimPanel, uniMultiItem, unimList, uniImage, unimImage,
  uniGUIBaseClasses, uniFileUpload, unimFileUpload, uniButton, uniBitBtn,
  unimBitBtn, Data.DB, uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid ;

type
  TuFormFotos = class(TUnimForm)
    DataSource1: TDataSource;
    btFotos: TUnimBitBtn;
    btAtualizar: TUnimBitBtn;
    UnimFileUpload1: TUnimFileUpload;
    UnimImage1: TUnimImage;
    UnimList: TUnimList;
    UnimPanel1: TUnimPanel;
    UnimLabel1: TUnimLabel;
    procedure btAtualizarClick(Sender: TObject);
    procedure btFotosClick(Sender: TObject);
    procedure UnimListClick(Sender: TObject);

  private

     procedure atualizarLista;

  public
    { Public declarations }
  end;

function uFormFotos: TuFormFotos;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, udados;

function uFormFotos: TuFormFotos;
begin
  Result := TuFormFotos(UniMainModule.GetFormInstance(TuFormFotos));
end;

procedure TuFormFotos.atualizarLista;
var
  FFolder : string;
  Sr : TSearchRec;
begin
      UnimList.Items.Clear;
      FFolder := UniServerModule.StartPath+'uploads\';

      if SysUtils.FindFirst(FFolder+'*.*', faAnyFile, Sr) = 0 then
      begin
        repeat
          if Sr.Attr and faDirectory = 0 then
            UnimList.Items.Add(Sr.Name);
        until SysUtils.FindNext(sr) <> 0;
        SysUtils.FindClose(sr);
      end;

      if UnimList.Items.Count>0 then
        UnimList.ItemIndex := 0;
end;

procedure TuFormFotos.btFotosClick(Sender: TObject);
begin

      UnimFileUpload1.Accept := 'image';
      UnimFileUpload1.Capture:='';
      UnimFileUpload1.Execute;
      btAtualizar.Click;
end;

procedure TuFormFotos.btAtualizarClick(Sender: TObject);
begin
     atualizarLista;

end;


procedure TuFormFotos.UnimListClick(Sender: TObject);
var
  mFile, mExt : string;
  W : Integer;
begin
    if UnimList.ItemIndex >= 0 then
    begin
      mFile := UniServerModule.StartPath+'uploads\' + UnimList.Text;
      mExt  := LowerCase(ExtractFileExt(mFile));
      if (mExt='.jpg') or (mExt='.bmp') or
          (mExt='.jpeg') or (mExt='.png') or (mExt='.gif') then
      begin
        W := UniApplication.ScreenWidth;
        if UniApplication.ScreenHeight < W then W := UniApplication.ScreenHeight;

        UnimImage1.Picture.LoadFromFile(mFile);

      end
      else
        ShowMessage('Not an image file!');
    end
    else
      ShowMessage('No image is selected!');
end;

end.

