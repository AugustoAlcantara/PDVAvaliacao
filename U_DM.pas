unit U_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    fdCon: TFDConnection;
    QyPesqCli: TFDQuery;
    QyPesqProd: TFDQuery;
    QyPesqPed: TFDQuery;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    QyPesqClicodigo: TIntegerField;
    QyPesqClinome: TStringField;
    QyPesqClicidade: TStringField;
    QyPesqCliuf: TStringField;
    QyPesqProdcodigo: TIntegerField;
    QyPesqProddescricao: TStringField;
    QyPesqProdprecovenda: TSingleField;
    QyPesqPedidpedido: TIntegerField;
    QyPesqPeddataemissao: TDateTimeField;
    QyPesqPedcodcliente: TIntegerField;
    QyPesqPedvalortotal: TSingleField;
    procedure DataModuleCreate(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    function CriarConexao: TFDConnection;
    function CriarQuery(Conexao: TFDConnection; Sql: string): TFDQuery;
    procedure DestruirConexao(var Conexao: TFDConnection);
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


{ TDM }

function TDM.CriarQuery(Conexao: TFDConnection; Sql: string): TFDQuery;
begin
  Result            := TFDQuery.Create(Self);
  Result.Connection := Conexao;
  Result.SQL.Clear;
  Result.SQL.Text   := Sql;
end;

 function TDM.CriarConexao: TFDConnection;
begin
  Result                               := TFDConnection.Create(Self);
  Result.Params.Text                   := fdCon.Params.Text;
  Result.FetchOptions.Mode             := fmAll;
  Result.ResourceOptions.AutoReconnect := True;
  Result.LoginPrompt                   := False;
  Result.Connected                     := True;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  FDPhysMySQLDriverLink1.VendorLib     := GetCurrentDir+'\libmysql.dll';
  fdCon.Params.Database:='pdv_simples';
  fdCon.Params.UserName:='root';
  fdCon.Params.Password:='admin';
  fdCon.Params.DriverID:='MySQL';
//fdCon.Params.Server=localhost
end;

procedure TDM.DestruirConexao(var Conexao: TFDConnection);
begin
  Conexao.Close;
  FreeAndNil(Conexao);
end;

end.
