import 'package:financas_app/common/constants/app_colors.dart';
import 'package:financas_app/common/constants/app_text_styles.dart';
import 'package:financas_app/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24.0),
            /// Cabeçalho verde
            Expanded(
              flex: 1,
              child: Container(
                color: AppColors.greenC2,
                child: Center(
                  child: Text(
                    '', // Texto pode ser adicionado aqui
                    style: AppTextStyles.mediumText.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),

            /// Imagem
            Expanded(
              flex: 2,
              child: Container(
                color: AppColors.iceWhite,
                child: Image.asset("assets/images/img_1.png"),
              ),
            ),

            /// Título
            Text(
              'Bem-vindo ao Finanças!',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.greenC2,
              ),
            ),

            /// Botão de login
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: PrimaryButton(
                text: 'Login',
                onPressed: () {
                  // ação de login
                },
              ),
            ),

            /// Texto clicável "Crie agora!"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ainda não tem uma conta? ',
                    style: AppTextStyles.smallText.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Criar conta');
                    },
                    child: Text(
                      'Crie Agora!',
                      style: AppTextStyles.smallText.copyWith(
                        color: AppColors.greenC2,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
