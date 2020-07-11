import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/value_objects.dart';
import 'package:helloworld/domain/common/value_validator.dart';

class ProfilePicture extends ValueObject<File> {
  @override
  final Either<ValueFailure<File>, File> value;

  factory ProfilePicture(File file) {
    assert(file != null);
    return ProfilePicture._(right(file));
  }

  factory ProfilePicture.fromFilePath(String input) {
    assert(input != null);
    return ProfilePicture._(validateFilePath(input));
  }

  factory ProfilePicture.empty() {
    return ProfilePicture._(left(const ValueFailure.empty()));
  }

  const ProfilePicture._(this.value);
}