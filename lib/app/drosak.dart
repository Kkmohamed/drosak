import 'package:drosak/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Drosak extends StatelessWidget {
  const Drosak({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(),
      ),
    );
  }
}
