import 'package:flutter/material.dart';

class SectionButtonWidget extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;
  final Color color;
  final Color backgroundColor;

  const SectionButtonWidget(
      {Key? key,
      required this.icon,
      required this.onPressed,
      this.color = Colors.black,
      this.backgroundColor = const Color(0xFF69F0AE)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Icon(
          icon,
          size: 30,
        ),
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          primary: Theme.of(context).primaryColor,
          minimumSize: const Size(60, 60),
        ));
  }
}
