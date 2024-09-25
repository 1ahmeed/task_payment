import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:task_payment/core/api_service/requests.dart';
import 'package:task_payment/features/payment/models/pay_order_mode.dart';
import 'package:task_payment/features/payment/models/paymentKeyModel.dart';

import '../../../../core/api_service/api_service.dart';
import '../../models/pau_auth_model.dart';
import '../../models/pay_order_model.dart';

abstract class PaymentRemoteDataSource {
  Future<PayAuthModel> getAuthenticationToken(String apiKey);
  Future<PaymentKeyModel> getPaymentKey(PaymentKeyRequest paymentKeyRequest);
  Future<PayOrderModel> getPaymentOrderId(String authToken,String amountCents,String currency,);
//

}

@Injectable(as:PaymentRemoteDataSource)
class PaymentRemoteDataSourceImpl extends PaymentRemoteDataSource {
  ApiService apiService;

  PaymentRemoteDataSourceImpl({required this.apiService});

  @override
  Future<PayAuthModel> getAuthenticationToken(String apiKey)async {
    print("remote");
    var response=await apiService.getAuthenticationToken(apiKey);
     print("remote2");
    return response ;
  }


  @override
  Future<PayOrderModel> getPaymentOrderId(String authToken,
      String amountCents,String currency,
      )async {
    print("Order remote");
    var response=await apiService.getPaymentOrderId(authToken,amountCents,currency);
    //
    print("order remote2");
    return response ;
  }

  @override
  Future<PaymentKeyModel> getPaymentKey(PaymentKeyRequest paymentKeyRequest)async {
    print("remote");
    var response=await apiService.getPaymentKey(paymentKeyRequest);
    print("remote2");
    return response ;
  }
}