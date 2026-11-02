import 'package:drosak/core/navigation/app_nav_manager.dart';
import 'package:drosak/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Drosak extends StatelessWidget {
  const Drosak({super.key, required this.initialRoute});

  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppNavManager.onGenerateRoute,
        initialRoute: initialRoute,
      ),
    );
  }
}
