import 'package:favo_inovacao/home_page.dart';
import 'package:favo_inovacao/login_page.dart';
import 'package:flutter/material.dart';
import 'app_controller.dart';
//import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //para escutar o evento
    return AnimatedBuilder(
      // está escutando a
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.purple,
            brightness: AppController.instance.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const LoginPage(),
            '/home': (context) => const HomePage(),
          },
        );
      },
    );
  }
}
