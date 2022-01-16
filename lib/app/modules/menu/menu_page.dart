import 'package:flutter_modular/flutter_modular.dart';
import 'package:easy_restaurant/app/modules/menu/menu_store.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  final String title;
  const MenuPage({Key? key, this.title = 'MenuPage'}) : super(key: key);
  @override
  MenuPageState createState() => MenuPageState();
}
class MenuPageState extends State<MenuPage> {
  final MenuStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}