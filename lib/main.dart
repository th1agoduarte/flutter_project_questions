import 'package:flutter/material.dart';
import './question.dart';
import './button_respond.dart';

main() => runApp(QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var _QuestionSelected = 0;
  void _respond() {
    setState(() {
      _QuestionSelected++;
    });
    print(_QuestionSelected);
  }

  final questions = [
    {
      'question': 'Qual é a sua cor favorita?',
      'answer': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'question': 'Qual é o seu animal favorito?',
      'answer': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'question': 'Qual é o seu instrutor favorito?',
      'answer': ['Maria', 'João', 'Leo', 'Pedro'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Question(questions[_QuestionSelected]['question'].toString()),
            ...(questions[_QuestionSelected]['answer'] as List<String>)
                .map((answer) => ButtonRespond(answer, _respond))
                .toList()
          ],
        ),
      ),
    );
  }
}

class QuestionsApp extends StatefulWidget {
  _QuestionsAppState createState() {
    return _QuestionsAppState();
  }
}
