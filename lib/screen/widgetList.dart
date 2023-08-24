import 'dart:html';

import 'package:assignment_11/const/model.dart';
import 'package:assignment_11/screen/video_screen.dart';
import 'package:flutter/material.dart';

class ListTILE extends StatelessWidget {
  final Model model;
  const ListTILE({super.key, required this.model}) : assert(model != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => VideoScreen(
                        item: model,
                      ))));
        },
        leading: Text(model.id.toString()),
        title: Text(model.name),
        subtitle: Text(model.des),
      ),
    );
  }
}
