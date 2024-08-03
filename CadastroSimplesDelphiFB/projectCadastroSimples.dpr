program projectCadastroSimples;

uses
  Vcl.Forms,
  Main in 'src\Tela\Main.pas' {FormMain},
  DataService_Impl in 'src\Services\DataService_Impl.pas' {DataService: TDataModule},
  Cadastro2 in 'src\Tela\Cadastro2.pas' {FormCadastro2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataService, DataService);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
