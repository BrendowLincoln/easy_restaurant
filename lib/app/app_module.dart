import 'package:easy_restaurant/app/modules/auth/auth_module.dart';
import 'package:easy_restaurant/app/modules/home/home_module.dart';
import 'package:easy_restaurant/app/modules/home/home_store.dart';
import 'package:easy_restaurant/app/modules/shared/pages/splashscreen/splashscreen_page.dart';
import 'package:easy_restaurant/app/modules/shared/shared_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SharedModule()),
    ModuleRoute('/auth/', module: AuthModule()),
    ModuleRoute('/home/', module: HomeModule())
  ];
}
