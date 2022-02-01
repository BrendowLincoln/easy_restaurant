import 'package:flutter_modular/flutter_modular.dart';

import 'login/login_page.dart';
import 'login/login_store.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [Bind.lazySingleton((i) => LoginStore())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginPage()),
  ];
}
