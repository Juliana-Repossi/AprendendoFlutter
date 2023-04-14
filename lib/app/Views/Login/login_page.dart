import 'package:flutter/material.dart';
import '../../shared/widgets/input_box.widget.dart';
import '../../Controllers/Login/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controladorLogin = Login();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //imagem background
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/imagens/Fundo.jpg',
              fit: BoxFit.cover,
            )),
        //opacidade do fundo
        Container(
          color: const Color.fromRGBO(94, 72, 151, 0.4),
        ),
        _formularioLoginCadastro(context),
      ],
    ));
  }

  Widget _formularioLoginCadastro(context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              SizedBox(
                  width: 300,
                  height: 230,
                  child: Image.asset('assets/imagens/Logo_Branca.png')),
              Column(
                children: [
                  email(),
                  senha(),
                ],
              ),
              const SizedBox(height: 3),
              Column(
                children: [
                  botaoEntrar(),
                  const SizedBox(height: 25),
                  botaoCadastrar(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  email() {
    return const BoxLogin();
  }

  senha() {
    return const BoxLogin();
  }

  botaoEntrar() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(),
      onPressed: fazerLogin,
      child: const Center(
          heightFactor: 1.9,
          child: Text(
            'Entrar',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          )),
    );
  }

  botaoCadastrar() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(255, 177, 43, 1),
        elevation: 10,
      ),
      onPressed: () {
        Navigator.of(context).pushNamed('/cadastro');
      },
      child: const Center(
          heightFactor: 1.9,
          child: Text(
            'Cadastre-se',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          )),
    );
  }

  fazerLogin() {
    setState(() {
      controladorLogin.login();
    });
  }
}
