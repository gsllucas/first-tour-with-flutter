// é como se fosse um setState, mas para
// tratar codigos de regra de negócio
import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  bool isDarkTheme = false;

  static AppController instance = AppController();

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
