program frmRetailEase_p;

uses
  Forms,
  frmRetailEase_u in 'frmRetailEase_u.pas' {frmRetailEase};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRetailEase, frmRetailEase);
  Application.Run;
end.
