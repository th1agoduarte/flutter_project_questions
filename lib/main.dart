import 'package:flutter/material.dart';

main() => runApp(QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var QuestionSelected = 0;
  void _respond() {
    setState(() {
      QuestionSelected++;
    });
    print(QuestionSelected);
  }

  final List<String> questions = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
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
            Text(questions[QuestionSelected]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: _respond,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: () {
                print('Pergunta respondida 2!');
              },
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: () => print('Pergunta respondida 3!'),
            ),
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
