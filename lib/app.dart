import 'package:financas_app/common/constants/utils/routes.dart';
import 'package:financas_app/common/themes/default_theme.dart';
import 'package:financas_app/features/onboarding/onboarding_page.dart';
import 'package:financas_app/features/sign_up/sign_up_page.dart';
import 'package:financas_app/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: NamedRoute.splash,
      routes: {
        NamedRoute.splash: (_) => const SplashPage(),
        NamedRoute.onboarding: (_) => const OnboardingPage(),
        NamedRoute.signUp: (_) => const SignUpPage(),
      },
    );
  }
}
