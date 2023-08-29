part of 'sing_in_bloc.dart';

@immutable
sealed class SingInState {}

final class SingInInitial extends SingInState {}

final class SinginInitial extends SingInState {}

class SinginValiedState extends SingInState {}

class SinginErrorState extends SingInState {
  final String errormessage;
  SinginErrorState({
    required this.errormessage,
  });
}
class SinginLoadingState extends SingInState {}
