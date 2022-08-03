import 'package:flutter/material.dart';
import 'package:flutterscr/models/subject_model.dart';
import 'package:flutterscr/widgets/project_card.dart';

class ProjectListViewScreen extends StatefulWidget {
  final SubjectModel model;
  const ProjectListViewScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  State<ProjectListViewScreen> createState() => _ProjectListViewScreenState();
}

class _ProjectListViewScreenState extends State<ProjectListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Projects",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          const Divider(
            height: 30,
            thickness: 2,
            color: Colors.white70,
          ),
          Expanded(child: buildScreen()),
        ],
      ),
    );
  }

  Widget buildScreen() {
    return ListView(
      children: [
        ...List.generate(
          widget.model.projects.length,
          (index) => ProjectCard(
            model: widget.model.projects[index],
            index: index + 1,
          ),
        ),
      ],
    );
  }
}
