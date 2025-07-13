import 'dart:async';

import 'package:financas_app/common/constants/app_colors.dart';
import 'package:financas_app/common/constants/app_text_styles.dart';
import 'package:financas_app/common/constants/utils/routes.dart';
import 'package:financas_app/features/onboarding/onboarding_page.dart';
import 'package:financas_app/features/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Timer init() {
    return Timer(const Duration(seconds: 2), () {
      navigateToOnboarding();
    });
  }

  void navigateToOnboarding() {
    Navigator.pushReplacementNamed(context, NamedRoute.signUp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenC2,
      body: Center(
        child: Column(
          children: [
            Text("Bem Vindo ao Finanças App", style: AppTextStyles.bigTitle),
            const CircularProgressIndicator(), //TODO: loading icon
          ],
        ),
      ),
    );
  }
}
