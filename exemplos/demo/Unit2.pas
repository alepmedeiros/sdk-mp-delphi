unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, Vcl.Imaging.jpeg, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Image1: TImage;
    Image2: TImage;
    edtClientId: TEdit;
    edtClientSecret: TEdit;
    edtRedirectUrl: TEdit;
    edtTGCode: TEdit;
    edtAccessToken: TEdit;
    edtRefreshToken: TEdit;
    btLimparCampos: TButton;
    btnAccessToken: TButton;
    btnRefreshToken: TButton;
    btnAutorizarApp: TButton;
    TabSheet5: TTabSheet;
    Panel1: TPanel;
    Label10: TLabel;
    Memo2: TMemo;
    Panel2: TPanel;
    Label9: TLabel;
    Image3: TImage;
    Image4: TImage;
    btListarDevices: TButton;
    GroupBox1: TGroupBox;
    rbPDV: TRadioButton;
    rbSTANDALONE: TRadioButton;
    btnModoOperacao: TButton;
    edtDevice: TEdit;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    lbParcelas: TLabel;
    lbCustoParcelas: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Image5: TImage;
    Image6: TImage;
    edtValor: TEdit;
    rbDebito: TRadioButton;
    rbCredito: TRadioButton;
    edtParcelas: TEdit;
    btCriarPagto: TButton;
    cbCustoParcelas: TComboBox;
    edtDescricao: TEdit;
    edtReferencia: TEdit;
    chkImprimir: TCheckBox;
    edtIntencaoPagto: TEdit;
    btStatusPagto: TButton;
    edtIdPagto: TEdit;
    edtStatusPagto: TEdit;
    btBuscarPagamento: TButton;
    edtCodAutorizacao: TEdit;
    edtTaxa: TEdit;
    edtValorRecebido: TEdit;
    edtBandeira: TEdit;
    Panel4: TPanel;
    Label15: TLabel;
    Memo3: TMemo;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    Image7: TImage;
    Image8: TImage;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edtIdPagtoEstorno: TEdit;
    edtValorEstorno: TEdit;
    edtIdEstorno: TEdit;
    edtStatusEstorno: TEdit;
    btCriarEstorno: TButton;
    btObterEstorno: TButton;
    edtIdPagtoEstornado: TEdit;
    edtValorEstornado: TEdit;
    Button1: TButton;
    edtIdCancelamento: TEdit;
    Panel6: TPanel;
    Label28: TLabel;
    Memo4: TMemo;
    TabSheet3: TTabSheet;
    Label32: TLabel;
    Image9: TImage;
    Image10: TImage;
    Memo5: TMemo;
    btListarTransacoes: TButton;
    Button2: TButton;
    edtStartDate: TDateTimePicker;
    edtEndDate: TDateTimePicker;
    Label33: TLabel;
    Label34: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure btnAutorizarAppClick(Sender: TObject);
    procedure btnAccessTokenClick(Sender: TObject);
    procedure btListarDevicesClick(Sender: TObject);
    procedure btnModoOperacaoClick(Sender: TObject);
    procedure btCriarPagtoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btBuscarPagamentoClick(Sender: TObject);
    procedure btStatusPagtoClick(Sender: TObject);
    procedure btCriarEstornoClick(Sender: TObject);
    procedure btObterEstornoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btListarTransacoesClick(Sender: TObject);
    procedure btnRefreshTokenClick(Sender: TObject);
    procedure btLimparCamposClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  shellapi,
  MercadoPago4D,
  mercdopago4D.resources.enums;

{$R *.dfm}

procedure TForm2.btBuscarPagamentoClick(Sender: TObject);
begin
  var lRetorno := MP4D.Resources
                .Payments.SearchPaymentIntent(edtIntencaoPagto.Text).Returns.Serializable;
  Memo3.Lines.Add('Busca dos pagamento:');
  Memo3.Lines.Add(EmptyStr);
  Memo3.Lines.Add('Id: '+lRetorno.Id);
  Memo3.Lines.Add('state: '+lRetorno.State);
  Memo3.Lines.Add('amount: '+lRetorno.Amount.ToString);
  Memo3.Lines.Add('device_id: '+lRetorno.DeviceId);
  Memo3.Lines.Add('payment: '+lRetorno.Payment.Id);
  Memo3.Lines.Add('external_reference: '+lRetorno.additionalinfo.ExternalReference);
  Memo3.Lines.Add('print_on_terminal: '+lRetorno.additionalinfo.PrintOnTerminal.ToString);
  Memo3.Lines.Add('ticket_number: '+lRetorno.additionalinfo.TicketNumber);
