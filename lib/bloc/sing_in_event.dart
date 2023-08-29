part of 'sing_in_bloc.dart';

@immutable
sealed class SingInEvent {}

class SigninTextChangedEvent extends SingInEvent {
  final String emailvalue;
  final String namevalue;

  final String passwordvalue;

  SigninTextChangedEvent(this.emailvalue, this.namevalue, this.passwordvalue);
}

class SigninSubmittedEvent extends SingInEvent {
  final String email;
  final String name;

  final String password;

  SigninSubmittedEvent(this.email, this.name, this.password);
}
