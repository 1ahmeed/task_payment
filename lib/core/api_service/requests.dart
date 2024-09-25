// To parse this JSON data, do
//
//     final paymentKeyRequest = paymentKeyRequestFromJson(jsonString);

import 'dart:convert';

PaymentKeyRequest paymentKeyRequestFromJson(String str) => PaymentKeyRequest.fromJson(json.decode(str));

String paymentKeyRequestToJson(PaymentKeyRequest data) => json.encode(data.toJson());

class PaymentKeyRequest {
  String? authToken;
  String? amountCents;
  String? currency;
  String? orderId;
  String? expiration;
  BillingData? billingData;
  String? integrationId;
  String? data;
  String? lockOrderWhenPaid;

  PaymentKeyRequest({
    this.authToken,
    this.amountCents,
    this.currency,
    this.orderId,
    this.expiration,
    this.billingData,
    this.integrationId,
    this.data,
    this.lockOrderWhenPaid,
  });

  factory PaymentKeyRequest.fromJson(Map<String, dynamic> json) => PaymentKeyRequest(
    authToken: json["auth_token"],
    amountCents: json["amount_cents"],
    currency: json["currency"],
    orderId: json["order_id"],
    expiration: json["expiration"],
    billingData: json["billing_data"] == null ? null : BillingData.fromJson(json["billing_data"]),
    integrationId: json["integration_id"],
    data: json["data"],
    lockOrderWhenPaid: json["lock_order_when_paid"],
  );

  Map<String, dynamic> toJson() => {
    "auth_token": authToken,
    "amount_cents": amountCents,
    "currency": currency,
    "order_id": orderId,
    "expiration": expiration,
    "billing_data": billingData?.toJson(),
    "integration_id": integrationId,
    "data": data,
    "lock_order_when_paid": lockOrderWhenPaid,
  };
}

class BillingData {
  String? apartment;
  String? email;
  String? floor;
  String? firstName;
  String? street;
  String? building;
  String? phoneNumber;
  String? shippingMethod;
  String? postalCode;
  String? city;
  String? country;
  String? lastName;
  String? state;

  BillingData({
    this.apartment,
    this.email,
    this.floor,
    this.firstName,
    this.street,
    this.building,
    this.phoneNumber,
    this.shippingMethod,
    this.postalCode,
    this.city,
    this.country,
    this.lastName,
    this.state,
  });

  factory BillingData.fromJson(Map<String, dynamic> json) => BillingData(
    apartment: json["apartment"],
    email: json["email"],
    floor: json["floor"],
    firstName: json["first_name"],
    street: json["street"],
    building: json["building"],
    phoneNumber: json["phone_number"],
    shippingMethod: json["shipping_method"],
    postalCode: json["postal_code"],
    city: json["city"],
    country: json["country"],
    lastName: json["last_name"],
    state: json["state"],
  );

  Map<String, dynamic> toJson() => {
    "apartment": apartment,
    "email": email,
    "floor": floor,
    "first_name": firstName,
    "street": street,
    "building": building,
    "phone_number": phoneNumber,
    "shipping_method": shippingMethod,
    "postal_code": postalCode,
    "city": city,
    "country": country,
    "last_name": lastName,
    "state": state,
  };
}
