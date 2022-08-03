import 'package:flutter/material.dart';
import 'package:flutterscr/res/images.dart';
import 'package:flutterscr/res/routes.dart';
import 'package:flutterscr/screen/login/login_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final loginPageKey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: loginPageKey,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.all(32),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: Image.asset(
                      AppImages.logo,
                      width: 70,
                      height: 70,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Project Finder',
                      style: GoogleFonts.acme().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
                    child: TextField(
                      controller: controller.nameController,
                      decoration: const InputDecoration(
                        hintText: 'Name',
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: 'Name',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
                    child: TextField(
                      controller: controller.emailController,
                      decoration: const InputDecoration(
                        hintText: 'Email Id',
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: 'Email Id',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
                    child: TextFormField(
                      controller: controller.passwordController,
                      validator: (val) {
                        RegExp regex = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{7,}$');

                        if (!regex.hasMatch(val ?? '')) {
                          return ("password should contain upper,lower,digit and special character");
                        }
                        return null;
                      },
                      obscureText: controller.secureText,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            controller.secureText
                                ? Icons.remove_red_eye
                                : Icons.security,
                          ),
                          onPressed: () {
                            setState(() {
                              controller.secureText = !controller.secureText;
                            });
                          },
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 16),
                    child: ElevatedButton(
                      onPressed: () {
                        if (loginPageKey.currentState?.validate() == true) {
                          controller.handleLogin(context);
                        }
                      },
                      child: const Text(
                        "Login",
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        child: const Text('Sign Up'),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, ScreenRoutes.signup);
                        },
                      ),
                      TextButton(
                        child: const Text('Forgot Password'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
