import 'package:flutter/material.dart';
import './question.dart';
import './button_respond.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionsList;
  final int questionSelected;
  final void Function(int) respond;

  Quiz({
    required this.questionsList,
    required this.questionSelected,
    required this.respond,
  });

  bool get hasQuestionSelected {
    return questionSelected < questionsList.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = hasQuestionSelected
        ? questionsList[questionSelected]['answer'] as List<Map<String, Object>>
        : [];

    return Column(
      children: <Widget>[
        Question(questionsList[questionSelected]['question'].toString()),
        ...answers
            .map((answer) => ButtonRespond(answer['text'].toString(),
                () => respond(int.parse(answer['score'].toString()))))
            .toList(),
      ],
    );
  }
}
