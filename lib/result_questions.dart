import 'package:flutter/material.dart';

class ResultQuestions extends StatelessWidget {
  final int score;

  final void Function() restart;

  ResultQuestions(this.score, this.restart);

  String get text {
    if (score < 8) {
      return 'Parabéns!';
    } else if (score < 12) {
      return 'Você é bom!';
    } else if (score < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(child: Text(text, style: TextStyle(fontSize: 28))),
        TextButton(
          child: Text('Reiniciar?', style: TextStyle(fontSize: 18)),
          onPressed: restart,
        )
      ],
    );
  }
}
