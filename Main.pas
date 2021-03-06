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
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoLogin: TFoLogin;

implementation

{$R *.dfm}

uses DmLogin, Principal;

procedure TFoLogin.btnLoginClick(Sender: TObject);
begin
  if txtLogin.Text = '' then
  begin
    Application.MessageBox('Preencha o campo login!', 'Aten??o!', MB_OK);
  end
  else
    if txtSenha.Text = '' then
    begin
      Application.MessageBox('Preencha a sua senha por favor', 'Aten??o', MB_OK);
    end
    else
    begin
        DataModuleUsuarios.QueryUsuarios.SQL.Add('SELECT CODIGO FROM USUARIOS ');
        DataModuleUsuarios.QueryUsuarios.SQL.Add('WHERE LOGIN = ' + QuotedStr(txtLogin.Text));
        DataModuleUsuarios.QueryUsuarios.SQL.Add(' AND SENHA = ' + QuotedStr(txtSenha.Text));
        DataModuleUsuarios.QueryUsuarios.Open();
        if DataModuleUsuarios.QueryUsuarios.RowsAffected > 0 then
        begin
          Self.Close;
          foPrincipal.Show;
        end
        else
          Application.MessageBox('Usu?rio n?o localizado', 'Erro ao logar', MB_OK);
    end;
end;

procedure TFoLogin.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

end.
