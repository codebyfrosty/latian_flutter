import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final Function questioncounter;
  final String ansChoice;
  final Color warna;

  Answer(this.ansChoice, this.questioncounter, this.warna);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: warna,
              
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text(ansChoice, style: TextStyle(fontSize: 30),),
            ),
            onPressed: questioncounter),
      ),
    );
  }
}
