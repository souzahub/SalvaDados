unit uVideo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, unimVideo, uniToolBar, unimToolbar, uniButton, unimButton,
  unimPanel, uniImageList, uniLabel, unimLabel, uniBitBtn, unimBitBtn;

type
  Tformvideo = class(TUnimForm)
    UniNativeImageList1: TUniNativeImageList;
    UnimVideo1: TUnimVideo;
    painelmenu: TUnimPanel;
    UnimLabel4: TUnimLabel;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimBitBtn3: TUnimBitBtn;
    UnimVideo2: TUnimVideo;
    procedure UnimBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function formvideo: Tformvideo;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uDados;

function formvideo: Tformvideo;
begin
  Result := Tformvideo(UniMainModule.GetFormInstance(Tformvideo));
end;

procedure Tformvideo.UnimBitBtn3Click(Sender: TObject);
begin
   Close;
   dmDados.FDQueryUsuario.Open();
end;

end.
