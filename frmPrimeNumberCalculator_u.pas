unit frmPrimeNumberCalculator_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Math, Vcl.Samples.Spin;

type
  TfrmPrimeNumberCalculator = class(TForm)
    pnlInput: TPanel;
    lblAzulPrimeNumCalculator: TLabel;
    lblEnter: TLabel;
    btnCalculate: TButton;
    bmpClose: TBitBtn;
    bmpRetry: TBitBtn;
    imgBackground: TImage;
    Image2: TImage;
    memOutput: TMemo;
    lblNumber: TLabel;
    spnNumber: TSpinEdit;
    procedure bmpRetryClick(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  frmPrimeNumberCalculator: TfrmPrimeNumberCalculator;

implementation

{$R *.dfm}




procedure TfrmPrimeNumberCalculator.bmpRetryClick(Sender: TObject);
begin
  memOutput.Clear;
  spnNumber.Clear;
end;

procedure TfrmPrimeNumberCalculator.btnCalculateClick(Sender: TObject);
var
  iValue, iNum : integer ;
  rNumVal : real;
  bPrimeNum : Boolean;
begin
//set values
  iValue := spnNumber.Value;
  rNumVal := spnNumber.Value;

  bPrimeNum := true;

// check if it's prime
  for iNum := 2 to trunc(sqrt(rNumVal)) do
  begin
  if iValue MOD iNum = 0 then
  bPrimeNum := false
  end;


  if bPrimeNum = false then
  memOutput.Lines.Add(IntToStr(iValue)+ ' is NOT a prime number!');

  if bPrimeNum = true then
  memOutput.Lines.Add(IntToStr(iValue) + ' IS a prime number!!');

end;

end.
