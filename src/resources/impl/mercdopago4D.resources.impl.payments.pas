unit mercdopago4D.resources.impl.payments;

interface

uses
  System.SysUtils,
  mercdopago4D.resources.interfaces,
  mercdopago4D.interfaces,
  mercdopago4D.http.interfaces,
  mercdopago4D.serializable.paginationpayments;

type
  TPayments = class(TInterfacedObject, iPayments)
  const
    SEARCH = '?sort=date_created&criteria=desc&range=date_created&begin_date=NOW-%sDAYS&end_date=NOW';
  private
    FConf: iConfiguration;

    FHttpCliente: iHttpClient;
    FPayments: TPaginationPayments;
    FReturns: iReturns<TPaginationPayments>;

    constructor Create(Conf: iConfiguration);
    destructor Destroy; override;
  public
    class function New(Conf: iConfiguration): iPayments;
    function CreatePayment: iPayments;
    function GetPayments(Dias: String): iPayments;
    function GetPayment: iPayments;
    function UpdatePayment: iPayments;
    function Returns: iReturns<TPaginationPayments>;
  end;

implementation

uses
  mercdopago4D.http.httpclient,
  mercdopago4D.resources.enums, mercdopago4D.resources.impl.returns;


constructor TPayments.Create(Conf: iConfiguration);
begin
  FConf := Conf;
  FHttpCliente := THttpClient.New;
  FPayments:= TPaginationPayments.NEw;
end;

function TPayments.CreatePayment: iPayments;
begin
  Result := Self;
end;

destructor TPayments.Destroy;
begin

  inherited;
end;

function TPayments.GetPayment: iPayments;
begin
  Result := Self;
end;

function TPayments.GetPayments(Dias: String): iPayments;
begin
  Result := Self;
  FHttpCliente
    .BaseURL(Format(TResource.PAGAMENTOS_SEARCH.ToString+SEARCH, [Dias]))
    .Bearer(FConf.AccessToken)
    .Get;
end;

class function TPayments.New(Conf: iConfiguration): iPayments;
begin
  Result := Self.Create(Conf);
end;

function TPayments.Returns: iReturns<TPaginationPayments>;
begin
  if not Assigned(FReturns) then
    FReturns:= TReturns<TPaginationPayments>.New(FPayments,FHttpCliente.Content);
  Result := FReturns;
end;

function TPayments.UpdatePayment: iPayments;
begin
  Result := Self;
end;

end.
