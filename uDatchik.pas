unit uDatchik;

interface

uses
  Classes, SysUtils, DateUtils, StdCtrls, Dialogs, ADODB;

type
  TDatchik = class(TThread)
    private
      { Private declarations }
      fID_datchik :integer;
      fMx :real;
      fDx:real;
      fPokazanie:real;
      fStatus :boolean;

    protected
      procedure Execute; override;

      procedure show_pokazanie;

    public
      property id_datchika: integer Read fid_datchik Write fid_datchik;
      property mx: real Read fMx Write fMx;
      property dx: real Read fDx Write fDx;
      property pokazanie: real Read fPokazanie Write fPokazanie;
      property status: boolean Read fStatus Write fStatus;
  end;


implementation

uses uDM, uMain, math;

Procedure TDatchik.show_pokazanie;
begin
  dm.qTemp.SQL.Text := 'Update Model set Pokazanie = '
                      + StringReplace(FloatToStrF(fPokazanie, fffixed, 10, 4), ',', '.', [ rfReplaceAll, rfIgnoreCase ])
                      + ' Where ID_datchik =' + IntToStr(fID_datchik);
  dm.qTemp.ExecSQL;
end;



procedure TDatchik.Execute;
Var dt :integer;
    ch_snyatie :integer;
begin
  { Place thread code here }

  while not terminated do
  begin
      Randomize;
      fpokazanie := fpokazanie +  RandG(fmx, fdx);

      Synchronize(show_pokazanie);

      sleep(1000);
  end;
end;

end.
