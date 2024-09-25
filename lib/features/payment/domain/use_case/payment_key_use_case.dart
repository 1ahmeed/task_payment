import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task_payment/core/api_service/requests.dart';
import 'package:task_payment/features/payment/domain/repo/payment_repo.dart';
import 'package:task_payment/features/payment/models/pay_order_mode.dart';
import 'package:task_payment/features/payment/models/paymentKeyModel.dart';

import '../../../../core/use_cases/use_case.dart';
import '../../../../core/utils/failuer.dart';

import '../../models/pau_auth_model.dart';

@Injectable()
class PaymentKeyUseCase implements UseCase<PaymentKeyModel, PaymentKeyRequest> {
  final PaymentRepo paymentRepo;

  PaymentKeyUseCase({required this.paymentRepo});

  @override
  Future<Either<Failures, PaymentKeyModel>> call(PaymentKeyRequest data) async {
    return await paymentRepo.getPaymentKey(data);
  }
}
