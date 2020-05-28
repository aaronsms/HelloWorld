import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:helloworld/application/auth/sign_in/sign_in_state.dart';
import 'package:helloworld/domain/auth/auth_failure.dart';
import 'package:helloworld/domain/auth/email_address.dart';
import 'package:helloworld/domain/auth/i_auth_facade.dart';
import 'package:helloworld/domain/auth/password.dart';
import './bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;
  SignInBloc(this._authFacade);

  @override
  SignInState get initialState => SignInState.initial();

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (event) async* {
        yield state.copyWith(
            emailAddress: EmailAddress(event.emailStr),
            authFailureOrSuccessOption: None());
      },
      passwordChanged: (event) async* {
        yield state.copyWith(
            password: Password(event.passwordStr),
            authFailureOrSuccessOption: None());
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
            isSubmitting: true, authFailureOrSuccessOption: None());
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: Some(failureOrSuccess),
        );
      },
    );
  }

  Stream<SignInState> _performActionOnAuthFacadeWithEmailAndPassword(
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
        authFailureOrSuccessOption: None(),
      );
      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);
    }
    yield state.copyWith(
      isSubmitting: false,
      showError: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
