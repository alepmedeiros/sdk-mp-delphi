unit mercdopago4D.serializable.interfaces;

interface

uses
  System.JSON,
  System.Generics.Collections,
  Data.DB, mercdopago4D.serializable.devices,
  mercdopago4D.serializable.paymentintents;

type
  iSerializablePaymentIntents = interface;

  iSerializable<T: Class> = interface
    function ToJSON: TJSONObject;
    function ToArray(Value: TObjectList<T>): TJSONArray;
    function ToList(Value: TJSONArray): TObjectList<T>;
    function ToObject(Value: String): T;
  end;

  iSerializableDevices = interface
    function Id(Value: String): iSerializableDevices; overload;
    function Id: String; overload;
    function OperatingMode(Value: String): iSerializableDevices; overload;
    function OperatingMode: String; overload;
  end;

  iSerializablePayment = interface
    function Installments(Value: Integer): iSerializablePayment; overload;
    function Installments: Integer; overload;
    function &Type(Value: String): iSerializablePayment; overload;
    function &Type: String; overload;
    function InstallmentsCost(Value: String): iSerializablePayment; overload;
    function InstallmentsCost: String; overload;
    function VoucherType(Value: String): iSerializablePayment; overload;
    function VoucherType: String; overload;
    function Id(Value: String): iSerializablePayment; overload;
    function Id: String; overload;
    function &End: iSerializablePaymentIntents;
  end;

  iSerializableAdditionalInfo = interface
    function ExternalReference(Value: String): iSerializableAdditionalInfo; overload;
    function ExternalReference: String; overload;
    function PrintOnTerminal(Value: Boolean): iSerializableAdditionalInfo; overload;
    function PrintOnTerminal: Boolean; overload;
    function TicketNumber(Value: String): iSerializableAdditionalInfo; overload;
    function TicketNumber: String; overload;
    function &End: iSerializablePaymentIntents;
  end;

  iSerializablePaymentIntents = interface
    function AdditionalInfo: iSerializableAdditionalInfo;
    function Amount(Value: Integer): iSerializablePaymentIntents; overload;
    function Amount: Integer overload;
    function Description(Value: String): iSerializablePaymentIntents; overload;
    function Description: String; overload;
    function Payment: iSerializablePayment;
    function DeviceId(Value: String): iSerializablePaymentIntents; overload;
    function DeviceId: String; overload;
    function Id(Value: String): iSerializablePaymentIntents; overload;
    function Id: String; overload;
    function State(Value: String): iSerializablePaymentIntents; overload;
    function State: String; overload;
    function PaymentMode(Value: String): iSerializablePaymentIntents; overload;
    function PaymentMode: String; overload;
    function &End: iSerializablePaymentIntents;
  end;

  iSerialize = interface
    function Device: TDevicesSerialize;
    function PaymentIntents: TPaymentIntents;
  end;

implementation

end.
