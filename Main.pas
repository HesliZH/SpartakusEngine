unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFoLogin = class(TForm)
    txtLogin: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtSenha: TEdit;
    btnLogin: TButton;
    btnSair: TButton;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoLogin: TFoLogin;

implementation

{$R *.dfm}

procedure TFoLogin.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

end.
