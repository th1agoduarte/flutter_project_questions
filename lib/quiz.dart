import 'package:flutter/material.dart';
import './question.dart';
import './button_respond.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionsList;
  final int questionSelected;
  final void Function() respond;

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
    List<String> answers = hasQuestionSelected
        ? questionsList[questionSelected]['answer'] as List<String>
        : [];

    return Column(
      children: <Widget>[
        Question(questionsList[questionSelected]['question'].toString()),
        ...answers.map((t) => ButtonRespond(t.toString(), respond)).toList(),
      ],
    );
  }
}
