import 'dart:async';

import 'package:easy_restaurant/app/modules/shared/pages/splashscreen/splashscreen_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class SplashscreenPage extends StatefulWidget {
  final String title;
  const SplashscreenPage({Key? key, this.title = 'SplashscreenPage'})
      : super(key: key);
  @override
  SplashscreenPageState createState() => SplashscreenPageState();
}

class SplashscreenPageState
    extends ModularState<SplashscreenPage, SplashscreenStore> {
  @override
  void initState() {
    store.startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: MediaQuery.of(context).size.width * 0.8,
        ),
      ),
    );
  }
}
