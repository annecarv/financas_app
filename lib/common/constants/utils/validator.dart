class Validator {
  Validator._();

  static String? validateName(String? value) {
    final condition_name = RegExp(r"\b([A-ZÀ-ÿ][-,a-z. ']+[ ]*)+");

    if (value == null || value.isEmpty) {
      return 'Por favor, digite seu nome.';
    }

    if (value != null && !value.contains(condition_name)) {
      return 'Digite um nome válido.';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    final condition_email = RegExp(r"^([\w\.\-_]+)?\w+@[\w-_]+(\.\w+){1,}$");

    if (value == null || value.isEmpty) {
      return 'Por favor, digite seu email.';
    }

    if (value != null && !value.contains(condition_email)) {
      return 'Digite um email válido.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    final condition_passord = RegExp(
      r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$",
    );

    if (value == null || value.isEmpty) {
      return 'Por favor, digite sua senha.';
    }

    if (value != null && !value.contains(condition_passord)) {
      return 'Digite uma senha válida.';
    }
    return null;
  }

  static String? validateConfirmPassword(
    String? compareTo,
    String? validation,
  ) {
    if (compareTo != validation) {
      return 'As senhas são diferentes.';
    }
  }
}
