import 'package:auto_route/annotations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_payment/features/payment/presentation/cubit/payment_cubit.dart';
import 'package:task_payment/features/payment/presentation/widgets/button_confirm_payment.dart';
import 'package:task_payment/features/payment/presentation/widgets/custom_app_bar.dart';
import 'package:task_payment/features/payment/presentation/widgets/details_invoice_section.dart';
import 'package:task_payment/features/payment/presentation/widgets/payment_method_section.dart';
import 'package:task_payment/injector.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../generated/l10n.dart';


class PaymentMethodModel {
  final String icon;
  final String title;
  final String subTitle;
  final bool isSuffix;

  PaymentMethodModel(
      {required this.icon,
      required this.title,
      required this.subTitle,
      required this.isSuffix});
}

@RoutePage()
class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PaymentCubit>(),
      child: BlocBuilder<PaymentCubit, PaymentState>(
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(60.0),
                child: CustomAppBarWithText(text: S.of(context).payment)),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    height: 20,
                  ),

                  /// details of invoice
                  const DetailsInvoiceSection(),
                  SizedBox(
                    height: 65.h,
                  ),

                  ///payment method
                  PaymentMethodSections(),
                  SizedBox(
                    height: 114.h,
                  ),

                  ///button
                  const ButtonConfirmPayment(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
