import 'package:financas_app/common/models/user_modal.dart';
import 'package:financas_app/services/auth_service.dart';

class MockAuthService implements AuthService {
  @override
  Future<UserModel> signUp({
    String? name,
    required String email,
    required String password,
  }) async {
    try {
      // Simulate a network delay
      await Future.delayed(const Duration(seconds: 2));
      if (password.startsWith(('123'))) {
        throw Exception();
      }
      // Return a mock user model
      return UserModel(id: email.hashCode, name: name, email: email);
    } catch (e) {
      if (password.startsWith(('123'))) {
        throw Exception('Password cannot start with "123"');
      } else {
        throw Exception('An error occurred during sign up: $e');
      }
    }
  }

  @override
  Future signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
