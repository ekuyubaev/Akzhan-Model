unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdm = class(TDataModule)
    DB_GATE: TADOConnection;
    qSensor: TADOQuery;
    dsSensor: TDataSource;
    qParameter: TADOQuery;
    dsParameter: TDataSource;
    qParameterID_model: TAutoIncField;
    qParameterID_datchik: TIntegerField;
    qParameterMx: TFloatField;
    qParameterDx: TFloatField;
    qParameterPokazanie: TFloatField;
    qParameterPrimechanie: TWideMemoField;
    qParameteractive: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure connect();
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
Procedure Tdm.connect;
begin
  if not DB_GATE.Connected then DB_GATE.Open('root','gdx4852T');
  if not qSensor.Active then qSensor.Open;
  if not qParameter.Active then qParameter.Open;
end;

end.