end;

procedure TForm2.btCriarEstornoClick(Sender: TObject);
begin
  var lRefound := MP4D.Resources
              .Refounds
                .CreateRefounds(edtIdPagto.Text, StrToIntDef(edtValorEstorno.Text,0)).ReturnRefounds.serializable;

  edtIdEstorno.Text := lRefound.Id.ToString;
  edtStatusEstorno.Text := lRefound.Status;

  Memo4.Lines.Add('Id: ' + lRefound.Id.ToString);
  Memo4.Lines.Add('payment_id: ' + lRefound.PaymentId.ToString);
  Memo4.Lines.Add('amount: ' + lRefound.Amount.ToString);
  Memo4.Lines.Add('metadata: ');

  for var I in lRefound.Metadata do
  begin
    Memo4.Lines.Add('metadata/SourceSync: ' + I.SourceSync);
    Memo4.Lines.Add('metadata/PaymentsGroupSize: ' + I.PaymentsGroupSize);
    Memo4.Lines.Add('metadata/PaymentsGroupTimeStamp: ' + I.PaymentsGroupTimeStamp);
    Memo4.Lines.Add('metadata/PaymentsGroupUUID: ' + I.PaymentsGroupUUID);
  end;

  Memo4.Lines.Add('source: ');

  for var I in lRefound.Source do
  begin
    Memo4.Lines.Add('source/name: ' + I.Name);
    Memo4.Lines.Add('source/id: ' + I.Id);
    Memo4.Lines.Add('source/type: ' + I.&Type);
  end;

  Memo4.Lines.Add('date_created: ' + lRefound.DateCreated);
  Memo4.Lines.Add('unique_sequence_number: ' + lRefound.UniqueSequenceNumber);
  Memo4.Lines.Add('refund_mode: ' + lRefound.RefoundMode);
  Memo4.Lines.Add('adjustment_amount: ' + lRefound.AdjuntmentAmount.ToString);
  Memo4.Lines.Add('status: ' + lRefound.Status);
  Memo4.Lines.Add('reason: ' + lRefound.Reason);
  Memo4.Lines.Add('label: ');

  for var I := 0 to Pred(lRefound.&Label.Count) do
    Memo4.Lines.Add('label'+I.ToString+' '+lRefound.&Label[I]);

  Memo4.Lines.Add('partition_details: ');

  for var I := 0 to Pred(lRefound.PartitionDetails.Count) do
    Memo4.Lines.Add('partition_details'+I.ToString+' '+lRefound.PartitionDetails[I]);
end;

procedure TForm2.btCriarPagtoClick(Sender: TObject);
begin
  var lPagamentos: TTipoPagamento := CARTAO_DEBITO;
  var lPayments := MP4D.Serializable.PaymentIntents;

  lPayments.Amount := 100;
  lPayments.Description := 'Pedido via Demo 02';
  lPayments.Payment.&Type := lPagamentos.ToString;
  lPayments.additionalinfo.ExternalReference := 'Pedido via Demo 02';
  lPayments.additionalinfo.PrintOnTerminal := True;

  var lReturn := MP4D.Resources.Payments.CreatePaymentIntention(lPayments,'GERTEC_MP35P__8701442252187847').Returns.Serializable;

  memo3.Lines.Add('additional_info/external_reference: ' + lReturn.additionalinfo.ExternalReference);
  memo3.Lines.Add('additional_info/external_reference: ' + lReturn.additionalinfo.ExternalReference);
  memo3.Lines.Add('additional_info/print_on_terminal: ' + lReturn.additionalinfo.PrintOnTerminal.ToString(True));
  memo3.Lines.Add('amount: ' + lReturn.Amount.ToString);
  memo3.Lines.Add('description: ' + lReturn.Description);
  memo3.Lines.Add('device_id: ' + lReturn.DeviceId);
  memo3.Lines.Add('id: ' + lReturn.Id);
  memo3.Lines.Add('payment/type: ' + lReturn.Payment.&Type);
  memo3.Lines.Add('payment_mode: ' + lReturn.PaymentMode);
end;

