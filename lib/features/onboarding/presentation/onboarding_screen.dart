import 'package:drosak/features/onboarding/controller/onboarding_controller.dart';
import 'package:drosak/features/onboarding/presentation/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ChangeNotifierProvider(
          create: (BuildContext context) {
            return OnboardingController();
          },
          child: OnboardingBody(),
        ),
      ),
    );
  }
}
