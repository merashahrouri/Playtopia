abstract class SignInStates{}

class SignInInitState extends SignInStates{}

class SignInSuccessState extends SignInStates {
  final String? msg;

  SignInSuccessState({this.msg});
}

class SignInErrorState extends SignInStates {
  final String? msgEr;

  SignInErrorState({this.msgEr});
}

class SignInLoadingState extends SignInStates {}
