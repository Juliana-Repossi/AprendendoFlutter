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
              SizedBox(height: 20.0),
              Card(
                color: Color.fromRGBO(255, 255, 255, 0.9),
                child: Padding(
                  padding: const EdgeInsets.all(0.8),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          email = value;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'E-mail:',
                            border: UnderlineInputBorder()),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Color.fromRGBO(255, 255, 255, 0.9),
                child: Padding(
                  padding: const EdgeInsets.all(0.8),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          password = value;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password:',
                            border: UnderlineInputBorder()),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(92, 72, 151, 1),
                      elevation: 20,
                    ),
                    onPressed: () {
                      if (email == "juliana" && password == "123") {
                        Navigator.of(context).pushReplacementNamed('/home');
                      }
                    },
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 40.0,
                        child: Text(
                          'Entrar',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(255, 177, 43, 1),
                      elevation: 10,
                    ),
                    onPressed: () {},
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 40.0,
                        child: Text(
                          'Cadastre-se',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  )
                ],
              ),
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
