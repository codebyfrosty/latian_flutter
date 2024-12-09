//quiz pengetahuan gratifikasi code

import 'package:flutter/material.dart';

import './quiz.dart';

class Quiz3 extends StatefulWidget {
  // const Quiz1({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Quiz3State();
  }
}

class Quiz3State extends State<Quiz3> {
  final questions = const [
    {
      'questionText':
          'Tuan MR akan mencalonkan sebagai peserta pemilihan Kepala Desa, pada malam hari itu saya dan rekan saya diminta untuk berkumpul di rumah beliau. Kemudian beliau memberikan kaos dan uang kampanye kepada saya.',
      'answers': [
        {'text': 'Ya', 'score': 1, 'warna': Color.fromRGBO(17, 190, 65, 1)},
        {'text': 'Tidak', 'score': 0, 'warna': Color.fromRGBO(210, 61, 61, 1)},
      ],
      'size': 20.0
    },
    {
      'questionText':
          'Rekan kerja saya akan ulang tahun bulan depan. Saya tidak mampu membelikan hadiah yang pantas untuk beliau. Saya mengajak beberapa rekan kerja lain untuk mengumpulkan uang dan membelikan kado yang tepat. Pada hari ulang tahun, kami memberikan kado berupa kue ulang tahun beserta kartu ucapan.',
      'answers': [
        {'text': 'Ya', 'score': 0, 'warna': Color.fromRGBO(17, 190, 65, 1)},
        {'text': 'Tidak', 'score': 1, 'warna': Color.fromRGBO(210, 61, 61, 1)},
      ],
      'size': 20.0
    },
    {
      'questionText':
          'Ibu AP selaku istri walikota sering menerima pemberian berupa bingkisan barang mewah dari rekan-rekan/bawahan suaminya. Pada saat yang sama di wilayah tersebut sedang ada lelang proyek pembangunan Gedung.',
      'answers': [
        {'text': 'Ya', 'score': 1, 'warna': Color.fromRGBO(17, 190, 65, 1)},
        {'text': 'Tidak', 'score': 0, 'warna': Color.fromRGBO(210, 61, 61, 1)},
      ],
      'size': 20.0
    },
    {
      'questionText':
          'Sebagai istri pejabat di Pemda, saya sering mendampingi suami melakukan kunjungan kerja ke daerah-daerah. Setiap kunjungan selalu saja saya dan suami dibawakan buah tangan hasil kerajinan tangan atau makanan. Suami selalu menerima, sehingga saya pun menerima, karena rasanya tidak pantas menolak. Kadang saya menemukan kartu ucapan atau kartu nama di dalam bungkusan buah tangan tersebut.',
      'answers': [
        {'text': 'Ya', 'score': 1, 'warna': Color.fromRGBO(17, 190, 65, 1)},
        {'text': 'Tidak', 'score': 0, 'warna': Color.fromRGBO(210, 61, 61, 1)},
      ],
      'size': 18.0
    },
    {
      'questionText':
          'Selama ini pihak kantor jika kedatangan pengawas pasti menjamu dan memberikan sesuatu hidangan makanan sebagai ucapan terima kasih. Ini dilakukan dengan ikhlas dan tanpa diminta, sebagai kewajiban tuan rumah untuk menjamu tamu yang datang.',
      'answers': [
        {'text': 'Ya', 'score': 0, 'warna': Color.fromRGBO(17, 190, 65, 1)},
        {'text': 'Tidak', 'score': 1, 'warna': Color.fromRGBO(210, 61, 61, 1)},
      ],
      'size': 20.0
    },
  ];

  final kj = const [
    'Jawaban studi kasus ',
    'Karena kasus tersebut berpotensi menimbulkan konflik kepentingan yakni dapat dikatakan sebagai bentuk suap untuk kita agar memilih beliau dalam pilkades serta metode pemberiannya juga dilakukan secara rahasia.',
    'Karena kasus tersebut merupakan pemberian dari sesama pegawai dalam rangka ulang tahun yang lazim dilakukan dalam konteks sosial sesama rekan kerja.',
    'Karena kasus tersebut memiliki potensi menimbulkan konflik kepentingan yang mana dapat mempengaruhi kebijakan/keputusan/perlakuan pemangku kewenangan.',
    'Karena kasus tersebut terkait dengan pemberian hadiah atau souvenir bagi pegawai/pengawas/tamu selama kunjungan dinas dan dari ditemukannya kartu nama tersebut maka memiliki potensi untuk menimbulkan konflik kepentingan.',
    'Karena kasus tersebut merupakan pemberian hidangan atau sajian yang berlaku umum dan merupakan hal yang wajar sebagai tuan rumah memberi hidangan kepada tamu.',
  ];

