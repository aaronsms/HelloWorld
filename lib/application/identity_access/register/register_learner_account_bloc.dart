import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:helloworld/domain/identity_access/model/user/email_address.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/age.dart';
import 'package:helloworld/domain/identity_access/model/user/name.dart';
import 'package:helloworld/domain/identity_access/model/user/password.dart';
import 'package:helloworld/presentation/core/routes.dart';
import 'package:injectable/injectable.dart';
import './bloc.dart';

@injectable
class RegisterLearnerAccountBloc
    extends Bloc<RegisterLearnerAccountEvent, RegisterLearnerAccountState> {
  @override
  RegisterLearnerAccountState get initialState =>
      RegisterLearnerAccountState.initial();

  @override
  Stream<RegisterLearnerAccountState> mapEventToState(
    RegisterLearnerAccountEvent event,
  ) async* {
    yield* event.map(
      nameChanged: (event) async* {
        yield state.copyWith(name: Name(event.nameStr));
      },
      passwordChanged: (event) async* {
        yield state.copyWith(password: Password(event.passwordStr));
      },
      confirmPasswordChanged: (event) async* {
        yield state.copyWith(
            confirmPassword: Password(event.confirmPasswordStr));
      },
      emailChanged: (event) async* {
        yield state.copyWith(emailAddress: EmailAddress(event.emailStr));
      },
      ageChanged: (event) async* {
        yield state.copyWith(age: Age(int.parse(event.ageStr)));
      },
      obscureTextClicked: (event) async* {
        yield state.copyWith(obscureText: !state.obscureText);
      },
      nextClicked: (event) async* {
        yield state.copyWith(
          showErrorMessage: true,
        );
        if (state.name.isValid() &&
            state.emailAddress.isValid() &&
            state.password.isValid() &&
            state.password == state.confirmPassword) {
          Routes.sailor(Routes.learnerProfile, params: {
            'name': state.name,
            'email': state.emailAddress,
            'password': state.password,
          });
        }
      },
    );
  }
}
