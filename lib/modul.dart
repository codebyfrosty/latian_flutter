import 'package:flutter/material.dart';

import 'cards/modulcard.dart';

class Modul extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);

  final kontenmodul = const [
    {
      'cardtext': 'Pengertian Gratifikasi',
      'judul': 'Apa yang dimaksud dengan gratifikasi? \n \n',
      'isimodul':
          'Pengertian gratifikasi terdapat pada Penjelasan Pasal 12B Ayat (1) Undang-Undang Nomor 31 Tahun 1999 juncto Undang-Undang Nomor 20 Tahun 2001, bahwa: \n \n“Yang dimaksud dengan ”gratifikasi” dalam ayat ini adalah pemberian dalam arti luas, yakni meliputi pemberian uang, barang, rabat (discount), komisi, pinjaman tanpa bunga, tiket perjalanan, fasilitas penginapan, perjalanan wisata, pengobatan cuma-cuma, dan fasilitas lainnya. Gratifikasi tersebut baik yang diterima di dalam negeri maupun di luar negeri dan yang dilakukan dengan menggunakan sarana elektronik atau tanpa sarana elektronik”.'
    }, //V
    {
      'cardtext': 'Kategori Gratifikasi',
      'judul': 'Kategori Gratifikasi \n \n',
      'isimodul':
          'Penerimaan gratifikasi dapat dikategorikan menjadi dua kategori yaitu Gratifikasi yang Dianggap Suap dan Gratifikasi yang Tidak Dianggap Suap yaitu: \n \n1. Gratifikasi yang dianggap suap\n \nYaitu Gratifikasi yang diterima oleh Pegawai Negeri atau Penyelenggara Negara yang berhubungan dengan jabatannya dan yang berlawanan dengan kewajiban atau tugasnya, sebagaimana dimaksud dalam Pasal 12 B Undang-Undang Nomor 31 Tahun 1999 tentang Pemberantasan Tindak Pidana Korupsi sebagaimana telah diubah dengan Undang-Undang Nomor 20 Tahun 2001 tentang Perubahan atas Undang-Undang Nomor 31 Tahun 1999 tentang Pemberantasan Tindak Pidana Korupsi. \n\nContoh gratifikasi yang dianggap suap:\n1. Pemberian pinjaman barang dari rekanan dari pejabat/pegawai negeri secara cuma-cuma \n\n2. Pemberian tiket perjalanan oleh rekanan kepada penyelenggara negara atau pegawai negeri atau keluarganya untuk untuk keperluan dinas/pribadi secara cuma-cuma\n \n2. Gratifikasi yang tidak dianggap suap\n\nYaitu Gratifikasi yang diterima oleh Pegawai Negeri atau Penyelenggara Negara yang berhubungan dengan jabatan dan tidak berlawanan dengan kawajiban atau tugasnya. \n\nGratifikasi yang Tidak Dianggap Suap dapat dibagi menjadi 2 sub kategori yaitu Gratifikasi yang Tidak Dianggap Suap yang terkait kedinasan dan Gratifikasi yang Tidak Dianggap Suap yang Tidak Terkait Kedinasan.'
    },{
      'cardtext': 'Gratifikasi Yang Tidak Perlu dilaporkan',
      'judul': 'Gratifikasi yang Tidak Perlu dilaporkan \n \n',
      'isimodul':
          'Gratifikasi tidak selalu harus dilaporkan kepada KPK. Oleh karena itu, KPK menerbitkan Surat B-143/01-13/01/2013 tentang Himbauan Terkait Gratifikasi yang menyebutkan beberapa gratifikasi yang tidak perlu dilaporkan sebagaimana disebutkan dalam Surat KPK Nomor B- 143/01-13/01/2013 dalam butir 3 huruf a sd j dengan penjelasan sebagai berikut: \n\na)  Diperoleh dari hadiah langsung/undian, diskon/rabat, voucher, point rewards atau suvenir yang berlaku umum dan tidak terkait kedinasan \n\nb)  Diperoleh karena prestasi akademis atau non akademis (kejuaraan/perlombaan/kompetisi) dengan biaya sendiri dan tidak terkait kedinasan \n\nc) Diperoleh dari keuntungan/bunga dari penempatan dana, investasi atau kepemilikan saham yang berlaku umum dan tidak terkait kedinasan \n\nd)  Diperoleh dari kompensasi atas profesi di luar kedinasan yang tidak terkait dari tupoksi pegawai negeri atau penylenggara negara, tidak melanggar konflik kepentingan atau kode etik pegawai dan dengan izin tertulis dari atasan langsung; \n\ne)  Diperoleh dari hubungan keluarga sedarah dalam garis keturunan lurus dua derajat atau dalam garis keturunan ke samping satu derajat sepanjang tidak mempunyai konflik kepentingan dengan penerima gratifikasi \n\nf)  Diperoleh dari hubungan keluarga semenda dalam garis keturunan lurus satu derajat atau dalam garis keturunan kesamping satu derajat sepanjang tidak mempunyai konflik kepentingan dengan penerima gratifikasi \n\ng)  Diperoleh dari pihak yang mempunyai hubungan keluarga sebagaimana dimaksud pada poin f dan poin g terkait dengan hadiah perkawinan, khitanan anak, ulang tahun, kegiatan keagamaan/adat/tradisi dan bukan dari pihak-pihak yang mempunyai konflik kepentingan dengan penerima gratifikasi \n\nh)  Diperoleh dari pihak terkait dengan musibah dan bencana, dan bukan dari pihak-pihak yang mempunyai konflik kepentingan dengan penerima gratifikasi; \ni)diperoleh dari kegiatan resmi kedinasan seperti rapat, seminar, workshop, konferensi, pelatihan atau kegiatan lain sejenis yang berlaku secara umum berupa seminar kit, sertifikat dan plakat/cinderamata \n\nj)  Diperoleh dari acara resmi kedinasan dalam bentuk hidangan/ sajian/jamuan berupa makanan dan minuman yang berlaku umum'
    },
    {
      'cardtext': 'Contoh-Contoh Kasus Gratifikasi Yang Perlu Dilaporkan',
      'judul': 'Contoh-Contoh Kasus Gratifikasi Yang Perlu Dilaporkan \n \n',
      'isimodul':
          'Untuk memberikan pemahaman tentang gratifikasi dan penanganannya, berikut ini akan diuraikan beberapa contoh kasus gratifikasi baik yang dilarang berdasarkan ketentuan pasal 12B Undang-Undang Nomor 31 Tahun 1999 juncto Undang-Undang Nomor 20 Tahun 2001. Tentu saja hal ini hanya merupakan sebagian kecil saja dari situasi-situasi terkait gratifikasi yang seringkali terjadi. \n\nContoh-contoh pemberian yang dapat dikategorikan sebagai gratifi-kasi yang sering terjadi adalah: \n\n1. Pemberian hadiah atau parsel kepada pejabat pada saat hari raya keagamaan, oleh rekanan atau bawahannya \n\n2. Hadiah atau sumbangan pada saat perkawinan anak dari pejabat oleh rekanan kantor pejabat tersebut \n\n3. Pemberian tiket perjalanan kepada pejabat atau keluarganya untuk keperluan pribadi secara cuma-Cuma \n\n4. Pemberian potongan harga khusus bagi pejabat untuk pembelian barang dari rekanan \n\n5. Pemberian biaya atau ongkos naik haji dari rekanan kepada pejabat \n\n6. Pemberian hadiah ulang tahun atau pada acara-acara pribadi lainnya dari rekanan \n\n7. Pemberian hadiah atau souvenir kepada pejabat pada saat kunjungan kerja \n\n8. Pemberian hadiah atau uang sebagai ucapan terima kasih karena telah dibantu, dll'
    }, //V
    {
      'cardtext': 'Penerima Yang Wajib Melaporkan',
      'judul': 'Penerima gratifikasi yang wajib melaporkan gratifikasi \n \n',
      'isimodul':
          'Penerimaan gratifikasi oleh pegawai negeri atau penyelenggara negara wajib dilaporkan kepada Komisi Pemberantasan Korupsi selambat-lambatnya 30 (tiga puluh) hari kerja terhitung sejak tanggal gratifikasi tersebut diterima. \n\nHal ini sesuai dengan ketentuan yang tercantum dalam Pasal 12C ayat (2) Undang- Undang Nomor 31 Tahun 1999 juncto Undang-Undang Nomor 20 Tahun 2001.'
    }, //V
    {
      'cardtext': 'Konsekuensi Jika Tidak Melaporkan',
      'judul': 'Konsekuensi Hukum dari yang Tidak Melaporkan Gratifikasi \n \n',
      'isimodul':
          'Sanksi pidana yang ditetapkan pada tindak pidana ini cukup berat, yaitu pidana penjara minimum empat tahun, dan maksimum 20 tahun atau pidana penjara seumur hidup, dan pidana denda paling sedikit Rp. 200.000.000,00 (dua ratus juta rupiah), maksimum Rp1.000.000.000,00 (satu miliyar rupiah). \n\nDari rumusan ini jelas sekali bahwa penerimaan gratifikasi merupakan hal yang sangat serius sebagai salah satu bentuk tindak pidana korupsi, dengan sanksi pidana yang persis sama dengan tindak pidana suap lainnya dalam Undang-Undang Pemberantasan Tindak Pidana Korupsi'
    }, //V
    {
      'cardtext': 'Gratifikasi Yang Termasuk Korupsi',
      'judul':
          'Bilamana Gratifikasi Dikatakan Sebagai Tindak Pidana Korupsi? \n \n',
      'isimodul':
          'Jika dilihat dari  Pasal 12B Ayat (1) Undang-Undang Nomor 31 Tahun 1999 juncto Undang-Undang Nomor 20 Tahun 2001 \n\n“Setiap gratifikasi kepada pegawai negeri atau penyelenggara negara dianggap pemberian suap, apabila berhubungan dengan jabatannya dan yang berlawanan dengan kewajiban atau tugasnya, dengan ketentuan sebagai berikut: ... ” \n\nDari rumusan di atas maka dapat ditarik kesimpulan bahwa suatu gratifikasi atau pemberian hadiah berubah menjadi suatu yang perbuatan pidana suap khususnya pada seorang Penyelenggara Negara atau Pegawai Negeri adalah pada saat Penyelenggara Negara atau Pegawai Negeri tersebut melakukan tindakan menerima suatu gratifikasi atau pemberian hadiah dari pihak manapun sepanjang pemberian tersebut diberikan berhubungan dengan jabatan ataupun pekerjaannya. \n\nSalah satu kebiasaan yang berlaku umum di masyarakat adalah pemberian tanda terima kasih atas jasa yang telah diberikan oleh petugas, baik dalam bentuk barang atau bahkan uang. \n\nHal ini dapat menjadi suatu kebiasaan yang bersifat negatif dan dapat mengarah menjadi potensi perbuatan korupsi di kemudian hari. Potensi korupsi inilah yang berusaha dicegah oleh peraturan undang-undang. \n\nOleh karena itu, berapapun nilai gratifikasi yang diterima seorang Penyelenggara Negara atau Pegawai Negeri, bila pemberian itu patut diduga berkaitan dengan jabatan/kewenangan yang dimiliki, maka sebaiknya Penyelenggara Negara atau Pegawai Negeri tersebut segera melaporkannya pada KPK untuk dianalisis lebih lanjut.'
    }, //V
    {
      'cardtext': 'Mengidentifikasi Gratifikasi',
      'judul':
          'Bagaimana Mengidentifikasi Gratifikasi yang Dianggap Suap? \n \n',
      'isimodul':
          'Untuk memudahkan Anda mengenali gratifikasi ilegal, simak ilustrasi berikut. \n\n"Jika seorang Ibu penjual makanan di sebuah warung memberi makanan kepada anaknya yang datang ke warung, maka itu merupakan pemberian keibuan. \n\nPembayaran dari si anak bukan suatu yang diharapkan oleh si Ibu. Balasan yang diharapkan lebih berupa cinta kasih anak, dan berbagai macam  balasan lain yang mungkin diberikan. \n\nKemudian datang seorang pelanggan, si Ibu memberi makanan kepada pelanggan tersebut lalu menerima pembayaran sebagai balasannya. Keduanya tidak termasuk gratifikasi dianggap suap. \n\nPada saat lain, datang seorang inspektur kesehatan yang sedang inspeksi kualitas restorannya dan si Ibu memberi makanan kepada si inspektur serta menolak menerima pembayaran. \n\nTindakan si Ibu menolak menerima pembayaran dan si Inspektur menerima makanan ini adalah gratifikasi dianggap suap karena pemberian makanan tersebut memiliki harapan bahwa inspektur itu akan menggunakan jabatan-nya untuk melindungi kepentingannya"'
    }, //V
    {
      'cardtext': 'Apabila Anda Menerima Gratifikasi',
      'judul': 'Apa yang Harus Dilakukan saat Saya Menerima Gratifikasi? \n \n',
      'isimodul':
          'Jika Anda memiliki posisi sebagai penyelenggara negara atau pegawai negeri menerima gratifikasi maka langkah terbaik yang bisa Anda lakukan (Jika Anda yakin pemberiannya termasuk suap) adalah menolak gratifikasi tersebut secara baik, sehingga sedapat mungkin tidak menyinggung perasaan pemberi. \n\nJika keadaan memaksa Anda menerima gratifikasi tersebut, misalnya pemberian terlanjur dilakukan melalui orang terdekat Anda (suami, istri, anak, pembantu, sopir dan lain-lain) atau ada perasaan tidak enak karena dapat menyinggung pemberi, maka sebaiknya gratifikasi yang diterima segera dilaporkan ke KPK. \n\nJika instansi Anda kebetulan adalah salah satu instansi yang telah bekerjasama dengan KPK dalam Program Pengendalian Gratifikasi (PPG), maka Anda dapat melaporkan langsung di instansi Anda melalui Unit Pengendalian Gratifikasi (UPG).'
    }, //V
    {
      'cardtext': 'Tata Cara Pelaporan Gratifikasi',
      'judul':
          'Apa Yang Harus Dilakukan dan Disiapkan dalam Melaporkan Gratifikasi? \n \n',
      'isimodul':
          'Tata cara pelaporan penerimaan gratifikasi yang diatur dalam Pasal 16 huruf a Undang-Undang Nomor 30 Tahun 2002 tentang Komisi Pemberantasan Tindak Pidana Korupsi, menyebutkan bahwa laporan disampaikan secara tertulis dengan mengisi formulir sebagaimana ditetapkan oleh Komisi Pemberantasan Korupsi dengan melampirkan dokumen yang berkaitan dengan gratifikasi. \n\nPasal ini mensyaratkan bahwa setiap laporan harus diformalkan dalam formulir gratifikasi, adapun formulir gratifikasi bisa diperoleh dengan cara mendapatkannya secara langsung dari Kantor KPK, mengunduh (download) dari situs resmi KPK (www.kpk.go.id/gratifikasi), memfotokopi formulir gratifikasi asli atau cara-cara lain sepanjang formulir tersebut merupakan formulir gratifikasi, sedangkan pada huruf b pasal yang sama menyebutkan bahwa formulir sebagaimana dimaksud pada huruf a sekurang-kurangnya memuat \n\n1. Nama dan alamat lengkap penerima dan pemberi gratifikasi \n\n2. Jabatan pegawai negeri atau penyelanggara negara \n\n3. Tempat dan waktu penerimaan gratifikasi \n\n4. Uraian jenis gratifikasi yang diterima\n\n5. Nilai gratifikasi yang diterima \n\nAtau hubungi UPG Boyolali \n\nKompleks Perkantoran Terpadu \nKabupaten Boyolali \nJl. Merdeka Timur, Kemiri, Boyolali\nKantor Inspektorat Daerah Kabupaten Boyolali\n0813-2598-7775'
    }, //V
    {
      'cardtext': 'Perlindungan Pelapor',
      'judul': 'Perlindungan Pelapor \n \n',
      'isimodul':
          'Pelapor gratifikasi berpotensi untuk menjadi saksi yang dapat memberikan keterangan guna kepentingan penyelidikan, penyidikan, penuntutan, dan pemeriksaan di sidang pengadilan tentang suatu perkara pidana yang ia dengar sendiri, ia lihat sendiri, dan/atau ia alami sendiri, oleh karena itu saksi yang berasal dari pelapor gratifikasi juga berhak mendapatkan perlindungan seperti yang diatur dalam Undang-Undang Nomor 13 tahun 2006 tentang Perlindungan Saksi dan Korban pasal 5 uruf a dan b yaitu: \n\na) memperoleh perlindungan atas keamanan pribadi, keluarga, dan harta bendanya, serta bebas dari Ancaman yang berkenaan dengan kesaksian yang akan, sedang, atau telah diberikannya \n\nb) ikut serta dalam proses memilih dan menentukan bentuk perlindungan dan dukungan keamanan'
    }, //V
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(193, 52, 47, 1),
          title: Text(
            'Modul',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true),
      body: ListView(
        children: [
          ...(kontenmodul as List<Map<String, String>>).map((konten) {
            return modulcard(
              cardtext: konten['cardtext'],
              isimodul: konten['isimodul'],
              judul: konten['judul'],
            );
          }).toList()
        ],
      ),
    );
  }
}