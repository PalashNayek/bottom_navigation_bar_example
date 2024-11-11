import 'package:get_it/get_it.dart';

import '../view_models/bottom_nav_view_model.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton(() => BottomNavViewModel());
}
