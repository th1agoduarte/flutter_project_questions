import 'package:flutter/material.dart';
import 'package:project_questions/result_questions.dart';
import './result_questions.dart';
import './quiz.dart';

main() => runApp(QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var _QuestionSelected = 0;
  var _totalScore = 0;
  final _questionsList = const [
    {
      'question': 'Qual é a sua cor favorita?',
      'answer': [
        {'text': 'Preto', 'score': 10},
        {'text': 'Vermelho', 'score': 5},
        {'text': 'Verde', 'score': 3},
        {'text': 'Branco', 'score': 1},
      ]
    },
    {
      'question': 'Qual é o seu animal favorito?',
      'answer': [
        {'text': 'Coelho', 'score': 10},
        {'text': 'Cobra', 'score': 5},
        {'text': 'Elefante', 'score': 3},
        {'text': 'Leão', 'score': 1},
      ]
    },
    {
      'question': 'Qual é o seu instrutor favorito?',
      'answer': [
        {'text': 'Maria', 'score': 10},
        {'text': 'João', 'score': 5},
        {'text': 'Leo', 'score': 3},
        {'text': 'Pedro', 'score': 1},
      ]
    },
  ];
  void _respond(int score) {
    if (hasQuestionSelected) {
      setState(() {
        _QuestionSelected++;
        _totalScore += score;
      });
    }
  }

  void _restart() {
    setState(() {
      _QuestionSelected = 0;
      _totalScore = 0;
    });
  }

  bool get hasQuestionSelected {
    return _QuestionSelected < _questionsList.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas"),
          ),
          body: hasQuestionSelected
              ? Quiz(
                  questionsList: _questionsList,
                  questionSelected: _QuestionSelected,
                  respond: _respond,
                )
              : ResultQuestions(_totalScore, _restart)),
    );
  }
}

class QuestionsApp extends StatefulWidget {
  _QuestionsAppState createState() {
    return _QuestionsAppState();
  }
}
