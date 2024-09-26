
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
 import 'package:injectable/injectable.dart';
import 'package:task_payment/core/utils/failuer.dart';
import 'package:task_payment/features/payment/data/remote/payment_remote_data_source.dart';

import '../../../../core/api_service/requests.dart';
import '../../domain/repo/payment_repo.dart';
 import '../../models/pau_auth_model.dart';
import '../../models/pay_order_mode.dart';
import '../../models/pay_order_model.dart';
import '../../models/paymentKeyModel.dart';

@Injectable(as: PaymentRepo)
class PaymentRepoImpl extends PaymentRepo {
  final PaymentRemoteDataSource paymentRemoteDataSource;

  PaymentRepoImpl({required this.paymentRemoteDataSource});

  @override
  Future<Either<Failures, PayAuthModel>> getAuthenticationToken(String apiKey)async {
    try {
      var response = await paymentRemoteDataSource.getAuthenticationToken(apiKey);
      print(response);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        // print(e.response!.data);
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }

  }  @override

  Future<Either<Failures,PayOrderModel>> getPaymentOrderId(
      String authToken,String amountCents,String currency,)async {
    // var response = await paymentRemoteDataSource.getPaymentOrderId(
    //     authToken,amountCents,currency);
    // print(response);
    // return right(response);
    try {
      var response = await paymentRemoteDataSource.getPaymentOrderId(
          authToken,amountCents,currency);
      print(response);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        print(e.response!.data);
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }

  }


  @override
  Future<Either<Failures,PaymentKeyModel>> getPaymentKey(PaymentKeyRequest paymentKeyRequest)
  async {

    try {
      var response = await paymentRemoteDataSource.getPaymentKey(paymentKeyRequest);
      print(response);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        // print(e.response!.data);
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }

  }

}