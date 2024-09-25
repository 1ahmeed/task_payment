import 'package:dartz/dartz.dart';
import 'package:task_payment/core/api_service/requests.dart';
import 'package:task_payment/features/payment/models/paymentKeyModel.dart';

import '../../../../core/utils/failuer.dart';
 import '../../models/pau_auth_model.dart';
import '../../models/pay_order_mode.dart';
import '../../models/pay_order_model.dart';

abstract class PaymentRepo{

  Future<Either<Failures,PayAuthModel>> getAuthenticationToken(String apiKey);
  Future<Either<Failures,PaymentKeyModel>> getPaymentKey(PaymentKeyRequest paymentKeyRequest);
  Future<Either<Failures,PayOrderModel>> getPaymentOrderId(String authToken,String amountCents,String currency,);

//

}

