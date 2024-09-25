// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>(
          orElse: () => const PaymentRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PaymentScreen(key: args.key),
      );
    }
  };
}

/// generated route for
/// [PaymentScreen]
class PaymentRoute extends PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const PageInfo<PaymentRouteArgs> page =
      PageInfo<PaymentRouteArgs>(name);
}

class PaymentRouteArgs {
  const PaymentRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key}';
  }
}
