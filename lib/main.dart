import 'package:flutter/material.dart';
import 'package:flutterscr/models/project_model.dart';
import 'package:flutterscr/models/subject_model.dart';
import 'package:flutterscr/res/routes.dart';
import 'package:flutterscr/screen/home/home.dart';
import 'package:flutterscr/screen/login/login.dart';
import 'package:flutterscr/screen/projectdetails/projectsdetails.dart';
import 'package:flutterscr/screen/projectlist/project_list.dart';
import 'package:flutterscr/screen/signup/signup.dart';
import 'package:flutterscr/screen/splash/splash.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box box;
void main() async {
  await init();
  runApp(const MyApp());
}

Future<void> init() async {
  await Hive.initFlutter();
  box = await Hive.openBox('testBox');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ScreenRoutes.splash: (_) => const SplashScreen(),
        ScreenRoutes.home: (_) => const HomeScreen(),
        ScreenRoutes.login: (_) => const LoginScreen(),
        ScreenRoutes.signup: (_) => const SignupScreen(),
        ScreenRoutes.projectlist: (con) => ProjectListViewScreen(
              model: ModalRoute.of(con)!.settings.arguments! as SubjectModel,
            ),
        ScreenRoutes.projectdetails: (con) {
          return ProjectDetails(
            model: ModalRoute.of(con)!.settings.arguments! as ProjectModel,
          );
        }
      },
      initialRoute: ScreenRoutes.splash,
      debugShowCheckedModeBanner: false,
    );
  }
}
