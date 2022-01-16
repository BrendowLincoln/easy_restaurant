import 'package:easy_restaurant/app/modules/home/home_store.dart';
import 'package:easy_restaurant/app/modules/splashscreen/splashscreen_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashscreenModule()),
  ];
}
