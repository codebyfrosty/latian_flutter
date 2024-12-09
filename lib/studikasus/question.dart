import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({ Key key }) : super(key: key);

  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8) ,
      // color: Colors.white,
        child: Text(
      questionText,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900), 
      textAlign: TextAlign.center,

    )
    );
  }
}
