part of 'payment_cubit.dart';

@immutable
abstract class PaymentState {}

class PaymentInitial extends PaymentState {}

class PaymentLoading extends PaymentState {}
class PaymentSuccessState extends PaymentState {}
class PaymentErrorState extends PaymentState {
  final String errorMessage;
  PaymentErrorState({required this.errorMessage});
}



class PaymentOrderLoading extends PaymentState {}
class PaymentOrderSuccessState extends PaymentState {}
class PaymentOrderErrorState extends PaymentState {
  final String errorMessage;
  PaymentOrderErrorState({required this.errorMessage});
}

class GetPaymentKeyLoading extends PaymentState {}
class GetPaymentKeySuccessState extends PaymentState {
  final String token;

  GetPaymentKeySuccessState({required this.token});
}
class GetPaymentKeyErrorState extends PaymentState {
  final String errorMessage;
  GetPaymentKeyErrorState({required this.errorMessage});
}

class UsePaymentKeyLoading extends PaymentState {}
class UsePaymentKeySuccessState extends PaymentState {}
class UsePaymentKeyErrorState extends PaymentState {
  final String errorMessage;
  UsePaymentKeyErrorState({required this.errorMessage});
}