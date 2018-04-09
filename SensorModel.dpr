program SensorModel;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uDM in 'uDM.pas' {dm: TDataModule},
  uDatchik in 'uDatchik.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
