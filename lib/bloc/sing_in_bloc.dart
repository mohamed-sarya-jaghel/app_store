import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:meta/meta.dart';

part 'sing_in_event.dart';
part 'sing_in_state.dart';

class SingInBloc extends Bloc<SingInEvent, SingInState> {
  SingInBloc() : super(SingInInitial()) {
    on<SigninTextChangedEvent>((event, emit) {
      if (event.emailvalue == '' &&
          EmailValidator.validate(event.emailvalue) == false) {
        emit(SinginErrorState(errormessage: "Please Enter a valid email"));
      } else if (event.namevalue == '') {
        emit(SinginErrorState(errormessage: "Please Enter a valid name"));
      } else if (event.passwordvalue.length <= 8) {
        emit(SinginErrorState(errormessage: "Please Enter a valid password"));
      } else {
        emit(SinginValiedState());
      }
    });
    on<SigninSubmittedEvent>((event, emit) {});
  }
}
