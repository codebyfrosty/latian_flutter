import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/modul.dart';
import 'package:flutter_complete_guide/result.dart';
import './halUtama.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalscore = 0;
    });
  }

  final questions = const [
    {
      'questionText': 'Apa makanan kesukaan mu?',
      'answers': [
        {'text': 'Magelangan', 'score': 1},
        {'text': 'Nasi Tumpang', 'score': 2},
        {'text': 'Ayam Goreng', 'score': 3}
      ],
    },
    {
      'questionText': 'Apa minuman kesukaan mu?',
      'answers': [
        {'text': 'Es Teh Manis', 'score': 1},
        {'text': 'Coca cola', 'score': 2},
        {'text': 'Kopi Kapal Api', 'score': 3}
      ],
    },
    {
      'questionText': 'Apa hobi mu?',
      'answers': [
        {'text': 'Main Game', 'score': 1},
        {'text': 'Main Futsal', 'score': 2},
        {'text': 'Jalan-jalan', 'score': 3}
      ],
    },
  ];

  var questionIndex = 0;
  var totalscore = 0;
  // var count = 0;
  void _answerQuestion(int score) {
    totalscore = totalscore + score;
    // totalscore += score;

    if (questionIndex < questions.length) {
      print('We have more questions!');
    }

    setState(() {
      // count = count + 1;
      questionIndex = questionIndex + 1;
    });

    // print('Answer Chonsen!');
    print(questionIndex);
  }

  bool showQuiz = false;
  bool showModul = false;
  bool showUtama = true;

  void balikmenu() {
    setState(() {
      showQuiz = false;
      questionIndex = 0;
      totalscore = 0;
    });
  }

  Widget quizLogic() {
    return questionIndex < questions.length
        ? Quiz(questions, _answerQuestion, questionIndex)
        : Result(totalscore, resetQuiz, balikmenu);
    // print(questionIndex);
  }

  void operatorModul() {
    setState(() {
      showModul = true;
      showQuiz = false;
      showUtama = false;
    });
  }

  void operatorQuiz() {
    setState(() {
      showModul = false;
      showQuiz = true;
      showUtama = false;
      print('clicked');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Quiz App'),
            ),
            body: Container(
              child: Column(
                children: [
                  Text('Halaman Utama',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                  Center(
                    child: RaisedButton(
                        child: Text('Modul'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Modul()),
                          );
                        }),
                  ),
                  Center(
                    child: showQuiz
                        ? quizLogic()
                        : RaisedButton(
                            child: Text('Quiz'), onPressed: operatorQuiz),
                  ),
                ],
              ),
            )));
  }
}
