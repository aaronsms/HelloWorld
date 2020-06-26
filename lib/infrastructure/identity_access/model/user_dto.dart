import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/identity_access/model/user/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const factory UserDto({
    @required String id,
    @required String name,
    @required String email,
    @required String password,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      name: user.name.getOrCrash(),
      email: user.name.getOrCrash(),
      password: user.password.getOrCrash(),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
