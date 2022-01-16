import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:easy_restaurant/app/modules/splashscreen/splashscreen_store.dart';
import 'package:flutter/material.dart';

class SplashscreenPage extends StatefulWidget {
  final String title;
  const SplashscreenPage({Key? key, this.title = 'SplashscreenPage'})
      : super(key: key);
  @override
  SplashscreenPageState createState() => SplashscreenPageState();
}

class SplashscreenPageState extends State<SplashscreenPage> {
  final SplashscreenStore store = Modular.get();

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    return Modular.to.navigate('/home-module/');
  }

  @override
  void initState() {
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset('assets/images/logo.png'),
          width: 300.0,
        ),
      ),
    );
  }
}
