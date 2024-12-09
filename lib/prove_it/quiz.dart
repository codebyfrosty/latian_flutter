import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({ Key? key }) : super(key: key);
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
    this.questions,
    this.answerQuestion,
    this.questionIndex,
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          // height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Image.asset(questions[questionIndex]['path'] as String,fit: BoxFit.cover,),
                  ),
                ),
                Container(
                  // color: Colors.grey,
                    height: MediaQuery.of(context).size.height / 3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Question(
                            questions[questionIndex]['questionText'] as String),
                      ],
                    )),
                ...(questions[questionIndex]['answers']
                        as List<Map<String, Object>>)
                    .map((answer) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Answer(answer['text'],
                        () => answerQuestion(answer['score']), answer['warna']),
                  );
                }).toList()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
