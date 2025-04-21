import 'package:financas_app/features/onboarding/onboarding_page.dart';
import 'package:financas_app/features/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:financas_app/app.dart';

void main() {
  runApp(const App());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}