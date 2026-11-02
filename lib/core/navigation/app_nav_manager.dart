import 'package:drosak/core/navigation/app_routes.dart';
import 'package:drosak/features/explore/presentation/explore_screen.dart';
import 'package:drosak/features/onboarding/presentation/onboarding_screen.dart';
import 'package:drosak/features/splash/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

class AppNavManager {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashRoute:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case AppRoutes.onboardingRoute:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case AppRoutes.exploreRoute:
        return MaterialPageRoute(builder: (context) => ExploreScreen());
      default:
        return null;
    }
  }
}
