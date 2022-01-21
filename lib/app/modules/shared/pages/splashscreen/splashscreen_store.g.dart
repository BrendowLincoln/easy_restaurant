// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splashscreen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashscreenStore on SplashscreenStoreBase, Store {
  final _$counterAtom = Atom(name: 'SplashscreenStoreBase.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$SplashscreenStoreBaseActionController =
      ActionController(name: 'SplashscreenStoreBase');

  @override
  void increment() {
    final _$actionInfo = _$SplashscreenStoreBaseActionController.startAction(
        name: 'SplashscreenStoreBase.increment');
    try {
      return super.increment();
    } finally {
      _$SplashscreenStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$SplashscreenStoreBaseActionController.startAction(
        name: 'SplashscreenStoreBase.decrement');
    try {
      return super.decrement();
    } finally {
      _$SplashscreenStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
