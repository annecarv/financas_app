import 'package:financas_app/features/sign_up/sign_up_state.dart';
import 'package:flutter/foundation.dart';

class SignUpController extends ChangeNotifier {
  SignUpState _state = SignUpInitialState();

  SignUpState get state => _state; //getter para acessar o estado atual

  //metodo que realiza a alteracao de estado
  void _changeState(SignUpState newState) {
    _state = newState;
    print(
      'Estado alterado: $newState',
    ); //log para verificar a mudança de estado
    notifyListeners(); //notifica os ouvintes de que o estado mudou
  }

  Future<bool> doSignUp() async {
    _changeState(SignUpLoadingState());

    try {
      await Future.delayed(Duration(seconds: 2));
      throw Exception('Erro ao logar'); // Simula um erro para teste
      _changeState(SignUpSucessState());
      return true;
    } catch (e) {
      _changeState(SignUpErrorState());
      return false;
    }
  }
}
