import 'package:flutter/material.dart';

import 'package:favo_inovacao/app/shared/themes/themes.dart';

import 'package:favo_inovacao/app/Views/Cadastro/cadastro_page.dart';
import 'app/Views/Login/login_page.dart';

main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/cadastro': (context) => const CadastroPage(),
      },
    );
  }
}
