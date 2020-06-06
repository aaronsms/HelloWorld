import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:helloworld/application/auth/login/login_state.dart';
import 'package:helloworld/domain/auth/auth_failure.dart';
import 'package:helloworld/domain/auth/email_address.dart';
import 'package:helloworld/domain/auth/i_auth_facade.dart';
import 'package:helloworld/domain/auth/password.dart';
import 'package:injectable/injectable.dart';
import './bloc.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthFacade _authFacade;

  LoginBloc(this._authFacade);

  @override
  LoginState get initialState => LoginState.initial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (event) async* {
        yield state.copyWith(
            emailAddress: EmailAddress(event.emailStr),
            authFailureOrSuccessOption: none());
      },
      passwordChanged: (event) async* {
        yield state.copyWith(
            password: Password(event.passwordStr),
            authFailureOrSuccessOption: none());
      },
      registerWithEmailAndPasswordPressed: (event) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.registerWithEmailAndPassword);
      },
      signInWithEmailAndPasswordPressed: (event) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.signInWithEmailAndPassword);
      },
      signInWithGooglePressed: (event) async* {
        yield state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none());
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      },
    );
  }

  Stream<LoginState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function(
              {@required EmailAddress emailAddress,
              @required Password password})
          forwardedCall) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessage: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