  var questionIndex = 0;
  var totalscore = 0;
  bool showQuiz = true;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalscore = 0;
      showQuiz = true;
    });
    print(showQuiz);
  }

  void lanjut() {
    setState(() {
      showQuiz = true;
      totalscore = 0;
    });
    print(showQuiz);
  }

  void tes() {
    print(showQuiz);
  }

  void _answerQuestion(int score) {
    totalscore = totalscore + score;
    // totalscore += score;

    if (questionIndex < 5) {
      print('We have more questions!');
    }

    setState(() {
      questionIndex = questionIndex + 1;
      showQuiz = false;
    });

    print(questionIndex);
  }

  Widget quizlogic() {
    return showQuiz
        ? Quiz(questions, _answerQuestion, questionIndex)
        : SafeArea(
            bottom: false,
            top: false,
            child: Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  totalscore == 1
                      ? Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/Motif Ijo.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/Motig Merah.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        totalscore == 1
                            ? Icon(
                                Icons.check_circle_rounded,
                                size: 200,
                                color: Colors.white,
                              )
                            : Icon(Icons.cancel_rounded,
                                size: 200, color: Colors.white),
                        totalscore == 1
                            ? Text(
                                'Benar!',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold),
                              )
                            : Text(
                                'Salah!',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold),
                              ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              constraints: BoxConstraints(
                                minHeight:
                                    MediaQuery.of(context).size.height / 3.5,
                              ),
                              // height: MediaQuery.of(context).size.height / 3.5,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  color: Color.fromRGBO(0, 0, 0, 0.4)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Text(
                                      kj[questionIndex],
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        totalscore == 1
                            ? ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white),
                                onPressed: lanjut,
                                child: Text(
                                  'Studi Kasus Berikutnya',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color.fromRGBO(15, 180, 61, 1)),
                                ),
                              )
                            : ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white),
                                onPressed: lanjut,
                                child: Text(
                                  'Studi Kasus Berikutnya',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color.fromRGBO(210, 61, 61, 1)),
                                ),
                              )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: showQuiz && questionIndex < 5
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
                          text: 'Studi Kasus',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromRGBO(220, 106, 106, 1),
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Fredoka One'))
                    ],
                  ),
                ),
              )
            : null,
        // : AppBar(
        //     backgroundColor: Colors.transparent,
        //     elevation: 0,
        //   ),
        body: questionIndex < 5
            ? quizlogic()
            : SafeArea(
                bottom: false,
                top: false,
                child: Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      totalscore == 1
                          ? Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Motif Ijo.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Motig Merah.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            totalscore == 1
                                ? Icon(
                                    Icons.check_circle_rounded,
                                    size: 200,
                                    color: Colors.white,
                                  )
                                : Icon(Icons.cancel_rounded,
                                    size: 200, color: Colors.white),
                            totalscore == 1
                                ? Text(
                                    'Benar!',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 80,
                                        fontWeight: FontWeight.bold),
                                  )
                                : Text(
                                    'Salah!',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 80,
                                        fontWeight: FontWeight.bold),
                                  ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                  constraints: BoxConstraints(
                                    minHeight:
                                        MediaQuery.of(context).size.height /
                                            3.5,
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: Color.fromRGBO(0, 0, 0, 0.4)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          kj[questionIndex],
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            totalscore == 1
                                ? ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(
                                            MediaQuery.of(context).size.width /
                                                2,
                                            25),
                                        primary: Colors.white),
                                    onPressed: resetQuiz,
                                    child: Text(
                                      'Coba Lagi',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(15, 180, 61, 1)),
                                    ),
                                  )
                                : ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(
                                            MediaQuery.of(context).size.width /
                                                2,
                                            25),
                                        primary: Colors.white),
                                    onPressed: resetQuiz,
                                    child: Text(
                                      'Coba Lagi',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(210, 61, 61, 1)),
                                    ),
                                  ),
                            totalscore == 1
                                ? ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(
                                            MediaQuery.of(context).size.width /
                                                2,
                                            25),
                                        primary: Colors.white),
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    child: Text(
                                      'Menu',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(15, 180, 61, 1)),
                                    ),
                                  )
                                : ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(
                                            MediaQuery.of(context).size.width /
                                                2,
                                            25),
                                        primary: Colors.white),
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    child: Text(
                                      'Menu',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(210, 61, 61, 1)),
                                    ),
                                  ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ));
  }
}
