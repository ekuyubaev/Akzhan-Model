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
    tsSchema: TTabSheet;
    Image1: TImage;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBMemoEh1: TDBMemoEh;
    Edit1: TEdit;
    Label4: TLabel;
    DBEditEh3: TDBEditEh;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    Label5: TLabel;
    DBEditEh4: TDBEditEh;
    Edit3: TEdit;
    Edit4: TEdit;
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
  Edit1.Visible := false;
  Edit2.Visible := false;

  tsSchema.Show;
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

      datchiki[i] :=TDatchik.Create(true);
      datchiki[i].FreeOnTerminate:=true;
      datchiki[i].Priority:=tpLowest;
      datchiki[i].id_datchika := dm.qTemp.FieldByName('ID_datchik').AsInteger;
      datchiki[i].pokazanie := dm.qTemp.FieldByName('Pokazanie').AsFloat;
      datchiki[i].mx := dm.qTemp.FieldByName('Mx').AsFloat;
      datchiki[i].dx := dm.qTemp.FieldByName('Dx').AsFloat;
      datchiki[i].status := dm.qTemp.FieldByName('Active').AsVariant;
      datchiki[i].nomerEdit := dm.qTemp.FieldByName('NomerEdit').AsInteger;

       if datchiki[i].status then
       begin
          TEdit(FindComponent('Edit'+IntToStr(datchiki[i].nomerEdit))).Color := clLime;
          TEdit(FindComponent('Edit'+IntToStr(datchiki[i].nomerEdit))).Visible := true;
          datchiki[i].Resume;
       end
          else
       begin
          TEdit(FindComponent('Edit'+ IntToStr(datchiki[i].nomerEdit))).Visible := false;
       end;
  end;

  tsSchema.Show;
end;

procedure TfrmMain.N4Click(Sender: TObject);
var i :integer;
begin
  if sensorCount > 0 then
  begin
    for i := 1 to sensorCount do
    begin
      TEdit(FindComponent('Edit'+ IntToStr(datchiki[i].nomerEdit))).Visible := false;
      datchiki[i].Terminate;
    end;
    sensorCount := -1;
    datchiki := nil;
  end;
end;

procedure TfrmMain.N5Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
