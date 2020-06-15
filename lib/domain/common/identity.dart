import 'package:uuid/uuid.dart';
import 'package:dartz/dartz.dart';
import 'failure.dart';
import 'value_objects.dart';

abstract class Identity extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  Identity.fromUniqueId(String uniqueId) :
    assert(uniqueId != null),
    value = right(uniqueId);

  Identity.fromUuid() :
    value = right(Uuid().v1());
}
