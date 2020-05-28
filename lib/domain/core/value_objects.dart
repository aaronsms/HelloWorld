import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:helloworld/domain/core/failure.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueObject && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'Value($value)';
  }
}
