import 'package:financas_app/common/constants/utils/routes.dart';
import 'package:financas_app/features/onboarding/onboarding_page.dart';
import 'package:financas_app/features/sign_up/sign_up_page.dart';
import 'package:financas_app/features/splash/splash_page.dart';
import 'package:financas_app/locator.dart';
import 'package:flutter/material.dart';
import 'package:financas_app/app.dart';

void main() {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SplashPage(),
      initialRoute: NamedRoute.splash,
      routes: {
        NamedRoute.splash: (context) => const SplashPage(),
        NamedRoute.onboarding: (context) => const OnboardingPage(),
        NamedRoute.signUp: (context) => const SignUpPage(),
      },
    );
  }
}