procedure TForm2.btLimparCamposClick(Sender: TObject);
begin
  edtClientId.Clear;
  edtClientSecret.Clear;
  edtRedirectUrl.Clear;
  edtTGCode.Clear;
  edtAccessToken.Clear;
  edtRefreshToken.Clear;
end;

procedure TForm2.btListarDevicesClick(Sender: TObject);
begin
  var lDevices := MP4D.Resources.Devices.GetDevices.Returns.Serializable;
  for var I in lDevices.Devices do
  begin
    Memo2.Lines.Add('Id: '+I.Id);
    Memo2.Lines.Add('Operation: '+I.OperatingMode);
  end;
end;

procedure TForm2.btListarTransacoesClick(Sender: TObject);
begin
  var lPayments := MP4D.Resources.Payment.GetPayments('30').Returns.Serializables;
  for var I in lPayments do
  begin
    for var J in I.Results do
    begin
      Memo5.lines.add(J.Id.ToString);
      Memo5.lines.add(J.DateCreated);
      Memo5.lines.add(J.DateApproved);
      Memo5.lines.add(J.DateLastUpdated);
      Memo5.lines.add(J.MoneyReleaseDate);
      Memo5.lines.add(J.PaymentMethodId);
      Memo5.lines.add(J.PaymentTypeID);
      Memo5.lines.add(J.Status);
      Memo5.lines.add(J.StatusDetail);
      Memo5.lines.add(J.CurrencyId);
      Memo5.lines.add(J.Desciption);
      Memo5.lines.add(J.CollectorId.ToString);
      Memo5.lines.add(J.Payer.Id);
      Memo5.lines.add(J.Payer.Email);
      Memo5.lines.add(J.Payer.Identification[0].&Type);
      Memo5.lines.add(J.Payer.Identification[0].Number);
      Memo5.lines.add(J.Payer.&Type);
      Memo5.lines.add(J.metadata.SourceSync);
      Memo5.lines.add(J.metadata.PaymentsGroupSize);
      Memo5.lines.add(J.metadata.PaymentsGroupTimeStamp);
      Memo5.lines.add(J.metadata.PaymentsGroupUUID);
    end;
  end;
end;

procedure TForm2.btnAccessTokenClick(Sender: TObject);
begin
  var lToken := MP4D.Resources
                  .OAuth
                    .GenerateToken.Returns.serializable;
  edtRefreshToken.Text := lToken.RefreshToken;
end;

procedure TForm2.btnAutorizarAppClick(Sender: TObject);
begin
ShellExecute(Handle,
            'open',
            PChar('https://auth.mercadopago.com.br/authorization?client_id='+MP4D.Configuration.ClientId+
            '&response_type=code&platform_id=mp&state=RANDOM_ID&redirect_uri='+MP4D.Configuration.RedirectURI+'')
            ,nil
            ,nil
            ,SW_SHOWMAXIMIZED);
end;

procedure TForm2.btnModoOperacaoClick(Sender: TObject);
begin
  var lTipo: TTipoDevices;

  if rbSTANDALONE.Checked then
  begin
    var lDevices := MP4D.Resources.Devices.AlterOperation(lTipo.ToEnum('STANDALONE'), edtDevice.text).RetunrDevice.Serializable;
    Memo2.Lines.Add(lDevices.OperatingMode);
    exit;
  end;

  var lDevices := MP4D.Resources.Devices.AlterOperation(lTipo.ToEnum('PDV'), edtDevice.text).RetunrDevice.Serializable;
  Memo2.Lines.Add(lDevices.OperatingMode);
end;

procedure TForm2.btnRefreshTokenClick(Sender: TObject);
begin
  var lToken := MP4D.Resources.OAuth.RefreshToken.Returns.serializable;
  edtAccessToken.Text := lToken.AccessToken;
  edtRefreshToken.Text := lToken.RefreshToken;
end;

