import 'package:flutter/material.dart';

class halmodul extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);
  final String _teks;
  final String _judul;
  final String _appbar;

  halmodul(this._teks, this._judul, this._appbar);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(
          title: Text(_appbar, style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Color.fromRGBO(193, 52, 47, 1),
          centerTitle: true,
        ),
        body: new SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: new RichText(
              text: TextSpan(
                text: _judul,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Nunito'),
                children: [
                  TextSpan(
                      text: _teks,
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Nunito'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
