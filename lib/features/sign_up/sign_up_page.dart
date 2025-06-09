import 'package:financas_app/common/constants/app_colors.dart';
import 'package:financas_app/common/constants/app_text_styles.dart';
import 'package:financas_app/common/constants/utils/validator.dart';
import 'package:financas_app/common/widgets/custom_text_form_field.dart';
import 'package:financas_app/common/widgets/password_form_field.dart';
import 'package:financas_app/common/widgets/primary_button.dart';
import 'package:financas_app/features/sign_up/sign_up_controller.dart';
import 'package:financas_app/features/sign_up/sign_up_state.dart';
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
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _controller = SignUpController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.state is SignUpLoadingState) {
        showDialog(
          context: context,
          builder: (context) => Center(child: CircularProgressIndicator()),
        );
      }
      if (_controller.state is SignUpSucessState) {
        Navigator.pop(
          context,
        ); //Mata a pilha de widget e diálogo de carregamento
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => const Scaffold(
                  body: Center(child: Text("Nova tela a fazer")),
                ),
          ),
        ); // Redireciona para a página inicial
      }
      if (_controller.state is SignUpErrorState) {
        showModalBottomSheet<void>(
          //TODO: Corrigir esse modal ta horroroso e dps transformar em widget
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                (_controller.state as SignUpErrorState).toString(),
                style: AppTextStyles.mediumText.copyWith(color: AppColors.red),
              ),
            );
          },
        );
      }
    });

    // Inicialização de controladores ou outras variáveis, se necessário
  }

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
                    validator: Validator.validateName,
                  ),
                  CustomTextFormField(
                    padding: const EdgeInsets.all(8.0),
                    hintText: 'Digite seu email',
                    labelText: 'Email',
                    errorText: '',
                    helperText: '',
                    controller: _emailController,
                    validator: Validator.validateEmail,
                  ),
                  PasswordFormField(
                    controller: _passwordController,
                    padding: const EdgeInsets.all(8.0),
                    hintText: '***********',
                    labelText: 'Escolha uma senha',
                    errorText: '',
                    helperText: '',
                    validator: Validator.validatePassword,
                  ),
                  PasswordFormField(
                    padding: const EdgeInsets.all(8.0),
                    hintText: '***********',
                    labelText: 'Confirme sua senha',
                    errorText: '',
                    helperText: ' ',
                    controller: _confirmPasswordController,
                    validator:
                        (value) => Validator.validateConfirmPassword(
                          value,
                          _passwordController.text,
                        ),
                  ),
                  const SizedBox(height: 24),
                  PrimaryButton(
                    text: 'Criar conta',
                    onPressed: () {
                      final valid = _formKey.currentState?.validate() ?? false;
                      if (valid) {
                        _controller.doSignUp();
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

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, confirme sua senha.';
    }
    if (value != _passwordController.text) {
      return 'As senhas não coincidem.';
    }
    return null;
  }
}
