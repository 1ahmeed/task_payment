import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:task_payment/core/api_service/requests.dart';
import 'package:task_payment/core/utils/constants.dart';
import 'package:task_payment/features/payment/domain/use_case/payment_key_use_case.dart';
import 'package:task_payment/features/payment/domain/use_case/payment_order_use_case.dart';
import 'package:task_payment/features/payment/domain/use_case/payment_use_case.dart';




part 'payment_state.dart';

@injectable
class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(
      {required this.paymentUsrCase, required this.paymentOrderUsrCase, required this.paymentKeyUseCase })
      : super(PaymentInitial());
  int activeIndex = 0;
  int amountcents = 100;
  final PaymentUsrCase paymentUsrCase;
  final PaymentOrderUsrCase paymentOrderUsrCase;
  final PaymentKeyUseCase paymentKeyUseCase;
  String? tokenAuthPayment;
  String? orderId;
  String? tokenOfPaymentKey;

  Future<void> getAuthenticationToken() async {
    emit(PaymentLoading());
    var response = await paymentUsrCase.call(AppConstants.apiKeyPayMob);
    response.fold((error) {
      print(error.errorMessage);
      emit(PaymentErrorState(errorMessage: error.errorMessage));
    }, (response) {
      tokenAuthPayment = response.token;
      print(response);
      emit(PaymentSuccessState());
    });
  }

  Future<void> getPaymentOrder({int? amountCents, String? currency}) async {
    emit(PaymentOrderLoading());
    var response = await paymentOrderUsrCase.call(PaymentOrderRequest(
        authToken: tokenAuthPayment!,
    amountCents: amountCents.toString(),
      currency: currency,
    ));
    response.fold((error) {
      print(error.errorMessage);
      emit(PaymentOrderErrorState(errorMessage: error.errorMessage));
    }, (response) {
      orderId=response.id.toString();
      print(response);
      emit(PaymentOrderSuccessState());
    });
  }

  Future<void> getPaymentKey({int? amountCents, String? currency}) async {
    emit(GetPaymentKeyLoading());
    var response = await paymentKeyUseCase.call(
        PaymentKeyRequest(
          data: "3",
          amountCents: (100 * amountCents!).toString(),
          authToken:tokenAuthPayment,
          billingData:BillingData(
            country:"Egypt" ,
            email:"user@gmail.com" ,
             apartment:"NA" ,
            building: "NA" ,
            city:  "Tanta",
            firstName:"new" ,
            floor:  "NA",
            lastName:"user" ,
            phoneNumber: "+201987654321",
            postalCode:"NA" ,
            shippingMethod: "NA",
            state: "NA",
            street: "NA"
          ),
          currency:currency,
          expiration:"3600",
          integrationId:"4840409",
          // "1741458",
          lockOrderWhenPaid:"false",
          orderId:orderId,
        )
    );
    response.fold((error) {
      print(error.errorMessage);
      emit(GetPaymentKeyErrorState(errorMessage: error.errorMessage));
    }, (response) {
      tokenAuthPayment=response.token;
      print("From cubit ${tokenAuthPayment}");
      emit(GetPaymentKeySuccessState(token:response.token! ));
    });
  }

  Future<void> usePaymentKey({int? amountCents, String? currency}) async {
    // emit(UsePaymentKeyLoading());
    try {
      await getAuthenticationToken();
      await getPaymentOrder(currency:currency,amountCents:  amountCents );
      await getPaymentKey(currency:currency,amountCents:  amountCents );
      // emit( UsePaymentKeySuccessState());
    }catch(e){
      print(e.toString());
      emit( UsePaymentKeyErrorState(errorMessage: e.toString()));
    }
  }

///
// Future<void> _pay() async{
//   PaymobManager().getPaymentKey(
//       10,"EGP"
//   ).then((String paymentKey) {
//     launchUrl(
//       Uri.parse("https://accept.paymob.com/api/acceptance/iframes/791787?payment_token=$paymentKey"),
//     );
//   });
// }
}
