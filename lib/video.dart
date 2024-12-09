import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  // const MyVideoPlayer({ Key? key }) : super(key: key);

  @override
  _MyVideoPlayerState createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  VideoPlayerController controller;

  final String _teks =
      'Tahukah Anda? Sebenarnya terdapat sebuah metode sederhana yang diperkenalkan oleh Komisi Pemberantasan Korupsi untuk membuktikan sebuah pemberian termasuk suap ilegal atau pemberian legal. \n\nMetode tersebut bernama Prove IT!. Metode Prove IT! Terdiri dari 7 pertanyaan yang diawali oleh huruf-huruf dalam Prove IT! Itu sendiri yang kita layangkan pada diri kita sendiri saat mempertimbangkan apakah sebuah pemberian boleh kita terima atau tidak. Beberapa hal yang ditanyakan pada metode Prove IT! Adalah sebagai berikut. \n\n1.Purpose\n“Apakah tujuan dari pemberian gratifikasi tersebut?” \n\n2.Rules\n“Bagaimanakah aturan perundangan mengatur tentang gratifikasi?” \n\n3.Openess \n“Bagaimana substansi keterbukaan pemberian tersebut? Apakah hadiah diberikan secara sembunyi-sembunyi atau di depan umum?” \n\n4.Value \n“Berapa nilai dari gratifikasi tersebut?” \n\n5.Ethics\n “Apakah nilai moral probadi Anda memperbolehkan penerimaan hadiah tersebut?” \n\n6.Identity\n “Apakah pemberi memiliki hubungan jabatan, calon rekanan, atau rekanan instansi?”\n\n7.Timing\n “Apakah pemberian gratifikasi berhubungan dengan pengambilan keputusan, pelayanan atau perizinan?” \n\nCukup mudah, kan? Anda kini dapat menentukan sebuah pemberian adalah gratfikasi yang dilarang atau diperbolehkan. Apabila pemberian yang diterima memenuhi sebagian besar kriteria di atas, kami sarankan untuk segera melapor UPG KPK dan mengisi formulir pelaporan atau Anda dapat melapor pada UPG pada instansi Anda bekerja, apabila ada. ';
  // String dataSource =
  //     "https://shivanesboutique.com/pub/media/S_MAM_VIDEO_10042021.mp4";
  String asset = "assets/videos/videomascakra.mp4";

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..initialize().then((_) {
        setState(() {});
      });

    controller.play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(193, 52, 47, 1),
        title: Text("Video Prove It"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          controller.value.isInitialized
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      if (controller.value.isPlaying) {
                        controller.pause();
                      } else {
                        controller.play();
                      }
                    });
                  },
                  child: AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  ),
                )
              : Container(
                  height: 200,
                  width: double.infinity,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),



          Flexible(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: new RichText(
                  text: TextSpan(
                      text:
                          'Prove It - Cara Pembuktian Gratifikasi \n \n',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nunito'),
                      children: [
                        TextSpan(
                            text: _teks,
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Nunito'))
                      ]),
                ),
              ),
            ),
          ),
        ],
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(193, 52, 47, 1),
        onPressed: () {
          setState(() {
            if (controller.value.isPlaying) {
              controller.pause();
            } else {
              controller.play();
            }
          });
        },
        child:
            Icon(controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
