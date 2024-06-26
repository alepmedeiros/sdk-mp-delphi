unit mercdopago4D.resources.enums;

interface

uses
  System.SysUtils,
  TypInfo;

type
  TBaseURL = (BASEURL);

  TResource = (CANCELAMENTO, CLIENTES, CLIENTES_SEARCH, MEIOPAGAMENTO, OAUTH,
    PEDIDOSCOMERCIAIS, PEDIDOSCOMERCIAIS_SEARCH, PAGAMENTOS, PAGAMENTOS_SEARCH,
    PREFERENCIA, PREFERENCIA_SEARCH, REEMBOLSO, REEBOLSO_PAY, CARTOES, USUARIO_TESTE,
    TIPO_PAGAMENTO, CAIXA, PEDIDOS, PEDIDOS_PRESENCIAIS_V2, PEDIDOS_PRESENCIAIS,
    LOJAS_FISICAS, USUARIO_LOJA, BUSCA_LOJA, QR_DINAMICO, ASSINATURAS,
    ASSINATURAS_SEARCH, ASSINATURA_EXPORT, FATURAS, ASSINATURA_SEARCH,
    PLANOS, PLANOS_SEARCH, POINT, PAGAMENTO_POINT, POINT_INTENCAO, POINT_LISTA,
    WC_ADV_PAYMENTS, AGREEMENTS, AGREEMENTS_CANCEL);

  TTipoDevices = (PDV, STANDALONE);

  TTipoPagamento = (CARTAO_CREDITO, CARTAO_DEBITO, VOUCHER);

  TBaseURLHelper = record helper for TBaseURL
    function ToString: String;
  end;

  TResourceHelper = record helper for TResource
    function ToString: String;
  end;

  TTipoDevicesHelper = record helper for TTipoDevices
    function ToString: String;
    function ToEnum(Value: String): TTipoDevices;
  end;

  TTipoPagamentoHelper = record helper for TTipoPagamento
    function ToString: string;
  end;

implementation

function TBaseURLHelper.ToString: String;
begin
  case Self of
    BASEURL: Result := 'https://api.mercadopago.com';
  end;
end;

{ TResourcesHelper }

function TResourceHelper.ToString: String;
begin
  case Self of
    CANCELAMENTO: Result := TBaseURL.BASEURL.ToString + '/payments/%s';
    CLIENTES: Result := TBaseURL.BASEURL.ToString + '/v1/customers/%s';
    CLIENTES_SEARCH: Result := TBaseURL.BASEURL.ToString + '/v1/customers/search';
    MEIOPAGAMENTO: Result := TBaseURL.BASEURL.ToString + '/v1/payment_methods';
    OAUTH: Result := TBaseURL.BASEURL.ToString + '/oauth/token';
    PEDIDOSCOMERCIAIS: Result := TBaseURL.BASEURL.ToString + '/merchant_orders/%s';
    PEDIDOSCOMERCIAIS_SEARCH: Result := TBaseURL.BASEURL.ToString + '/merchant_orders/search';
    PAGAMENTOS: Result := TBaseURL.BASEURL.ToString + '/v1/payments/%s';
    PAGAMENTOS_SEARCH: Result := TBaseURL.BASEURL.ToString + '/v1/payments/search';
    PREFERENCIA: Result := TBaseURL.BASEURL.ToString + '/checkout/preferences/%s';
    PREFERENCIA_SEARCH: Result := TBaseURL.BASEURL.ToString + '/checkout/preferences/search';
    REEMBOLSO: Result := TBaseURL.BASEURL.ToString + '/v1/chargebacks/%s';
    REEBOLSO_PAY: Result := TBaseURL.BASEURL.ToString + '/v1/payments/%s/refunds/%s';
    CARTOES: Result := TBaseURL.BASEURL.ToString + '/v1/customers/%s/cards/%s';
    USUARIO_TESTE: Result := TBaseURL.BASEURL.ToString + '/users/test';
    TIPO_PAGAMENTO: Result := TBaseURL.BASEURL.ToString + '/v1/identification_types';
    CAIXA: Result := TBaseURL.BASEURL.ToString + '/pos/%s';
    PEDIDOS: Result := TBaseURL.BASEURL.ToString + '/mpmobile/instore/qr/%s/%s';
    PEDIDOS_PRESENCIAIS_V2: Result := TBaseURL.BASEURL.ToString + '/instore/qr/seller/collectors/%s/stores/%s/pos/%s/orders';
    PEDIDOS_PRESENCIAIS: Result := TBaseURL.BASEURL.ToString + '/instore/qr/seller/collectors/%s/pos/%s/orders';
    LOJAS_FISICAS: Result := TBaseURL.BASEURL.ToString + '/stores/%s';
    USUARIO_LOJA: Result := TBaseURL.BASEURL.ToString + '/users/%s/stores/%s';
    BUSCA_LOJA: Result := TBaseURL.BASEURL.ToString + '/users/%s/stores/search';
    QR_DINAMICO: Result := TBaseURL.BASEURL.ToString + '/instore/orders/qr/seller/collectors/%s/pos/%s/qrs';
    ASSINATURAS: Result := TBaseURL.BASEURL.ToString + '/preapproval/%s';
    ASSINATURAS_SEARCH: Result := TBaseURL.BASEURL.ToString + '/preapproval/search';
    ASSINATURA_EXPORT: Result := TBaseURL.BASEURL.ToString + '/preapproval/export';
    FATURAS: Result := TBaseURL.BASEURL.ToString + '/authorized_payments/%s';
    ASSINATURA_SEARCH: Result := TBaseURL.BASEURL.ToString + '/authorized_payments/search';
    PLANOS: Result := TBaseURL.BASEURL.ToString + '/preapproval_plan/%s';
    PLANOS_SEARCH: Result := TBaseURL.BASEURL.ToString + '/preapproval_plan/search';
    POINT: Result := TBaseURL.BASEURL.ToString + '/point/integration-api/devices/%s';
    PAGAMENTO_POINT: Result := TBaseURL.BASEURL.ToString + '/point/integration-api/devices/%s/payment-intents/%s';
    POINT_INTENCAO: Result := TBaseURL.BASEURL.ToString + '/point/integration-api/payment-intents/%s';
    POINT_LISTA: Result := TBaseURL.BASEURL.ToString + '/point/integration-api/payment-intents/events?startDate=%s&endDate=%S';
    WC_ADV_PAYMENTS: Result := TBaseURL.BASEURL.ToString + '/v1/advanced_payments/%s/refounds';
    AGREEMENTS: Result := TBaseURL.BASEURL.ToString + '/v2/wallet_connect/agreements/%s/payer_token';
    AGREEMENTS_CANCEL: Result := TBaseURL.BASEURL.ToString + '/v2/wallet_connect/agreements/%s';
  end;
end;

{ TTipoDevicesHelper }

function TTipoDevicesHelper.ToEnum(Value: String): TTipoDevices;
begin
  Result := TTipoDevices(GetEnumValue(TypeInfo(TTipoDevices), UpperCase(Value)));
end;

function TTipoDevicesHelper.ToString: String;
begin
  Result := GetEnumName(TypeInfo(TTipoDevices), Integer(Self));
end;

{ TTipoPagamentoHelper }

function TTipoPagamentoHelper.ToString: string;
begin
  case Self of
    CARTAO_CREDITO: Result := 'credit_card';
    CARTAO_DEBITO: Result := 'debit_card';
    VOUCHER: Result :=  'voucher_card';
  end;
end;

end.
