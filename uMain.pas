unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.StdCtrls, DBGridEh, DBCtrlsEh, Vcl.Mask,
  DBLookupEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    PageControl1: TPageControl;
    tsParameters: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBMemoEh1: TDBMemoEh;
    Label4: TLabel;
    DBEditEh3: TDBEditEh;
    DBGridEh1: TDBGridEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    Label5: TLabel;
    DBEditEh4: TDBEditEh;
    procedure N5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    sensorCount :integer;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uDM, uDatchik;
const N = 20;

var datchiki: array of TDatchik;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  dm.connect;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  sensorCount := -1;
end;

procedure TfrmMain.N3Click(Sender: TObject);
var i : Integer;
begin
  if sensorCount > 0 then
  begin
    ShowMessage('Моделирование уже запущено! Сначала остановите моделирование.');
    exit;
  end;

  dm.qTemp.close;
  dm.qTemp.SQL.Text := 'Select * From Model';
  dm.qTemp.Open;

  sensorCount := dm.qTemp.RecordCount;

  setlength(datchiki, sensorCount);

  for i:= 1 to sensorCount do
  begin
      dm.qTemp.RecNo := i;

      datchiki[i-1] :=TDatchik.Create(true);
      datchiki[i-1].FreeOnTerminate:=true;
      datchiki[i-1].Priority:=tpLowest;
      datchiki[i-1].id_datchika := dm.qTemp.FieldByName('ID_datchik').AsInteger;
      datchiki[i-1].pokazanie := dm.qTemp.FieldByName('Pokazanie').AsFloat;
      datchiki[i-1].mx := dm.qTemp.FieldByName('Mx').AsFloat;
      datchiki[i-1].dx := dm.qTemp.FieldByName('Dx').AsFloat;
      datchiki[i-1].status := dm.qTemp.FieldByName('Active').AsVariant;

       if datchiki[i-1].status then
          datchiki[i-1].Resume;
  end;

  self.Caption := 'Моделирование показаний датчиков - [ЗАПУЩЕНО]';
end;

procedure TfrmMain.N4Click(Sender: TObject);
var i :integer;
begin
  if sensorCount > 0 then
  begin
    for i := 1 to sensorCount do
      datchiki[i-1].Terminate;
    sensorCount := -1;
    datchiki := nil;
  end;

  self.Caption := 'Моделирование показаний датчиков - [ОСТАНОВЛЕНО]';
end;

procedure TfrmMain.N5Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
