import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_failure.freezed.dart';

@freezed
abstract class RegistrationFailure with _$RegistrationFailure {
  const factory RegistrationFailure.cancelledByUser() = CancelledByUser;
  const factory RegistrationFailure.serverError() = ServerError;
  const factory RegistrationFailure.emailAlreadyInUse() = EmailAlreadyInUse;
}
