import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/identity_access/model/user/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  @override
  AuthState get initialState => const AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
