unit mercdopago4D.resources.impl.paymentspoint;

interface

uses
  mercdopago4D.resources.interfaces, mercdopago4D.interfaces,
  mercdopago4D.serializable.payments, mercdopago4D.http.interfaces,
  mercdopago4D.serializable.paymentintents, mercdopago4D.serializable.event;

type
  TPaymentsPoint = class(TInterfacedObject, iPaymentsPoint)
  private
    FConf: iConfiguration;
    FPayments: TPaymentIntents;
    FReturns: iReturns<TPaymentIntents>;

    FEvent: TEvent;
    FReturn: iReturns<TEvent>;

    FHttpClient: iHttpClient;

    constructor Create(Conf: iConfiguration);
    destructor Destroy; override;
  public
    class function New(Conf: iConfiguration): iPaymentsPoint;

    function CreatePaymentIntention(Value: TPaymentIntents; idTerminal: String): iPaymentsPoint;
    function CancelPaymentIntention(idTerminal, GuuidPagamento: String): iPaymentsPoint;
    function SearchPaymentIntent(IdPayment: String): iPaymentsPoint;
    function GetListPaymentIntentions(StartDate, EndDate: TDateTime): iPaymentsPoint;
    function GetLastStatusPaymentsIntention: iPaymentsPoint;
    function Returns: iReturns<TPaymentIntents>;
    function Return: iReturns<TEvent>;
  end;

implementation

uses
  System.SysUtils,
  mercdopago4D.resources.enums,
  mercdopago4D.resources.impl.returns,
  mercdopago4D.http.httpclient,
  mercdopago4D.serializable;


function TPaymentsPoint.CancelPaymentIntention(idTerminal, GuuidPagamento: String): iPaymentsPoint;
begin
  Result := Self;
  FHttpClient.BaseURL(Format(TResource.PAGAMENTO_POINT.ToString,[idTerminal,GuuidPagamento]))
    .Bearer(FConf.AccessToken).Delete;
end;

constructor TPaymentsPoint.Create(Conf: iConfiguration);
begin
  FConf := Conf;
  FHttpClient:= THttpClient.New;
  FPayments:= TPaymentIntents.New;
  FEvent := TEvent.Create;
end;

function TPaymentsPoint.CreatePaymentIntention(Value: TPaymentIntents; idTerminal: String): iPaymentsPoint;
begin
  Result := Self;
  var lReturn:= TSerializable<TPaymentIntents>.New(Value);
  FHttpClient.BaseURL(Format(TResource.PAGAMENTO_POINT.ToString,[idTerminal,'']))
    .Bearer(FConf.AccessToken).Body(lReturn.ToJSON.ToString).Post;
end;

destructor TPaymentsPoint.Destroy;
begin
  FPayments.DisposeOf;
  inherited;
end;

function TPaymentsPoint.GetLastStatusPaymentsIntention: iPaymentsPoint;
begin
  Result := Self;
end;

function TPaymentsPoint.GetListPaymentIntentions(StartDate, EndDate: TDateTime): iPaymentsPoint;
begin
  Result := Self;
  FHttpClient.BaseURL(Format(TResource.POINT_LISTA.ToString,[FormatDateTime('yyyy-mm-dd', StartDate),
  FormatDateTime('yyyy-mm-dd', EndDate)])).Bearer(FConf.AccessToken).Get;
end;

class function TPaymentsPoint.New(Conf: iConfiguration): iPaymentsPoint;
begin
  Result := Self.Create(Conf);
end;

function TPaymentsPoint.Return: iReturns<TEvent>;
begin
  Result := TReturns<TEvent>.New(FEvent,FHttpClient.Content);
end;

function TPaymentsPoint.Returns: iReturns<TPaymentIntents>;
begin
  Result := TReturns<TPaymentIntents>.New(FPayments,FHttpClient.Content);
end;

function TPaymentsPoint.SearchPaymentIntent(IdPayment: String): iPaymentsPoint;
begin
  Result := Self;
  FHttpClient.BaseURL(Format(TResource.POINT_INTENCAO.ToString,[IdPayment]))
    .Bearer(FConf.AccessToken).Get;
end;

end.
