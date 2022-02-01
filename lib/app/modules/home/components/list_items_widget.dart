import 'dart:math';

import 'package:flutter/material.dart';

class ListItemsWidget extends StatefulWidget {
  ListItemsWidget();

  double randomValue = 0;

  @override
  ListItemsWidgetState createState() => ListItemsWidgetState();
}

class ListItemsWidgetState extends State<ListItemsWidget> {
  @override
  Widget build(BuildContext context) {
    TextStyle emphasisTextTheme = const TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, wordSpacing: 0.15);

    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        Random random = Random();
        widget.randomValue = random.nextDouble() * (100 - 1) + 1;

        return Card(
          elevation: 4,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                    // border: Border.all(color: Colors.red),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1560684352-8497838a2229?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2028&q=80',
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(4)),
                  ),
                  width: 100,
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Card ${index + 1}', style: emphasisTextTheme),
                            const SizedBox(height: 3),
                            Text(
                              'Subtitle ${index + 1}',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                        Text(
                          'R\$ ${widget.randomValue.toStringAsFixed(2)}',
                          style: emphasisTextTheme,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}


// ListTile(
//     contentPadding: const EdgeInsets.symmetric(horizontal: 0),
//     leading: Container(
//     decoration: const BoxDecoration(
//         borderRadius:
//             BorderRadius.horizontal(left: Radius.circular(4)),
//         color: Colors.red,
//         image: DecorationImage(
//         image: NetworkImage(
//             'https://images.unsplash.com/photo-1560684352-8497838a2229?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2028&q=80',
//         ),
//         fit: BoxFit.fill,
//         )),
//     width: MediaQuery.of(context).size.width * 0.15,
//     ),
//     title: Row(
//     mainAxisAlignment: MainAxisAlignment.start,
//     children: [
//     Text('Card $index'),
//     ],
//     ),
// )