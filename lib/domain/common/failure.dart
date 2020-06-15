import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({@required String failedValue}) =
      _InvalidEmail<T>;
  const factory ValueFailure.shortPassword({@required String failedValue}) =
      _ShortPassword<T>;
  const factory ValueFailure.invalidAge({@required int failedValue}) =
      _InvalidAge<T>;
  const factory ValueFailure.emptyField() = _EmptyField<T>;
}
