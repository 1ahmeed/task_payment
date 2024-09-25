import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task_payment/features/payment/domain/repo/payment_repo.dart';
import 'package:task_payment/features/payment/models/pay_order_mode.dart';

import '../../../../core/use_cases/use_case.dart';
import '../../../../core/utils/failuer.dart';

import '../../models/pau_auth_model.dart';
import '../../models/pay_order_model.dart';

@Injectable()
class PaymentOrderUsrCase implements UseCase<PayOrderModel, PaymentOrderRequest> {
  final PaymentRepo paymentRepo;

  PaymentOrderUsrCase({required this.paymentRepo});

  @override
  Future<Either<Failures, PayOrderModel>> call(PaymentOrderRequest data) async {
    return await paymentRepo.getPaymentOrderId(
      data.authToken,data.amountCents!,data.currency!,
    );
  }
}

class PaymentOrderRequest {
  final String authToken;
  final String? amountCents;
  final String? currency;

  PaymentOrderRequest({required this.authToken,   this.amountCents,   this.currency});

}