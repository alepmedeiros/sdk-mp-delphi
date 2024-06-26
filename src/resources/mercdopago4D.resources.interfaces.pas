unit mercdopago4D.resources.interfaces;

interface

uses
  System.Generics.Collections,
  Data.DB,
  mercdopago4D.serializable.interfaces,
  mercdopago4D.serializable.paginationdevices,
  mercdopago4D.serializable.token,
  mercdopago4D.resources.enums,
  mercdopago4D.serializable.devices,
  mercdopago4D.serializable.payments,
  mercdopago4D.serializable.paymentintents,
  mercdopago4D.serializable.event,
  mercdopago4D.serializable.chargebacks,
  mercdopago4D.serializable.refunds, 
  mercdopago4D.serializable.paginationpayments;

type
  iReturns<T: Class> = interface
    function serializable: T;
    function Serializables: TObjectList<T>;
  end;

  iOAuth = interface
    function GenerateToken: iOAuth;
    function RefreshToken: iOAuth;
    function Returns: iReturns<TTokenSerialize>;
  end;

  iPaymentsPoint = interface
    function CreatePaymentIntention(Value: TPaymentIntents; idTerminal: String)
      : iPaymentsPoint;
    function CancelPaymentIntention(idTerminal, GuuidPagamento: String)
      : iPaymentsPoint;
    function SearchPaymentIntent(IdPayment: String): iPaymentsPoint;
    function GetListPaymentIntentions(StartDate, EndDate: TDateTime)
      : iPaymentsPoint;
    function GetLastStatusPaymentsIntention: iPaymentsPoint;
    function Returns: iReturns<TPaymentIntents>;
    function Return: iReturns<TEvent>;
  end;

  iIntegrators = interface
    function UpdateIntegratorSettimgs: iIntegrators;
    function GetIntegratorSettimgs: iIntegrators;
  end;

  iRefounds = interface
    function GetChargeback(IdRefound: String): iRefounds;
    function CreateRefounds(IdPayment: String; Amount: Integer): iRefounds;
    function GetListRefounds(IdPayment: String): iRefounds;
    function GetRefoundsSpecific(IdPayment,IdRefound: String): iRefounds;
    function ReturnChargeback: iReturns<TChargebacks>;
    function ReturnRefounds: iReturns<TSerializableRefunds>;
  end;

  iDevices = interface
    function GetDevices: iDevices;
    function AlterOperation(Value: TTipoDevices; idTerminal: String): iDevices;
    function Returns: iReturns<TPaginationDevices>;
    function RetunrDevice: iReturns<TDevicesSerialize>;
  end;

  iPayments = interface
    function CreatePayment: iPayments;
    function GetPayments(Dias: String): iPayments;
    function GetPayment: iPayments;
    function UpdatePayment: iPayments;
    function Returns: iReturns<TPaginationPayments>;
  end;

  iResources = interface
    function OAuth: iOAuth;
    function devices: iDevices;
    function payments: iPaymentsPoint;
    function Refounds: iRefounds;
    function Payment: iPayments;
  end;

implementation

end.
