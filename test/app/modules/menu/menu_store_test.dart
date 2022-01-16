import 'package:flutter_test/flutter_test.dart';
import 'package:easy_restaurant/app/modules/menu/menu_store.dart';
 
void main() {
  late MenuStore store;

  setUpAll(() {
    store = MenuStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}