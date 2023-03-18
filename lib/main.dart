// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'package:flutter_assignment/text_control.dart';
import 'package:flutter_assignment/text.dart';

void main() {
  runApp(MyAssignment());
}

class MyAssignment extends StatefulWidget {
  @override
  State<MyAssignment> createState() => _MyAssignmentState();
}

class _MyAssignmentState extends State<MyAssignment> {
  var textIndex = 0;
  void chooseText() {
    setState(() {
      textIndex = textIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var Texts = ['Hello world', 'Meow', 'call me Nouf'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Project'),
        ),
        body: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            children: [
              ListToText(Texts, textIndex),
              const SizedBox(
                height: 40,
              ),
              TextControl(chooseText)
            ],
          ),
        ),
      ),
    );
  }
}
