import 'package:financas_app/features/sign_up/sign_up_state.dart';
import 'package:financas_app/services/auth_service.dart';
import 'package:flutter/foundation.dart';

class SignUpController extends ChangeNotifier {
  final AuthService
  _service; //classe abstrata AuthService que define os métodos de autenticação

  SignUpController(this._service); //Controller recebe o serviço de autenticação
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

  Future<void> signUp({
    required String? name,
    required String email,
    required String password,
  }) async {
    _changeState(SignUpLoadingState());

    try {
      await _service.signUp(name: name, email: email, password: password);
      _changeState(SignUpSucessState());
    } catch (e) {
      _changeState(SignUpErrorState(e.toString()));
    }
  }
}
