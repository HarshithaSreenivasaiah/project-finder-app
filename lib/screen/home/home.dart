import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterscr/data/data.dart';
import 'package:flutterscr/main.dart';
import 'package:flutterscr/models/subject_model.dart';
import 'package:flutterscr/res/images.dart';
import 'package:flutterscr/res/routes.dart';
import 'package:flutterscr/widgets/subject_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final subjectList = [
    SubjectModel(
      name: 'FLUTTER',
      image: AppImages.flutter,
      color: Colors.red,
      projects: flutterProjects,
    ),
    SubjectModel(
      name: 'JAVA',
      image: AppImages.java,
      color: Colors.orange,
      projects: javaProjects,
    ),
    SubjectModel(
      name: 'PYTHON',
      image: AppImages.python,
      color: Colors.purpleAccent,
      projects: pythonProjects,
    ),
    SubjectModel(
      name: 'CPP',
      image: AppImages.cpp,
      color: Colors.deepOrange,
      projects: cppProjects,
    ),
    SubjectModel(
      name: 'JS',
      image: AppImages.js,
      color: Colors.pink,
      projects: jsProjects,
    ),
    SubjectModel(
      name: 'KOTLIN',
      image: AppImages.kotlin,
      color: Colors.purple,
      projects: kotlinProjects,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('SampleProject'),
        actions: [
          IconButton(
            onPressed: () {
              signOut();
            },
            icon: const Icon(
              Icons.exit_to_app,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.white54,
            height: 30,
            thickness: 2,
          ),
          Expanded(child: buildScreen()),
        ],
      ),
    );
  }

  Widget buildScreen() {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        ...subjectList.map((e) => SubjectCard(model: e)).toList(),
      ],
    );
  }

  void signOut() async {
    await box.put('logged_in', false);
    Navigator.pushReplacementNamed(context, ScreenRoutes.splash);
  }
}
