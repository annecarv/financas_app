import 'package:financas_app/features/sign_up/sign_up_controller.dart';
import 'package:financas_app/services/auth_service.dart';
import 'package:financas_app/services/mock_auth_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupDependencies() {
  locator.registerLazySingleton<AuthService>(() => MockAuthService());

  locator.registerFactory<SignUpController>(
    () => SignUpController(locator.get<AuthService>()),
  );
}
