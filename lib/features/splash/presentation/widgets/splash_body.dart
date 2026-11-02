import 'package:drosak/core/resources/app_images.dart';
import 'package:flutter/cupertino.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: AlignmentGeometry.topStart,
            child: Image.asset(AppImages.splashUpBorder),
          ),
          Align(child: Image.asset(AppImages.splashLogo)),
          Align(
            alignment: AlignmentGeometry.bottomEnd,
            child: Image.asset(AppImages.splashBottomBorder),
          ),
        ],
      ),
    );
  }
}
