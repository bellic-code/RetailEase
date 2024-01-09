program RetailEase_p;

uses
  Forms,
  RetailEase_u in 'RetailEase_u.pas' {frmRetailEase};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRetailEase, frmRetailEase);
  Application.Run;
end.
