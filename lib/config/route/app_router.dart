import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../../features/payment/presentation/payment_screen.dart';



part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // add your routes here+
AutoRoute(page: PaymentRoute.page,initial: true)

      ];
}
