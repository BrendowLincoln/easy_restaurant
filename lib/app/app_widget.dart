import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Slidy',
      theme: ThemeData(
          colorScheme: const ColorScheme.dark(
        primary: Color(0xFF69F0AE),
        secondaryVariant: Color(0xFF69F0AE),
        secondary: Color(0xFF69F0AE),
        brightness: Brightness.dark,
        primaryVariant: Color(0xFF69F0AE),
        background: Color(0xFF303030),
      )),
    ).modular();
  }
}
