program GeradorSenhaAleatoria;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FrmMains};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMains, FrmMains);
  Application.Run;
end.
