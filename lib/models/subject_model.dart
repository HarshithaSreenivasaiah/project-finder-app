import 'package:flutter/material.dart';
import 'package:flutterscr/models/project_model.dart';

class SubjectModel {
  String name;
  String image;
  Color color;
  List<ProjectModel> projects;
  SubjectModel({
    required this.name,
    required this.image,
    required this.color,
    required this.projects,
  });
}
