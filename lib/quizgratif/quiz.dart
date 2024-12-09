import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({ Key? key }) : super(key: key);
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(this.questions, this.answerQuestion, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height/5,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Question(questions[questionIndex]['questionText'] as String),
            ],
          ),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            ansChoice1: answer['text'],
            questioncounter: () => answerQuestion(answer['score']),
            warna: answer['color'],
            ukuran: answer['size'],
          );
        }).toList()
      ],
    );
  }
}
