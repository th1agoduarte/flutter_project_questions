import 'package:flutter/material.dart';

class ResultQuestions extends StatelessWidget {
  final String text;
  ResultQuestions(this.text);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
