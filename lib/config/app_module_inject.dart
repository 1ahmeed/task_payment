import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
 import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_payment/config/route/app_router.dart';

import 'dart:io' show Platform;

import 'package:task_payment/core/utils/constants.dart';


@module
abstract class AppModule {


  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();



  // @Singleton()
  // FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;





  @Singleton()
  AppRouter get appRouter => AppRouter();

// Future<String?> _getId() async {
//   var deviceInfo = DeviceInfoPlugin();
//   if (Platform.isIOS) {
//     // import 'dart:io'
//     var iosDeviceInfo = await deviceInfo.iosInfo;
//     return iosDeviceInfo.identifierForVendor; // unique ID on iOS
//   } else if (Platform.isAndroid) {
//     var androidDeviceInfo = await deviceInfo.androidInfo;
//     return androidDeviceInfo.id; // unique ID on Android
//   }
// }
}
