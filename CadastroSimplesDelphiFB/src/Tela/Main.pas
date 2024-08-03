unit Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.DBCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.Buttons;

type
  TFormMain = class(TForm)
    GroupBoxPessoa: TGroupBox;
    DBGridPessoa: TDBGrid;
    GroupBox1: TGroupBox;
    DBNavigatorEndereco: TDBNavigator;
    DBGridEndereco: TDBGrid;
    PanelPessoa: TPanel;
    BitBtnConfirm: TBitBtn;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    EditFilter: TEdit;
    DBNavigatorPessoa: TDBNavigator;
    BitBtnCadastro2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure EditFilterChange(Sender: TObject);
    procedure BitBtnCadastro2Click(Sender: TObject);
    procedure DBGridPessoaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses
  DataService_Impl, Cadastro2;

procedure TFormMain.BitBtnCadastro2Click(Sender: TObject);
begin
  try
    FormCadastro2 := TFormCadastro2.Create(Self);
    FormCadastro2.ShowModal;
  finally
    FreeAndNil(FormCadastro2);
  end;
end;

procedure TFormMain.DBGridPessoaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  RowIndex: Integer;
begin

   // Obtém o índice da linha
  RowIndex := TDBGrid(Sender).DataSource.DataSet.RecNo - 1;
  // Aplica o efeito zebra
  if (RowIndex mod 2) = 0 then
    TDBGrid(Sender).Canvas.Brush.Color := clSilver  // Cor para linhas pares
  else
    TDBGrid(Sender).Canvas.Brush.Color := clWhite;      // Cor para linhas ímpares

end;

procedure TFormMain.EditFilterChange(Sender: TObject);
begin
  if DataService.qryPessoa.Locate('nom_pessoa', EditFilter.Text, [loCaseInsensitive, loPartialKey]) then
  begin
    DataService.qryPessoa.Filter := 'nom_pessoa like ' + QuotedStr(EditFilter.Text + '%');
    DataService.qryPessoa.Filtered := True;
    Exit
  end;
  if (EditFilter.Text = EmptyStr) then
  begin
    DataService.qryPessoa.Filtered := False;
    DataService.qryPessoa.Filter := EmptyStr;
  end;
end;

procedure TFormMain.FormActivate(Sender: TObject);
begin
  EditFilter.SetFocus;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  DataService.qryPessoa.Close;
  DataService.qryPessoa.Open;
  DataService.qryEndereco.Close;
  DataService.qryEndereco.Open;
end;

procedure TFormMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 27 then Self.Close;
end;

end.
