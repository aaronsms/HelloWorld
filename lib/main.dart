import 'package:flutter/material.dart';
import 'package:helloworld/injection.dart';
import 'package:helloworld/presentation/core/app_root.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppRoot());
}