import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  // faz uma instancia estática da classe para que ela seja a mesma em todas as telas
  static AppController instance = AppController();

  bool isDartTheme = false;

  void changeTheme() {
    isDartTheme = !isDartTheme;

    //notifica quem está escutando esse evento
    notifyListeners();
  }
}
