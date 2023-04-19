import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;

  const Button({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Center(
          heightFactor: 1.9,
          child: Text(
            text,
          )),
    );
  }
}
