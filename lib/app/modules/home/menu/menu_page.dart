import 'package:easy_restaurant/app/modules/home/components/list_items_widget.dart';
import 'package:easy_restaurant/app/modules/home/components/section_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'menu_store.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);
  @override
  MenuPageState createState() => MenuPageState();
}

class MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF303030),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(vertical: 29),
                child: Text(
                  'Menu',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 29),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SectionButtonWidget(
                        icon: Icons.dinner_dining, onPressed: () {}),
                    SectionButtonWidget(
                        icon: Icons.local_pizza_outlined, onPressed: () {}),
                    SectionButtonWidget(
                        icon: Icons.lunch_dining_outlined, onPressed: () {}),
                    SectionButtonWidget(
                        icon: Icons.bakery_dining_outlined, onPressed: () {}),
                    SectionButtonWidget(
                        icon: Icons.liquor_outlined, onPressed: () {})
                  ],
                ),
              ),
              Expanded(
                child: ListItemsWidget(),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
