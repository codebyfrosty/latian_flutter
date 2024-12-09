import 'package:flutter/material.dart';
// import 'package:flutter_complete_guide/prove_it/quiz2.dart';

class proveit extends StatelessWidget {
  final String gambar;
  final String judul;
  final Widget tujuan;

  proveit({this.gambar, this.judul, this.tujuan});

  Widget buildSheet(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.horizontal_rule, size: 40,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Tentang Tes Prove It',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          'Prove It! Test adalah sebuah metode pembuktian apakah sebuah pemberian dapat digolongkan sebagai gratifikasi terlarang. Lakukan tes ini apabila Anda mendapat sebuah pemberian yang sekiranya mencurigakan.',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width / 1.5, 30),
                primary: Color.fromRGBO(193, 52, 47, 1)),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => tujuan));
            },
            child: Text(
              'Lakukan Tes Prove It',
              style: TextStyle(fontSize: 20),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context, builder: (context) => buildSheet(context));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    ),
                    context: context,
                    builder: (context) => buildSheet(context));
              },
              child: Ink.image(
                image: AssetImage(gambar),
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 2.3,
                // height: 140,
                // width: 155,
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                judul,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
