import 'package:flutter/material.dart';

import '../../shared/widgets/input_box.widget.dart';
import '../../shared/widgets/button.widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.center,
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
          color: const Color.fromARGB(127, 27, 0, 37),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: _formularioLoginCadastro(),
          ),
        ),
      ],
    ));
  }

  Widget _formularioLoginCadastro() {
    return Column(
      children: [
        //logo
        SizedBox(
            width: 300,
            height: 230,
            child: Image.asset('assets/imagens/Logo_Branca.png')),
        //email
        const BoxLogin(
            title: "email", keyboardType: TextInputType.emailAddress),
        //senha
        const BoxLogin(
            title: "senha",
            keyboardType: TextInputType.visiblePassword,
            ehSenha: true),
        Container(
          alignment: Alignment.centerRight,
          child: TextButton(
            child: const Text(
              "Esqueci minha senha",
              style: TextStyle(fontSize: 16),
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(height: 15),
        const Button(text: "Entrar"),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          child: TextButton(
            child: const Text(
              "Cadastre-se !",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
