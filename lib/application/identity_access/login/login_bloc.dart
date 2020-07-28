import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:helloworld/domain/identity_access/model/user/email_address.dart';
import 'package:helloworld/domain/identity_access/model/user/password.dart';
import 'package:helloworld/domain/identity_access/service/authentication_failure.dart';
import 'package:helloworld/domain/identity_access/service/i_authentication_facade.dart';
import 'package:helloworld/presentation/core/routes.dart';
import 'package:injectable/injectable.dart';
import 'package:sailor/sailor.dart';

import 'login_event.dart';
import 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthenticationFacade _authFacade;

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
      loginUserWithEmailAndPassword: (event) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.loginUserWithEmailAndPassword);
      },
    );
  }

  Stream<LoginState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthenticationFailure, Unit>> Function(
              {@required EmailAddress emailAddress,
              @required Password password})
          forwardedCall) async* {
    Either<AuthenticationFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);

      // Development Only:
      failureOrSuccess.fold((l) => null, (r) async {
        Routes.sailor(Routes.homepage,
            navigationType: NavigationType.pushReplace,
            removeUntilPredicate: (route) => route.isFirst);
      });
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessage: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
