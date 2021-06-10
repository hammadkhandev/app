import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.purple,
        ),
        child: Text(answerText),
        onPressed: () {
          print('centrebutton');
          selectHandler();
        },
      ),
    );
  }
}
