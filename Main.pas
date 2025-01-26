unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TFrmMains = class(TForm)
    EdtSenha: TEdit;
    Label1: TLabel;
    CkLetrasMaiusculas: TCheckBox;
    SpinEdit: TSpinEdit;
    CkLetrasMinusculas: TCheckBox;
    CkNumeros: TCheckBox;
    CkCaracteres: TCheckBox;
    BtnGerar: TButton;
    procedure BtnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMains: TFrmMains;

implementation

{$R *.dfm}


procedure TFrmMains.BtnGerarClick(Sender: TObject);
var
  i, vMAX: integer;
  vAdd: TStringBuilder;
  vSenha: string;

const
  cLetrasMinusculas = 'abcdefghijklmnopqrstwxyz';
  cLetrasMaiusculas = 'ABCDEFGHIJKLMNOPRSTWXYZ';
  cNumeros = '0123456789';
  cCaracteres = '!@#$%&*()-+';
begin
  if not(CkLetrasMaiusculas.Checked) and
    not(CkLetrasMinusculas.Checked) and
    not(CkNumeros.Checked) and
    not(CkCaracteres.Checked) then
  begin
    ShowMessage('Marque pelo menos uma opção!');
    Exit;
  end;

  if SpinEdit.Value = 0 then
  begin
    ShowMessage('Informe a Quantidade de Caracteres!');
    Exit;
  end;

  vAdd := TStringBuilder.Create('');
  try
    if CkLetrasMaiusculas.Checked then
      vAdd.Append(cLetrasMaiusculas);

    if CkLetrasMinusculas.Checked then
      vAdd.Append(cLetrasMinusculas);

    if CkNumeros.Checked then
      vAdd.Append(cNumeros);

    if CkCaracteres.Checked then
      vAdd.Append(cCaracteres);

    vSenha := vAdd.ToString;

    vMAX := SpinEdit.Value;
    EdtSenha.Text := '';
    for i := 1 to vMAX do
    BEGIN
      EdtSenha.Text := EdtSenha.Text + vSenha[Random(Length(vSenha)) + 1]
    END;
  finally
    FreeAndNil(vAdd);
  end;
end;

end.
