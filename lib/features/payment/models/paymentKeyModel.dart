// To parse this JSON data, do
//
//     final paymentKeyModel = paymentKeyModelFromJson(jsonString);

import 'dart:convert';

PaymentKeyModel paymentKeyModelFromJson(String str) => PaymentKeyModel.fromJson(json.decode(str));

String paymentKeyModelToJson(PaymentKeyModel data) => json.encode(data.toJson());

class PaymentKeyModel {
  String? token;

  PaymentKeyModel({
    this.token,
  });

  factory PaymentKeyModel.fromJson(Map<String, dynamic> json) => PaymentKeyModel(
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
  };
}
