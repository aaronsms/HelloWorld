import 'package:helloworld/domain/common/identity.dart';

abstract class Entity {
  Identity get id;
  const Entity();
}