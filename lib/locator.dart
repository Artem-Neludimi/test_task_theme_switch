import 'package:get_it/get_it.dart';

import 'models/logger.dart';

GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  getIt.registerSingleton<Logger>(Logger());
}
