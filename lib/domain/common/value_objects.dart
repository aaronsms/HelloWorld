import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'failure.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    // id = identity from dartz package
    return value.fold((f) => throw Error(), id);
  }

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
          (l) => left(l),
          (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueObject && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
