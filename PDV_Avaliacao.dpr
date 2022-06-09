program PDV_Avaliacao;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {Frm_Principal},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  Controle_Pedido in 'Controles\Controle_Pedido.pas',
  U_Consulta in 'U_Consulta.pas' {Frm_Consulta},
  Controle_Pessoa in 'Controles\Controle_Pessoa.pas',
  Controle_Produto in 'Controles\Controle_Produto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TFrm_Consulta, Frm_Consulta);
  Application.Run;
end.
