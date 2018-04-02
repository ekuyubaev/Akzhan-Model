unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.StdCtrls, DBGridEh, DBCtrlsEh, Vcl.Mask,
  DBLookupEh;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    PageControl1: TPageControl;
    tsParameters: TTabSheet;
    tsSensorsChoice: TTabSheet;
    tsSchema: TTabSheet;
    N6: TMenuItem;
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
    DBComboBoxEh1: TDBComboBoxEh;
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  tsSchema.TabVisible := false;
  tsParameters.TabVisible := false;
  tsSensorsChoice.TabVisible := false;
  tsSchema.Show;
  dm.connect;
end;

procedure TfrmMain.N2Click(Sender: TObject);
begin
  tsParameters.Show;
end;

procedure TfrmMain.N3Click(Sender: TObject);
begin
  tsSensorsChoice.Show;
end;

procedure TfrmMain.N5Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.N6Click(Sender: TObject);
begin
  tsSchema.Show;
end;

end.
