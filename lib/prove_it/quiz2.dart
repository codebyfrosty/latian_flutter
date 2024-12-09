//Prove it code

import 'package:flutter/material.dart';

import './quiz.dart';
import './result2.dart';

class Quiz2 extends StatefulWidget {
  // const Quiz1({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Quiz2State();
  }
}

class Quiz2State extends State<Quiz2> {
  final questions = const [
    {
      'questionText':
          'Apakah pemberian itu mempengaruhi pengambilan keputusan Anda?',
      'answers': [
        {'text': 'Ya', 'score': 1, 'warna': Color.fromRGBO(17, 190, 65, 1)},
        {'text': 'Tidak', 'score': 0, 'warna': Color.fromRGBO(210, 61, 61, 1)},
      ],
      'path': 'assets/images/Purpose.png'
    },
    {
      'questionText': 'Apakah pemberian itu bertentangan dengan ketentuan?',
      'answers': [
        {'text': 'Ya', 'score': 1, 'warna': Color.fromRGBO(17, 190, 65, 1)},
        {'text': 'Tidak', 'score': 0, 'warna': Color.fromRGBO(210, 61, 61, 1)},
      ],
      'path': 'assets/images/Rules.jpeg'
    },
    {
      'questionText': 'Apakah pemberian itu dilakukan secara terbuka?',
      'answers': [
        {'text': 'Ya', 'score': 0, 'warna': Color.fromRGBO(17, 190, 65, 1)},
        {'text': 'Tidak', 'score': 1, 'warna': Color.fromRGBO(210, 61, 61, 1)},
      ],
      'path': 'assets/images/Openness.png'
    },
    {
      'questionText': 'Apakah pemberian itu memiliki nilai yang besar?',
      'answers': [
        {'text': 'Ya', 'score': 1, 'warna': Color.fromRGBO(17, 190, 65, 1)},
        {'text': 'Tidak', 'score': 0, 'warna': Color.fromRGBO(210, 61, 61, 1)},
      ],
      'path': 'assets/images/Value.jpeg'
    },
    {
      'questionText': 'Apakah pemberian itu bertentangan dengan kode etik?',
      'answers': [
        {'text': 'Ya', 'score': 1, 'warna': Color.fromRGBO(17, 190, 65, 1)},
        {'text': 'Tidak', 'score': 0, 'warna': Color.fromRGBO(210, 61, 61, 1)},
      ],
      'path': 'assets/images/Ethic.png'
    },
    {
      'questionText': 'Apakah pemberian itu memiliki konflik kepentingan?',
      'answers': [
        {'text': 'Ya', 'score': 1, 'warna': Color.fromRGBO(17, 190, 65, 1)},
        {'text': 'Tidak', 'score': 0, 'warna': Color.fromRGBO(210, 61, 61, 1)},
      ],
      'path': 'assets/images/Identity.png'
    },
    {
      'questionText':
          'Apakah pemberian itu dilakukan berdekatan dengan waktu pengambilan keputusan?',
      'answers': [
        {'text': 'Ya', 'score': 1, 'warna': Color.fromRGBO(17, 190, 65, 1)},
        {'text': 'Tidak', 'score': 0, 'warna': Color.fromRGBO(210, 61, 61, 1)},
      ],
      'path': 'assets/images/Timing.png'
    },
  ];

  var questionIndex = 0;
  var totalscore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    totalscore = totalscore + score;
    // totalscore += score;

    if (questionIndex < questions.length) {
      print('We have more questions!');
    }

    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: questionIndex < questions.length
          ? AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: RichText(
                text: TextSpan(
                  text: 'Tes \n',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Fredoka One'),
                  children: [
                    TextSpan(
                        text: 'Prove ',
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(255, 189, 61, 1),
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Fredoka One'),
                        children: [
                          TextSpan(
                            text: 'It!',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Fredoka One'),
                          )
                        ])
                  ],
                ),
              ),
            )
          : totalscore == 0
              ? AppBar(
                  title: Text(
                    'Hasil Tes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Color.fromRGBO(21, 204, 72, 1),
                  centerTitle: true,
                  elevation: 0,
                  leading: IconButton(
                    icon: Icon(Icons.close, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                )
              : totalscore <= 2
                  ? AppBar(
                      title: Text(
                        'Hasil Tes',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(50, 50, 50, 1)),
                      ),
                      backgroundColor: Color.fromRGBO(249, 252, 0, 1),
                      centerTitle: true,
                      elevation: 0,
                      leading: IconButton(
                        icon: Icon(Icons.close, color:  Color.fromRGBO(50, 50, 50, 1)),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    )
                  : totalscore <= 4
                      ? AppBar(
                          title: Text(
                            'Hasil Tes',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          backgroundColor: Color.fromRGBO(240,149,42, 1),
                          centerTitle: true,
                          elevation: 0,
                          leading: IconButton(
                            icon: Icon(Icons.close, color: Colors.white),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        )
                      : totalscore <= 7
                          ? AppBar(
                              title: Text(
                                'Hasil Tes',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              backgroundColor: Color.fromRGBO(165,26,26, 1),
                              centerTitle: true,
                              elevation: 0,
                              leading: IconButton(
                                icon: Icon(Icons.close, color: Colors.white),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                            )
                          : null,
      body: questionIndex < questions.length
          ? Quiz(questions, _answerQuestion, questionIndex)
          : Result2(totalscore, resetQuiz),
    );
  }
}
