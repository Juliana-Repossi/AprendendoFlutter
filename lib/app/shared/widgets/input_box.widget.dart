import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BoxLogin extends StatelessWidget {
  final String title;
  //VoidCallback is a void Function

  //tipo de entrada
  final dynamic keyboardType;
  final bool ehSenha;

  const BoxLogin({
    super.key,
    required this.title,
    this.keyboardType,
    this.ehSenha = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white.withOpacity(0.9),
        child: Column(
          children: [
            TextField(
              obscureText: ehSenha,
              //onChanged:,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                labelText: title,
              ),
            ),
          ],
        ));
  }
}
