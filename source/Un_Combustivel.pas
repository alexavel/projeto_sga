unit Un_Combustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Un_MDDialog, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmCombustivel = class(TMD_Dialog)
    Label1: TLabel;
    cmb_codigo: TEdit;
    cmb_nome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    cmb_vlrlit: TMaskEdit;
    procedure cmb_vlrlitKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCombustivel: TfrmCombustivel;

implementation

{$R *.dfm}

uses Un_Funcoes;

procedure TfrmCombustivel.cmb_vlrlitKeyPress(Sender: TObject; var Key: Char);
Var
  cKey: String;
begin
  inherited;
  cKey:=Key;
  MoedaKeyEdit( Key, Sender );
  Key := #0 ;

end;

end.
