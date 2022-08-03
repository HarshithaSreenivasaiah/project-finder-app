import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterscr/models/project_model.dart';

import '../res/routes.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    Key? key,
    required this.model,
    required this.index,
  }) : super(key: key);
  final ProjectModel model;
  final int index;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: [
            Colors.red,
            Colors.green,
            Colors.purple,
            Colors.blue,
            Colors.orange,
          ][widget.index % 5],
        ),
      ),
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: () {
          Navigator.pushNamed(
            context,
            ScreenRoutes.projectdetails,
            arguments: widget.model,
          );
        },
        child: ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.8),
                      color: [
                        Colors.red,
                        Colors.green,
                        Colors.purple,
                        Colors.blue,
                        Colors.orange,
                      ][widget.index % 5],
                    ),
                    child: Center(
                      child: Text(
                        '${widget.index}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Text(
                      widget.model.projectname,
                      style: TextStyle(
                        color: [
                          Colors.red,
                          Colors.green,
                          Colors.purple,
                          Colors.blue,
                          Colors.orange,
                        ][widget.index % 5],
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.model.description,
                style: const TextStyle(
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
