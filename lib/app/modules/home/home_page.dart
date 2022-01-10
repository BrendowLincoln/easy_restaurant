import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count of taps',
              style: Theme.of(context).textTheme.headline5,
            ),
            Observer(
              builder: (context) => Text(
                '${store.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: FloatingActionButton(
              onPressed: () {
                store.decrement();
              },
              child: Icon(Icons.remove),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              store.increment();
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
