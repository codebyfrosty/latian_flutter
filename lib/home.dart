import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/prove_it/quiz2.dart';
//tes
import 'cards/menucard.dart';
import './modul.dart';
import './quizgratif/quiz1.dart';
import './cards/proveitcard.dart';
import './studikasus/quiz3.dart';
import 'cards/videocard.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/index2.jpg'),
                fit: BoxFit.fitWidth)),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12, left: 12),
              child: Container(
                // color: Colors.green,
                // height: MediaQuery.of(context).size.height/2.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tentang Prove It',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                          ),
                          textAlign: TextAlign.left,
                    ),
                    video(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12, left: 12, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pilih Aktivitas',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          menucard(
                            gambar: 'assets/images/palu.png',
                            judul: 'Modul',
                            tujuan: Modul(),
                          ),
                          menucard(
                            gambar: 'assets/images/tanda_tanya.jpg',
                            judul: 'Quiz Gratifikasi',
                            tujuan: Quiz1(),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          proveit(
                            gambar: 'assets/images/nolak_gratif.jpg',
                            judul: 'Prove It!',
                            tujuan: Quiz2(),
                           
                          ),
                          menucard(
                            gambar: 'assets/images/studikasus.jpeg',
                            judul: 'Studi Kasus',
                            tujuan: Quiz3(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
