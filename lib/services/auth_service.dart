import 'package:financas_app/common/models/user_modal.dart';

abstract class AuthService {
  Future<UserModel> signUp({
    String? name,
    required String email,
    required String password,
  });
  Future signIn();
  Future signOut();
}
