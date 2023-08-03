abstract class SignupStates
{

}
class SignUpInitState extends SignupStates{}
class SignUpLoadingState extends SignupStates {}
class SignUpSuccessfulState extends SignupStates {
  final String? msg;

  SignUpSuccessfulState({this.msg});

}
class SignUpErrorState extends SignupStates {
  final String error;

  SignUpErrorState(this.error);
}

