import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/identity_access/model/user/email_address.dart';
import 'package:helloworld/domain/identity_access/model/user/password.dart';
import 'package:helloworld/domain/identity_access/service/authentication_failure.dart';
import 'package:helloworld/domain/identity_access/service/i_authentication_facade.dart';
import 'package:helloworld/infrastructure/common/io_utils.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthenticationFacade)
class AuthenticationFacade implements IAuthenticationFacade {
  static const String url = 'http://192.168.0.109:3000/api/sessions';

  @override
  Future<Either<AuthenticationFailure, Unit>> loginUserWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    try {
      final response = await http.post(
        url,
        body: jsonEncode({
          "email": emailAddress.getOrCrash(),
          "password": password.getOrCrash(),
        }),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
        },
      );

      if (response.statusCode == 403) {
        return left(
            const AuthenticationFailure.invalidEmailAndPasswordCombination());
      }

      if (response.statusCode == 500) {
        return left(const AuthenticationFailure.serverError());
      }

      final appDirectory = await localPath;
      final file = File('$appDirectory/authToken');
      file.writeAsStringSync(response.headers['set-cookie'].split(';')[0]);

      return right(unit);
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return left(const AuthenticationFailure.serverError());
    }
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> loginUserWithGoogle() async {
    return const Right(unit);
  }
}
