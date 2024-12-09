import 'package:flutter/material.dart';
import './kjcard.dart';

class Result extends StatelessWidget {
  // const Rlt({ Key? key }) : super(key: key);

  final Function reset;
  final int resultScore;
  // Function hideQ;
  Result(this.resultScore, this.reset);

  var datakj = [
    {
      'soal': 'Bagaimana Anda Mengartikan Gratifikasi?',
      'jwb': 'Pemberian Untuk Melancarkan Tujuan'
    },
    {
      'soal': 'Jenis Gratifikasi dibawah ini tidak wajib dilaporkan, kecuali?',
      'jwb': 'Pemberian setelah melaksanakan tugas pelayanan'
    },
    {
      'soal': 'Salah satu manfaat pengendalian gratifikasi, kecuali?',
      'jwb': 'Mendapatkan penghargaan individu'
    },
    {
      'soal': 'Aturan hukum gratifikasi, diatur dalam?',
      'jwb': 'Pasal 12B dan 12C Undang-Undang Nomor 20 Tahun 2001'
    },
    {
      'soal': 'Apa yang dimaksud dengan UPG dalam tubuh KPK?',
      'jwb': 'Unit Pengendali Gratifikasi'
    },
    {
      'soal':
          'Batas waktu penyerahan barang atau uang gratifiaksi ke KPK jika telah ditetapkan milik Negara adalah?',
      'jwb': '30 hari kerja'
    },
    {
      'soal': 'Gratifikasi akan dianggap sebagai suap, apabila?',
      'jwb':
          'Berhubungan dengan jabatan dan berlawanan dengan kewajiban atau tugas penerima'
    },
    {
      'soal': 'Berbeda dengan suap dan pemerasan, gratifikasi bersifat..',
      'jwb': 'Inventif (Tanam Budi)'
    },
    {
      'soal':
          'Peran aktif pegawai dalam keberhasilan penerapan pengendalian gratifikasi antara lain adalah..',
      'jwb': 'Menolak gratifikasi yang bersifat suap'
    },
    {
      'soal':
          'Hukuman bagi pelaku dan penerima gratifikasi (apabila tidak melapor) adalah…',
      'jwb':
          'Pidana penjara seumur hidup atau penjara paling singkat 4 tahun dan paling lama 20 tahun dan denda paling sedikit 200 juta dan paling banyak 1 miliar.'
    },
  ];

  int get jmlsalah {
    var salah = 10 - resultScore;
    return salah;
  }

  String get bener {
    var jawabanbenar = resultScore.toString() + '/10';
    return jawabanbenar;
  }

  String get salah {
    var jawabansalah = jmlsalah.toString() + '/10';

    return jawabansalah;
  }

  // String get medali {
  //   var gambar=
  //   resultScore < 5
  //                 ? 'assets/images/Medali Perunggu.png'
  //                 : resultScore < 9
  //                 ? 'assets/images/Medali Perak.png'
  //                 : resultScore < 11
  //                 ? 'assets/images/Medali Emas.png'

  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(224, 101, 101, 1),
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            width: MediaQuery.of(context).size.width,
            height: 230,
            // color: Color.fromRGBO(224, 101, 101, 1),
            child: Column(
              children: [
                Image.asset(
                  resultScore < 5
                      ? 'assets/images/Medali Perunggu.png'
                      : resultScore < 9
                          ? 'assets/images/Medali Perak.png'
                          : resultScore < 11
                              ? 'assets/images/Medali Emas.png'
                              : null,
                  height: 150,
                ),
                Text(
                  'Selamat!',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 0, bottom: 7),
                  child: Text(
                    'Hasil Quiz Anda :',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border(right: BorderSide(color: Colors.grey))),
                      width: MediaQuery.of(context).size.width / 2,
                      // color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check_circle_rounded,
                            size: 50,
                            color: Colors.lightGreenAccent.shade400,
                          ),
                          Column(
                            children: [
                              Text(
                                bener,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Benar',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      // color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.cancel,
                            size: 50,
                            color: Colors.red,
                          ),
                          Column(
                            children: [
                              Text(
                                salah,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Salah',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  // color: Colors.grey,
                  height: MediaQuery.of(context).size.height / 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          top: 0,
                        ),
                        child: Text(
                          'Kunci Jawaban :',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: ListView(
                            children: [
                              ...(datakj as List<Map<String, String>>)
                                  .map((konten) {
                                return kjcard(
                                  konten['soal'],
                                  konten['jwb'],
                                );
                              }).toList()
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                  onPressed: reset,
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(224, 101, 101, 1),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30, top: 7, bottom: 7),
                    child: Text('Coba Lagi?', style:TextStyle(fontSize: 20) ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
