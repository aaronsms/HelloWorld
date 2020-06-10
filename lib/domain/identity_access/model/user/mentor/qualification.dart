import 'package:helloworld/domain/common/entity.dart';
import 'package:helloworld/domain/common/languages.dart';

import 'qualification_id.dart';

class Qualification extends Entity {
  @override
  final QualificationId id;
  final Language language;
  final String title;
  final String document;

  const Qualification(this.id, this.language, this.title, this.document);
}