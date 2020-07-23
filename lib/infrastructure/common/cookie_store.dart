import 'package:cookie_jar/cookie_jar.dart';

import 'io_utils.dart';

Future<PersistCookieJar> get cookieStore async => PersistCookieJar(dir: '${await tempPath}/cookies');
