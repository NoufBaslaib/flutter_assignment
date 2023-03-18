import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback textController;
  TextControl(this.textController);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: textController, child: Text('press to change the text')),
    );
  }
}
