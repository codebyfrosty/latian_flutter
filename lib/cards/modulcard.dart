import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/halmodul.dart';
import 'package:flutter_complete_guide/modul.dart';
import 'package:flutter_complete_guide/slidetrans.dart';

class modulcard extends StatelessWidget {
  final String judul;
  final String cardtext;
  final String isimodul;

  modulcard({this.cardtext, this.judul, this.isimodul});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          EnterExitRoute(
           enterPage: halmodul(isimodul, judul, cardtext), exitPage: Modul())
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: Card(
          elevation: 1,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // color: Colors.grey,
                  width: MediaQuery.of(context).size.width/1.3,
                  child: Text(
                    cardtext,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
