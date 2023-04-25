import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BoxLogin extends StatelessWidget {
  final String title;
  final dynamic keyboardType;
  final bool ehSenha;

  const BoxLogin({
    super.key,
    required this.title,
    required this.keyboardType,
    this.ehSenha = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {},
      keyboardType: keyboardType,
      obscureText: ehSenha,
      decoration: InputDecoration(
        labelText: title,
      ),
    );
  }
}
