import 'package:flutter/material.dart';
import 'package:myapp/app_controller.dart';
import 'package:myapp/widgets/column_widget.dart';
import 'package:myapp/widgets/login_widget.dart';
import 'package:myapp/widgets/switch_widget.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.light
                  : Brightness.dark,
              primarySwatch: Colors.blue,
            ),
            home: LoginPageWidget(),
          );
        });
  }
}
