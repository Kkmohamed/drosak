import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:drosak/app/drosak.dart';
import 'package:drosak/core/datasources/local/preferences_manager.dart';
import 'package:drosak/core/navigation/app_routes.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  PreferencesManager().init();
  String initialRoute = await getInitialRoute();
  runApp(Drosak(initialRoute: initialRoute));
}

Future<String> getInitialRoute() async {
  String? androidVersion = await getAndroidVersion();
  if (androidVersion != null) {
    if (int.parse(androidVersion) >= 12) {
      return AppRoutes.splashRoute;
    }
  }
  return AppRoutes.onboardingRoute;
}

Future<String?> getAndroidVersion() async {
  if (Platform.isAndroid) {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return androidInfo.version.release;
  }
  return null;
}
