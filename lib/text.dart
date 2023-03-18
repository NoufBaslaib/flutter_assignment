import 'package:flutter/material.dart';

class ListToText extends StatelessWidget {
  List<String> component;
  int indxNum;
  ListToText(this.component, this.indxNum);

  @override
  Widget build(BuildContext context) {
    return Text(
      component[indxNum],
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    );
  }
}
