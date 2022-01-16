import 'package:mobx/mobx.dart';

part 'menu_store.g.dart';

class MenuStore = _MenuStoreBase with _$MenuStore;
abstract class _MenuStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}