// import 'dart:ffi';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final Function questioncounter;
  final String ansChoice1;
  final Color warna;

  final int ukuran;

  

  Answer({this.ansChoice1, this.questioncounter, this.warna, this.ukuran=20});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Container(
        height: MediaQuery.of(context).size.height/6.3,
        child: Card(
          color: warna,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: InkWell(
            onTap: questioncounter,
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ansChoice1,
                  style: TextStyle(
                    fontSize: ukuran.toDouble(),
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
