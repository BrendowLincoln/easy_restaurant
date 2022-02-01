import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.png',
          width: MediaQuery.of(context).size.width * 0.4,
        ),
        backgroundColor: const Color(0xFF494849),
      ),
      body: PageView(
        controller: store.pageController,
        onPageChanged: store.changePage,
        children: store.pages,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.receipt, size: 26),
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {},
      ),
      bottomNavigationBar: Observer(
        builder: (context) {
          return BottomNavigationBar(
              elevation: 20,
              backgroundColor: const Color(0xFF494849),
              currentIndex: store.currentPage,
              onTap: store.changePage,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.restaurant_menu), label: 'Menu'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.info), label: 'A definir'),
              ]);
        },
      ),
    ));
  }
}
