import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        Container,
        ElevatedButton,
        StatelessWidget,
        Text,
        TextStyle,
        VoidCallback,
        Widget;

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          textStyle: TextStyle(color: Colors.white),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
