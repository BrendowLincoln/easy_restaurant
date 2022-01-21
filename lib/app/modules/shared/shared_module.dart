import 'package:easy_restaurant/app/modules/shared/pages/splashscreen/splashscreen_page.dart';
import 'package:easy_restaurant/app/modules/shared/pages/splashscreen/splashscreen_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/splashscreen/splashscreen_page.dart';

class SharedModule extends Module {
  @override
  final List<Bind> binds = [Bind.lazySingleton((i) => SplashscreenStore())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const SplashscreenPage())
  ];
}
