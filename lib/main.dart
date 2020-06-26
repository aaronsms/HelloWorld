import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:helloworld/injection.dart';
import 'package:helloworld/presentation/core/app_root.dart';
import 'package:helloworld/presentation/core/routes.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  Routes.createRoutes();
//  debugPaintSizeEnabled = true;
  runApp(AppRoot());
}