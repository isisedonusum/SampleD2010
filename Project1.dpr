program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  EInvoiceEasy in 'EInvoiceEasy.pas',
  ReportInvoiceList in 'ReportInvoiceList.pas',
  TaxPayerQuery in 'TaxPayerQuery.pas',
  Contracts in 'Contracts.pas',
  UblTr in 'UblTr.pas',
  tr.com.isisbilisim.types in 'tr.com.isisbilisim.types.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
