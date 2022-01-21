import 'package:easy_restaurant/app/modules/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login/login_page.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [Bind.lazySingleton((i) => AuthStore())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginPage()),
  ];
}
