import 'package:flutter/material.dart';

class kjcard extends StatelessWidget {
  final String soal;
  final String jawab;

  kjcard(this.soal, this.jawab);
 

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.grey.shade300,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                soal,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                jawab,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              
              
            ],
          ),
        ),
      );
  }
}