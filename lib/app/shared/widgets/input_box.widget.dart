// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BoxLogin extends StatelessWidget {
  const BoxLogin({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "label_test";

    return Card(
      color: const Color.fromRGBO(255, 255, 255, 0.9),
      child: Column(
        children: [
          TextField(
            onChanged: (value) {},
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: title,
              floatingLabelStyle: TextStyle(
                  color: Color.fromRGBO(255, 177, 43, 1), fontSize: 20),
              labelStyle: TextStyle(
                  color: Color.fromRGBO(94, 72, 151, 1), fontSize: 18),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(94, 72, 151, 0.4)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(255, 177, 43, 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
