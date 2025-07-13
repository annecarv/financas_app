abstract class SignUpState {}

class SignUpInitialState extends SignUpState {}

class SignUpLoadingState extends SignUpState {
  //isso faz as classes serem do msm tipo ja que estao herdando
}

class SignUpSucessState extends SignUpState {}

class SignUpErrorState extends SignUpState {
  final String message;
  SignUpErrorState(String string, {this.message = "Erro ao cadastrar usuário"});
}
