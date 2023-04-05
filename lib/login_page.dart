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

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                  width: 300,
                  height: 180,
                  child: Image.asset('assets/imagens/Logo_Branca.png')),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/imagens/Fundo.jpg',
              fit: BoxFit.cover,
            )),
        Container(
          color: Color.fromARGB(237, 104, 17, 112).withOpacity(0.4),
        ),
        _body(),
      ],
    ));
  }
}
