import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({ Key? key }) : super(key: key);
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  // final int ukuran;

  Quiz(this.questions, this.answerQuestion, this.questionIndex);

  // int ukuran = questions[questionIndex]['size'];

  ukuran(int index){
    int size = questions[index]['size'];
    var fontsize = size.toDouble();
    return fontsize;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(227, 227, 227, 1),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          questions[questionIndex]['questionText'] as String,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/3.5,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Question(
                        'Apakah contoh kasus di atas termasuk gratifikasi yang dilarang?'),
                  ],
                ),
              ),


              ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
                  .map((answer) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Answer(answer['text'], () => answerQuestion(answer['score']),
                        answer['warna']),
                  ),
                );
              }).toList()
            ],
          ),
        ),
      ],
    );
  }
}
