import 'package:financas_app/common/constants/app_colors.dart';
import 'package:financas_app/common/constants/app_text_styles.dart';
import 'package:financas_app/common/widgets/custom_text_form_field.dart';
import 'package:financas_app/common/widgets/password_form_field.dart';
import 'package:financas_app/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 24),
                  Text(
                    'Retome o controle da sua vida financeira',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.mediumText.copyWith(
                      color: AppColors.greenC2,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    "assets/images/img_1.png",
                    height: 160,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    padding: const EdgeInsets.all(8.0),
                    hintText: 'Digite seu nome',
                    labelText: 'Nome',
                    errorText: '',
                    helperText: '',
                    controller: _nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, digite seu nome.';
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    padding: const EdgeInsets.all(8.0),
                    hintText: 'Digite seu email',
                    labelText: 'Email',
                    errorText: '',
                    helperText: '',
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, digite seu email.';
                      }
                      return null;
                    },
                  ),
                  PasswordFormField(
                    padding: const EdgeInsets.all(8.0),
                    hintText: '***********',
                    labelText: 'Escolha uma senha',
                    errorText: '',
                    helperText: '',
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 6) {
                        return 'A senha deve ter pelo menos 6 caracteres.';
                      }
                      return null;
                    },
                  ),
                  PasswordFormField(
                    padding: const EdgeInsets.all(8.0),
                    hintText: '***********',
                    labelText: 'Confirme sua senha',
                    errorText: '',
                    helperText: ' ',
                    controller: _confirmPasswordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, confirme sua senha.';
                      }
                      if (value != _passwordController.text) {
                        return 'As senhas não coincidem.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  PrimaryButton(
                    text: 'Criar conta',
                    onPressed: () {
                      final valid = _formKey.currentState?.validate() ?? false;
                      if (valid) {
                        print('Conta criada com sucesso!');
                        // Aqui você pode prosseguir com o cadastro
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
