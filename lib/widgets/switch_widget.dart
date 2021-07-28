// Componetizando Widgets

import 'package:flutter/material.dart';
import 'package:myapp/app_controller.dart';

class WidgetSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
