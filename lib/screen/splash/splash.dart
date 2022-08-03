import 'package:flutter/material.dart';
import 'package:flutterscr/main.dart';
import 'package:flutterscr/res/images.dart';
import 'package:flutterscr/res/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigate() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        final isLoggedIn = box.get('logged_in') ?? false;
        if (isLoggedIn) {
          Navigator.pushReplacementNamed(context, ScreenRoutes.home);
        } else {
          Navigator.pushReplacementNamed(context, ScreenRoutes.login);
        }
      },
    );
  }

  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImages.logo,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
