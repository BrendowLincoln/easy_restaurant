import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'splashscreen_store.g.dart';

class SplashscreenStore = SplashscreenStoreBase with _$SplashscreenStore;

abstract class SplashscreenStoreBase with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter = counter + 1;
    print(counter);
  }

  @action
  void decrement() {
    counter = counter - 1;
  }

  Future<Timer> startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    return Modular.to.navigate('/auth/');
  }
}
