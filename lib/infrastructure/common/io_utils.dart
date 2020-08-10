import 'dart:io';

import 'package:path_provider/path_provider.dart';

Future<String> get localPath async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<String> get tempPath async {
  final directory = await getTemporaryDirectory();
  return directory.path;
}

Future<String> get cookie async {
  final appDirectory = await localPath;
  final file = File('$appDirectory/authToken');
  return file.readAsStringSync();
}

Future<String> get ownUserId async {
  final appDirectory = await localPath;
  final file = File('$appDirectory/userId');
  return file.readAsStringSync();
}

String get host => '128.199.164.241:3000';