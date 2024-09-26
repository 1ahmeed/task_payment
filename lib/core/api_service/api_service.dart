import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:task_payment/core/api_service/requests.dart';
import 'package:task_payment/features/payment/models/pay_order_mode.dart';

 import '../../features/payment/models/pau_auth_model.dart';
import '../../features/payment/models/pay_order_model.dart';
import '../../features/payment/models/paymentKeyModel.dart';
import '../utils/constants.dart';
part 'api_service.g.dart';
@singleton
@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio,{ String baseUrl}) = _ApiService;

  @FactoryMethod()
  static ApiService getDio(){
    Duration timeOut = const Duration(seconds: 60);
    final dio = Dio()
      ..options.baseUrl="https://accept.paymob.com/api/"
          // AppConstants.baseUrl
      ..options.connectTimeout = timeOut
      ..options.receiveTimeout = timeOut
      // ..options.headers["api_key"]=AppConstants.apiKeyPayment
    // ..options.headers[EndPoints.headerLanguageKey]=EndPoints.headerLanguageValue
    //   ..options.headers["Content-Type"]="application/json"
        ;
    // dio.interceptors.add(
    //     PrettyDioLogger(
    //         request: true,
    //         requestBody: true,
    //         requestHeader: true,
    //         responseBody: true,
    //         responseHeader: true,
    //         error: true)
    // );
    return ApiService(dio);
  }

  @POST("auth/tokens")
  Future<PayAuthModel> getAuthenticationToken(
      @Field("api_key")  String apiKey,
      );

  @POST("ecommerce/orders")
  Future<PayOrderModel> getPaymentOrderId(
      @Field("auth_token")  String authToken,
      @Field( "amount_cents")  String amountCents,
      @Field("currency")  String currency,
      );

  @POST("acceptance/payment_keys")
  Future<PaymentKeyModel> getPaymentKey(
      @Body() PaymentKeyRequest paymentKeyRequest,
      // @Field("auth_token")  String authToken,
      // @Field( "amount_cents")  String amountCents,
      // @Field("currency")  String currency,
      // @Field("order_id")  String orderId,
      // @Field( "expiration")  String expiration,
      // @Field("billing_data") Map<String,dynamic>billingData,
      // @Field("apartment")  String apartment,
      // @Field( "email")  String email,
      // @Field("floor")  String floor,
      // @Field("first_name")  String firstName,
      // @Field( "street")  String street,
      // @Field("building")  String building,
      // @Field("phone_number")  String phoneNumber,
      // @Field( "shipping_method")  String shippingMethod,
      // @Field("postal_code")  String postalCode,
      // @Field("city")  String city,
      // @Field("state")  String state,
      // @Field("last_name")  String lastName,
      // @Field("integration_id")  String integrationId,
      // @Field("data")  String data,
      // @Field("lock_order_when_paid")  String lockOrderWhenPaid,
      );

}