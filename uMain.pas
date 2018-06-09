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
    PageControl1: TPageControl;
    tsParameters: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    Label4: TLabel;
    DBEditEh3: TDBEditEh;
    DBGridEh1: TDBGridEh;
    procedure FormActivate(Sender: TObject);
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

end.
