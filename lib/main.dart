import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

import 'config/route/app_router.dart';
import 'generated/l10n.dart';
import 'injector.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 981),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      child: MaterialApp.router(
        locale: const Locale("ar"),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        // theme: AppTheme.darkTheme,
        // theme: AppTheme.lightTheme,
        localizationsDelegates: const [
          S.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        localeResolutionCallback: (deviceLocale, supportedLocales) {
          for (var locale in supportedLocales) {
            if (deviceLocale != null &&
                deviceLocale.languageCode == locale.languageCode) {
              return deviceLocale;
            }
          }

          return supportedLocales.first;
        },
        builder: DevicePreview.appBuilder,
        // routerDelegate: _appRouter.delegate(),
        // routeInformationParser: _appRouter.defaultRouteParser(),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}



