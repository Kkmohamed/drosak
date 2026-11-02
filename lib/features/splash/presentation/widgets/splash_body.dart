import 'package:drosak/core/datasources/local/preferences_manager.dart';
import 'package:drosak/core/datasources/local/prefs_keys.dart';
import 'package:drosak/core/navigation/app_routes.dart';
import 'package:drosak/core/resources/app_images.dart';
import 'package:flutter/cupertino.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animationBottom;
  late Animation<Offset> _animationTop;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              navigateAfterSplash();
            }
          });
    _animationBottom = Tween<Offset>(begin: Offset(0, 1), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: _animationController, curve: Curves.linear),
        );
    _animationTop = Tween<Offset>(begin: Offset(0, -1), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: _animationController, curve: Curves.linear),
        );
    _animationController.forward();
  }

  void navigateAfterSplash() {
    bool isOnboardingCompleted =
        PreferencesManager().getBool(PrefsKeys.onboardingCompleted) ?? false;
    if (isOnboardingCompleted) {
      Navigator.pushReplacementNamed(context, AppRoutes.exploreRoute);
    } else {
      Navigator.pushReplacementNamed(context, AppRoutes.onboardingRoute);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: AlignmentGeometry.topStart,
            child: SlideTransition(
              position: _animationTop,
              child: Image.asset(AppImages.splashUpBorder),
            ),
          ),
          Align(child: Image.asset(AppImages.splashLogo)),
          Align(
            alignment: AlignmentGeometry.bottomEnd,
            child: SlideTransition(
              position: _animationBottom,
              child: Image.asset(AppImages.splashBottomBorder),
            ),
          ),
        ],
      ),
    );
  }
}
