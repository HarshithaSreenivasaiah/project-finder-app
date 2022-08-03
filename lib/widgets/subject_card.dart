import 'package:flutter/material.dart';
import 'package:flutterscr/models/subject_model.dart';

import '../res/routes.dart';

class SubjectCard extends StatefulWidget {
  SubjectCard({
    Key? key,
    required this.model,
  }) : super(key: key);
  SubjectModel model;

  @override
  State<SubjectCard> createState() => _SubjectCardState();
}

class _SubjectCardState extends State<SubjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 4,
          color: widget.model.color,
        ),
      ),
      margin: EdgeInsets.all(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(2),
        onTap: () {
          Navigator.pushNamed(
            context,
            ScreenRoutes.projectlist,
            arguments: widget.model,
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              widget.model.image,
              width: 50,
              height: 50,
            ),
            Text(
              widget.model.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
