import 'package:flutter/material.dart';

class Result2 extends StatelessWidget {
  // const Rlt({ Key? key }) : super(key: key);

  final Function reset;
  final int resultScore;
  Result2(this.resultScore, this.reset);

  List get result {
    List resultText;
    if (resultScore == 0) {
      resultText = [
        'Pemberian yang Anda terima bebas dari unsur gratifikasi terlarang',
        'Aman!',
        Color.fromRGBO(21, 204, 72, 1),
        Icons.verified_user,
        Colors.white
      ];
    } else if (resultScore <= 2) {
      resultText = [
        'Pemberian yang Anda terima sedikit terindakasi sebagai gratifikasi terlarang. Konsultasikan kepada UPG Boyolali',
        'Waspada!',
        Color.fromRGBO(249, 252, 0, 1),
        Icons.error_outline,
        Color.fromRGBO(50, 50, 50, 1)
      ];
    } else if (resultScore <= 4) {
      resultText = [
        'Terdapat banyak indikasi gratifikasi pada pemberian yang Anda terima. Sebaiknya tidak diterima dan konsultasikan kepada UPG Boyolali',
        'Siaga!',
        Color.fromRGBO(240,149,42, 1),
        Icons.warning_amber,
        Colors.white
      ];
    } else if (resultScore <= 7) {
      resultText = [
        'Pemberian yang Anda terima hampir dapat dipastikan adalah gratifikasi terlarang!!\nSegera laporkan pemberian yang Anda terima ke UPG Boyolali',
        'Awas!',
        Color.fromRGBO(165,26,26, 1),
        Icons.block,
        Colors.white
      ];
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      color: result[2],
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            child: Icon(
              result[3],
              color: Color.fromRGBO(0, 0, 0, 0.08),
              size: MediaQuery.of(context).size.height/3 ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  result[1],
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w800,
                      color: result[4]),
                ),
                Text(
                  result[0],
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: result[4]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
