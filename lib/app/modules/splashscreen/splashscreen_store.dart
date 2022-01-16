import 'package:mobx/mobx.dart';

part 'splashscreen_store.g.dart';

class SplashscreenStore = _SplashscreenStoreBase with _$SplashscreenStore;
abstract class _SplashscreenStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}