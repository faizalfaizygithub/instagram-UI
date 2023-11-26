import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color buttonIconColor;

  CircularButton(
      {required this.buttonIcon,
      required this.buttonAction,
      required this.buttonIconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          size: 29,
          color: buttonIconColor,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