procedure TForm2.btObterEstornoClick(Sender: TObject);
begin
  var lRefounds := MP4D.Resources.Refounds.GetRefoundsSpecific(edtIdEstorno.Text, edtIdPagtoEstorno.Text)
    .ReturnRefounds.serializable;

  edtIdPagtoEstornado.Text := lRefounds.PaymentId.ToString;
  edtValorEstornado.Text := lRefounds.Amount.ToString;

  Memo4.Lines.Add('Id: ' + lRefounds.Id.ToString);
  for var I in lRefounds.Metadata do
  begin
    Memo4.Lines.Add('metadata/SourceSync: ' + I.SourceSync);
    Memo4.Lines.Add('metadata/PaymentsGroupSize: ' + I.PaymentsGroupSize);
    Memo4.Lines.Add('metadata/PaymentsGroupTimeStamp: ' + I.PaymentsGroupTimeStamp);
    Memo4.Lines.Add('metadata/PaymentsGroupUUID: ' + I.PaymentsGroupUUID);
  end;

  for var I in lRefounds.Source do
  begin
    Memo4.Lines.Add('source/Name: ' + I.Name);
    Memo4.Lines.Add('source/Id: ' + I.Id);
    Memo4.Lines.Add('source/Type: ' + I.&Type);
  end;

  Memo4.Lines.Add('DateCreated: ' + lRefounds.DateCreated);

  Memo4.Lines.Add('UniqueSequenceNumber: ' + lRefounds.UniqueSequenceNumber);
  Memo4.Lines.Add('RefoundMode: ' + lRefounds.RefoundMode);
  Memo4.Lines.Add('AdjuntmentAmount: ' + lRefounds.AdjuntmentAmount.ToString);
  Memo4.Lines.Add('Status: ' + lRefounds.Status);
  Memo4.Lines.Add('Reason: ' + lRefounds.Reason);

  for var I := 0 to Pred(lRefounds.&Label.Count) do
    Memo4.Lines.Add('label: ' + lRefounds.&Label[I]);

  for var I := 0 to Pred(lRefounds.PartitionDetails.Count) do
    Memo4.Lines.Add('PartitionDetails: ' + lRefounds.PartitionDetails[I]);

end;

procedure TForm2.btStatusPagtoClick(Sender: TObject);
begin
  var lEventos := MP4D.Resources
        .Payments.GetListPaymentIntentions(edtStartDate.DateTime, edtEndDate.DateTime).Return.Serializable;

  for var I in lEventos.Events do
  begin
    Memo3.Lines.Add('Lista de Intenções de pagamentos');
    Memo3.Lines.Add(EmptyStr);
    Memo3.Lines.Add('Id: ' + I.PaymentIntentId);
    Memo3.Lines.Add('Status: ' + I.Status);
    Memo3.Lines.Add('Data da Criação: ' + I.CreatedOn);
  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  var lRefound := MP4D.Resources.payments.CancelPaymentIntention(edtDevice.Text, edtIntencaoPagto.Text).Returns.serializable;
  edtIdCancelamento.Text := lRefound.Id;

  Memo4.Lines.Add('additionalinfo/ExternalReference: ' + lRefound.additionalinfo.ExternalReference);
  Memo4.Lines.Add('additionalinfo/PrintOnTerminal: ' + lRefound.additionalinfo.PrintOnTerminal.ToString(True));
  Memo4.Lines.Add('additionalinfo/TicketNumber: ' + lRefound.additionalinfo.TicketNumber);

  Memo4.Lines.Add('Amount: ' + lRefound.Amount.ToString);
  Memo4.Lines.Add('Description: ' + lRefound.Description);
  Memo4.Lines.Add('Payment/Installments: ' + lRefound.Payment.Installments.ToString);
  Memo4.Lines.Add('Payment/type: ' + lRefound.Payment.&Type);
  Memo4.Lines.Add('Payment/InstallmentsCost: ' + lRefound.Payment.InstallmentsCost);
  Memo4.Lines.Add('Payment/VoucherType: ' + lRefound.Payment.VoucherType);
  Memo4.Lines.Add('Payment/Id: ' + lRefound.Payment.Id);

  Memo4.Lines.Add('Id: ' + lRefound.Id);
  Memo4.Lines.Add('DeviceId: ' + lRefound.DeviceId);
  Memo4.Lines.Add('State: ' + lRefound.State);
  Memo4.Lines.Add('PaymentMode: ' + lRefound.PaymentMode);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  if MessageDlg('Para cancelar o pagamento não deve ter sido registrado pela maquininha, deseja cancelar?',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    var lReturn := MP4D.Resources.Payments.CancelPaymentIntention(edtDevice.text,edtIntencaoPagto.text)
      .Returns.Serializable;
    Memo3.Lines.Add('Id: ' + lReturn.Id);
  end;
end;

end.
