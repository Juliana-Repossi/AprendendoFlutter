// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Image.asset('Imagens/Logo_roxa.png'),
                SizedBox(height: 50.0),
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'E-mail:', border: OutlineInputBorder()),
                ),
                SizedBox(height: 12),
                TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password:', border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    if (email == "juliana" && password == "123") {
                      Navigator.of(context).pushReplacementNamed('/home');
                    }
                  },
                  child: Text('Entrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
