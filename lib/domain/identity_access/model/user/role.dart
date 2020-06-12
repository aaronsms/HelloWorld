import 'package:flutter/foundation.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/value_objects.dart';
import 'package:dartz/dartz.dart';

class Role extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Role.of({@required bool mentor, @required bool learner}) {
    if (mentor && learner) {
      return Role._(Right("both"));
    }
    return mentor ? Role._(Right("mentor")) : Role._(Right("learner"));
  }

  const Role._(this.value);
}
