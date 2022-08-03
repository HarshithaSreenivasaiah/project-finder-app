import 'package:flutter/material.dart';
import 'package:flutterscr/main.dart';
import 'package:flutterscr/res/routes.dart';

class LoginController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool secureText = true;

  void handleLogin(BuildContext context) async {
    await box.put('name', nameController.text);
    await box.put('email', emailController.text);
    await box.put('password', passwordController.text);
    await box.put('logged_in', passwordController.text == 'Harshi@123');
    Navigator.pushReplacementNamed(context, ScreenRoutes.splash);
  }
}
