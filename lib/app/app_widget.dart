import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Slidy',
      theme: ThemeData.dark(),
      darkTheme: ThemeData(
          primaryColor: const Color(0xFF69F0AE),
          colorScheme:
              ColorScheme.fromSwatch(accentColor: const Color(0xFF303030))),
    ).modular();
  }
}
