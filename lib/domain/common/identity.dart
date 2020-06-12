import 'package:uuid/uuid.dart';
import 'failure.dart';
import 'value_objects.dart';
import 'package:dartz/dartz.dart';

class Identity extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Identity.fromUuid() => Identity._(right(Uuid().v1()));

  factory Identity.fromUniqueId(String uniqueId) {
    assert(uniqueId != null);
    return Identity._(right(uniqueId));
  }

  const Identity._(this.value);
}
