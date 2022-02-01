import 'package:easy_restaurant/app/modules/home/menu/menu_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final List<Widget> pages = [const MenuPage(), Container(color: Colors.cyan)];
  final PageController pageController = PageController();

  @observable
  int currentPage = 0;

  @action
  void changePage(int selectedPage) {
    currentPage = selectedPage;
    pageController.animateToPage(selectedPage,
        duration: const Duration(milliseconds: 200), curve: Curves.easeOut);
  }
}
