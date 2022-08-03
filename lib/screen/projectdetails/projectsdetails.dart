import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterscr/models/project_model.dart';
import 'package:markdown_widget/config/highlight_themes.dart' as theme;
import 'package:markdown_widget/config/style_config.dart';
import 'package:markdown_widget/markdown_generator.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({Key? key, required this.model}) : super(key: key);
  final ProjectModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Project Details",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.white54,
            thickness: 2,
            height: 30,
          ),
          Expanded(
            child: ListView(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  model.image,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  model.projectname,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  model.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Source Code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    children: MarkdownGenerator(
                          data: '''
```
${model.sourcecode}
```    
            ''',
                          styleConfig: StyleConfig(
                            preConfig: PreConfig(
                              theme: theme.atomOneDarkTheme,
                              tabSize: 2,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ).widgets ??
                        [],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
