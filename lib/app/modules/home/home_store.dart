import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter = counter + 1;
  }

  @action
  void decrement() {
    counter = counter - 1;
  }
}
