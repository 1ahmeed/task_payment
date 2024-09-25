// // To parse this JSON data, do
// //
// //     final payOrderModel = payOrderModelFromJson(jsonString);
//
// import 'dart:convert';
//
// PayOrderMode payOrderModelFromJson(String str) => PayOrderMode.fromJson(json.decode(str));
//
// String payOrderModelToJson(PayOrderMode data) => json.encode(data.toJson());
//
// class PayOrderMode {
//   int? id;
//   DateTime? createdAt;
//   bool? deliveryNeeded;
//   Merchant? merchant;
//   dynamic collector;
//   int? amountCents;
//   dynamic shippingData;
//   String? currency;
//   bool? isPaymentLocked;
//   bool? isReturn;
//   bool? isCancel;
//   bool? isReturned;
//   bool? isCanceled;
//   dynamic merchantOrderId;
//   dynamic walletNotification;
//   int? paidAmountCents;
//   bool? notifyUserWithEmail;
//   List<dynamic>? items;
//   String? orderUrl;
//   int? commissionFees;
//   int? deliveryFeesCents;
//   int? deliveryVatCents;
//   String? paymentMethod;
//   dynamic merchantStaffTag;
//   String? apiSource;
//   List<Datum>? data;
//   String? token;
//   String? url;
//
//   PayOrderMode({
//     this.id,
//     this.createdAt,
//     this.deliveryNeeded,
//     this.merchant,
//     this.collector,
//     this.amountCents,
//     this.shippingData,
//     this.currency,
//     this.isPaymentLocked,
//     this.isReturn,
//     this.isCancel,
//     this.isReturned,
//     this.isCanceled,
//     this.merchantOrderId,
//     this.walletNotification,
//     this.paidAmountCents,
//     this.notifyUserWithEmail,
//     this.items,
//     this.orderUrl,
//     this.commissionFees,
//     this.deliveryFeesCents,
//     this.deliveryVatCents,
//     this.paymentMethod,
//     this.merchantStaffTag,
//     this.apiSource,
//     this.data,
//     this.token,
//     this.url,
//   });
//
//   factory PayOrderMode.fromJson(Map<String, dynamic> json) => PayOrderMode(
//     id: json["id"],
//     createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
//     deliveryNeeded: json["delivery_needed"],
//     merchant: json["merchant"] == null ? null : Merchant.fromJson(json["merchant"]),
//     collector: json["collector"],
//     amountCents: json["amount_cents"],
//     shippingData: json["shipping_data"],
//     currency: json["currency"],
//     isPaymentLocked: json["is_payment_locked"],
//     isReturn: json["is_return"],
//     isCancel: json["is_cancel"],
//     isReturned: json["is_returned"],
//     isCanceled: json["is_canceled"],
//     merchantOrderId: json["merchant_order_id"],
//     walletNotification: json["wallet_notification"],
//     paidAmountCents: json["paid_amount_cents"],
//     notifyUserWithEmail: json["notify_user_with_email"],
//     items: json["items"] == null ? [] : List<dynamic>.from(json["items"]!.map((x) => x)),
//     orderUrl: json["order_url"],
//     commissionFees: json["commission_fees"],
//     deliveryFeesCents: json["delivery_fees_cents"],
//     deliveryVatCents: json["delivery_vat_cents"],
//     paymentMethod: json["payment_method"],
//     merchantStaffTag: json["merchant_staff_tag"],
//     apiSource: json["api_source"],
//     data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
//     token: json["token"],
//     url: json["url"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "created_at": createdAt?.toIso8601String(),
//     "delivery_needed": deliveryNeeded,
//     "merchant": merchant?.toJson(),
//     "collector": collector,
//     "amount_cents": amountCents,
//     "shipping_data": shippingData,
//     "currency": currency,
//     "is_payment_locked": isPaymentLocked,
//     "is_return": isReturn,
//     "is_cancel": isCancel,
//     "is_returned": isReturned,
//     "is_canceled": isCanceled,
//     "merchant_order_id": merchantOrderId,
//     "wallet_notification": walletNotification,
//     "paid_amount_cents": paidAmountCents,
//     "notify_user_with_email": notifyUserWithEmail,
//     "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x)),
//     "order_url": orderUrl,
//     "commission_fees": commissionFees,
//     "delivery_fees_cents": deliveryFeesCents,
//     "delivery_vat_cents": deliveryVatCents,
//     "payment_method": paymentMethod,
//     "merchant_staff_tag": merchantStaffTag,
//     "api_source": apiSource,
//     "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
//     "token": token,
//     "url": url,
//   };
// }
//
// class Datum {
//   String? payfor;
//   List<int>? type;
//   String? amount;
//   String? consultationId;
//   String? extendId;
//
//   Datum({
//     this.payfor,
//     this.type,
//     this.amount,
//     this.consultationId,
//     this.extendId,
//   });
//
//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//     payfor: json["payfor"],
//     type: json["type"] == null ? [] : List<int>.from(json["type"]!.map((x) => x)),
//     amount: json["amount"],
//     consultationId: json["consultation_id"],
//     extendId: json["extend_id"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "payfor": payfor,
//     "type": type == null ? [] : List<dynamic>.from(type!.map((x) => x)),
//     "amount": amount,
//     "consultation_id": consultationId,
//     "extend_id": extendId,
//   };
// }
//
// class Merchant {
//   int? id;
//   DateTime? createdAt;
//   List<String>? phones;
//   List<String>? companyEmails;
//   String? companyName;
//   String? state;
//   String? country;
//   String? city;
//   String? postalCode;
//   String? street;
//
//   Merchant({
//     this.id,
//     this.createdAt,
//     this.phones,
//     this.companyEmails,
//     this.companyName,
//     this.state,
//     this.country,
//     this.city,
//     this.postalCode,
//     this.street,
//   });
//
//   factory Merchant.fromJson(Map<String, dynamic> json) => Merchant(
//     id: json["id"],
//     createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
//     phones: json["phones"] == null ? [] : List<String>.from(json["phones"]!.map((x) => x)),
//     companyEmails: json["company_emails"] == null ? [] : List<String>.from(json["company_emails"]!.map((x) => x)),
//     companyName: json["company_name"],
//     state: json["state"],
//     country: json["country"],
//     city: json["city"],
//     postalCode: json["postal_code"],
//     street: json["street"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "created_at": createdAt?.toIso8601String(),
//     "phones": phones == null ? [] : List<dynamic>.from(phones!.map((x) => x)),
//     "company_emails": companyEmails == null ? [] : List<dynamic>.from(companyEmails!.map((x) => x)),
//     "company_name": companyName,
//     "state": state,
//     "country": country,
//     "city": city,
//     "postal_code": postalCode,
//     "street": street,
//   };
// }
