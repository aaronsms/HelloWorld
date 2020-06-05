import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'injection.iconfig.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String environment) {
  $initGetIt(getIt, environment: environment);
}