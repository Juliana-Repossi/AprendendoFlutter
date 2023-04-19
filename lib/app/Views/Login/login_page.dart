import 'package:favo_inovacao/app/shared/themes/themes.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/input_box.widget.dart';
import '../../shared/widgets/button.widget.dart';
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
          color: lightTheme.colorScheme.primary.withOpacity(0.1),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
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
          title: "email",
          keyboardType: TextInputType.emailAddress,
        ),
        //senha
        const BoxLogin(
          title: "senha",
          keyboardType: TextInputType.visiblePassword,
          ehSenha: true,
        ),
        const SizedBox(
          height: 4.5,
        ),
        const Button(text: "Entrar"),
        const SizedBox(height: 25),
      ],
    );
  }

  fazerLogin() {
    setState(() {
      controladorLogin.login();
    });
  }
}
