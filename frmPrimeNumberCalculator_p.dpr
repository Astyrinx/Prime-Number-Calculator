program frmPrimeNumberCalculator_p;

uses
  Vcl.Forms,
  frmPrimeNumberCalculator_u in 'frmPrimeNumberCalculator_u.pas' {frmPrimeNumberCalculator};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrimeNumberCalculator, frmPrimeNumberCalculator);
  Application.Run;
end.
