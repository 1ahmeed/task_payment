class PayOrderModel {
  PayOrderModel({
      this.id,
      this.createdAt,
      this.deliveryNeeded,
      this.merchant,
      this.collector,
      this.amountCents,
      this.shippingData,
      this.currency,
      this.isPaymentLocked,
      this.isReturn,
      this.isCancel,
      this.isReturned,
      this.isCanceled,
      this.merchantOrderId,
      this.walletNotification,
      this.paidAmountCents,
      this.notifyUserWithEmail,
      this.items,
      this.orderUrl,
      this.commissionFees,
      this.deliveryFeesCents,
      this.deliveryVatCents,
      this.paymentMethod,
      this.merchantStaffTag,
      this.apiSource,
      this.data,
      this.token,
      this.url,});

  PayOrderModel.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    deliveryNeeded = json['delivery_needed'];
    merchant = json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
    collector = json['collector'];
    amountCents = json['amount_cents'];
    shippingData = json['shipping_data'];
    currency = json['currency'];
    isPaymentLocked = json['is_payment_locked'];
    isReturn = json['is_return'];
    isCancel = json['is_cancel'];
    isReturned = json['is_returned'];
    isCanceled = json['is_canceled'];
    merchantOrderId = json['merchant_order_id'];
    walletNotification = json['wallet_notification'];
    paidAmountCents = json['paid_amount_cents'];
    notifyUserWithEmail = json['notify_user_with_email'];
    if (json['items'] != null) {
      items = [];
      // json['items'].forEach((v) {
      //   items?.add(json['items'].fromJson(v));
      // });
    }
    orderUrl = json['order_url'];
    commissionFees = json['commission_fees'];
    deliveryFeesCents = json['delivery_fees_cents'];
    deliveryVatCents = json['delivery_vat_cents'];
    paymentMethod = json['payment_method'];
    merchantStaffTag = json['merchant_staff_tag'];
    apiSource = json['api_source'];
    if (json['data'] != null) {
      data = [];
      // json['data']?.forEach((v) {
      //   data?.add(Data.fromJson(v));
      // });
    }
    token = json['token'];
    url = json['url'];
  }
  int? id;
  String? createdAt;
  bool? deliveryNeeded;
  Merchant? merchant;
  dynamic collector;
  int? amountCents;
  dynamic shippingData;
  String? currency;
  bool? isPaymentLocked;
  bool? isReturn;
  bool? isCancel;
  bool? isReturned;
  bool? isCanceled;
  dynamic merchantOrderId;
  dynamic walletNotification;
  int? paidAmountCents;
  bool? notifyUserWithEmail;
  List<dynamic>? items;
  String? orderUrl;
  int? commissionFees;
  int? deliveryFeesCents;
  int? deliveryVatCents;
  String? paymentMethod;
  dynamic merchantStaffTag;
  String? apiSource;
  List<Data>? data;
  String? token;
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['delivery_needed'] = deliveryNeeded;
    if (merchant != null) {
      map['merchant'] = merchant?.toJson();
    }
    map['collector'] = collector;
    map['amount_cents'] = amountCents;
    map['shipping_data'] = shippingData;
    map['currency'] = currency;
    map['is_payment_locked'] = isPaymentLocked;
    map['is_return'] = isReturn;
    map['is_cancel'] = isCancel;
    map['is_returned'] = isReturned;
    map['is_canceled'] = isCanceled;
    map['merchant_order_id'] = merchantOrderId;
    map['wallet_notification'] = walletNotification;
    map['paid_amount_cents'] = paidAmountCents;
    map['notify_user_with_email'] = notifyUserWithEmail;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    map['order_url'] = orderUrl;
    map['commission_fees'] = commissionFees;
    map['delivery_fees_cents'] = deliveryFeesCents;
    map['delivery_vat_cents'] = deliveryVatCents;
    map['payment_method'] = paymentMethod;
    map['merchant_staff_tag'] = merchantStaffTag;
    map['api_source'] = apiSource;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    map['token'] = token;
    map['url'] = url;
    return map;
  }

}

class Data {
  Data({
      this.payfor,
      this.type,
      this.amount,
      this.consultationId,
      this.extendId,});

  Data.fromJson(dynamic json) {
    payfor = json['payfor'];
    type = json['type'] != null ? json['type'].cast<int>() : [];
    amount = json['amount'];
    consultationId = json['consultation_id'];
    extendId = json['extend_id'];
  }
  String? payfor;
  List<int>? type;
  String? amount;
  String? consultationId;
  String? extendId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['payfor'] = payfor;
    map['type'] = type;
    map['amount'] = amount;
    map['consultation_id'] = consultationId;
    map['extend_id'] = extendId;
    return map;
  }

}

class Merchant {
  Merchant({
      this.id,
      this.createdAt,
      this.phones,
      this.companyEmails,
      this.companyName,
      this.state,
      this.country,
      this.city,
      this.postalCode,
      this.street,});

  Merchant.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    phones = json['phones'] != null ? json['phones'].cast<String>() : [];
    companyEmails = json['company_emails'] != null ? json['company_emails'].cast<String>() : [];
    companyName = json['company_name'];
    state = json['state'];
    country = json['country'];
    city = json['city'];
    postalCode = json['postal_code'];
    street = json['street'];
  }
  int? id;
  String? createdAt;
  List<String>? phones;
  List<String>? companyEmails;
  String? companyName;
  String? state;
  String? country;
  String? city;
  String? postalCode;
  String? street;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['phones'] = phones;
    map['company_emails'] = companyEmails;
    map['company_name'] = companyName;
    map['state'] = state;
    map['country'] = country;
    map['city'] = city;
    map['postal_code'] = postalCode;
    map['street'] = street;
    return map;
  }

}