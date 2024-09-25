import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task_payment/features/payment/domain/repo/payment_repo.dart';

import '../../../../core/use_cases/use_case.dart';
import '../../../../core/utils/failuer.dart';

import '../../models/pau_auth_model.dart';

@Injectable()
class PaymentUsrCase implements UseCase<PayAuthModel,String> {
  final PaymentRepo paymentRepo;

  PaymentUsrCase({required this.paymentRepo});
  @override
  Future<Either<Failures, PayAuthModel>> call(String apiKey)async {
    return await paymentRepo.getAuthenticationToken(apiKey);
  }
}