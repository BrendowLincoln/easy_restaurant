import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:easy_restaurant/app/modules/shared/shared_module.dart';

void main() {
  setUpAll(() {
    initModule(SharedModule());
  });
}
