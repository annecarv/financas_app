import 'package:financas_app/common/constants/app_colors.dart';
import 'package:financas_app/common/constants/app_text_styles.dart';
import 'package:financas_app/common/widgets/multi_text_button.dart';
import 'package:financas_app/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Align(
        // padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 24.0),
            Expanded(
              flex: 1,
              child: Container(
                color: AppColors.greenC2,
                child: Center(
                  child: Text(
                    '',
                    style: AppTextStyles.mediumText.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: AppColors.iceWhite,
                child: Image.asset("assets/images/img_1.png"),
              ),
            ),
            Text(
              'Bem-vindo ao Finanças!',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.greenC2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: PrimaryButton(text: 'Login', onPressed: () {}),
            ),

            const SizedBox(height: 2.0),

            CustomTextButton(
              onPressed: () => {print('oi')},
              texts: [
                Text(
                  'Ainda não tem uma conta? ',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.black,
                  ),
                ),
                Text(
                  'Crie Agora!',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.greenC2,
                  ),
                ),
              ]
            ),

            const SizedBox(height: 18.0),

          ],
        ),
      ),
    );
  }
}
