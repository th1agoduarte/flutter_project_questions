import 'package:flutter/material.dart';
import './question.dart';
import './button_respond.dart';

main() => runApp(QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var _QuestionSelected = 0;
  final _questionsList = const [
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
  void _respond() {
    if (hasQuestionSelected) {
      setState(() {
        _QuestionSelected++;
      });
    }
    print(_QuestionSelected);
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
              ? Column(
                  children: [
                    Question(_questionsList[_QuestionSelected]['question']
                        .toString()),
                    ...(_questionsList[_QuestionSelected]['answer']
                            as List<String>)
                        .map((answer) => ButtonRespond(answer, _respond))
                        .toList()
                  ],
                )
              : Center(
                  child: Text(
                    "Parabéns!",
                    style: TextStyle(fontSize: 28),
                  ),
                )),
    );
  }
}

class QuestionsApp extends StatefulWidget {
  _QuestionsAppState createState() {
    return _QuestionsAppState();
  }
}
