import 'package:flutter/material.dart';
//mengimpor package flutter/material.dart yang berisi widget dan utilitas UI dari Flutter.
import '../widget/sidebar.dart';
// mengimpor file sidebar.dart dari direktori widget.

class Beranda extends StatelessWidget {
//kelas Beranda turunan dari StatelessWidget.
  const Beranda({Key? key}) : super(key: key);
  //memanggil konstruktor superclass dengan menggunakan super(key: key)

  @override
  //  menandakan bahwa metode berikutnya akan menggantikan metode dengan nama yang sama pada superclass.
  Widget build(BuildContext context) {
  //  menerima parameter BuildContext yang menggambarkan konteks saat ini dari widget.
    return Scaffold(
    //pernyataan return yang mengembalikan sebuah widget Scaffold. 
      drawer: Sidebar(),
      // menentukan widget Sidebar sebagai drawer (menarik) yang akan muncul saat menu samping dibuka
      appBar: AppBar(
    //  menentukan widget AppBar sebagai bilah aplikasi yang akan ditampilkan di bagian atas halaman.
        title: Text("Beranda"),
        // title pada AppBar yang menentukan widget Text dengan teks "Beranda" sebagai judul yang akan ditampilkan di dalam AppBar.
      ),
      body: Center(
      //  menentukan widget Center sebagai widget utama yang akan ditampilkan di bagian tengah halaman.
        child: Text("Selamat Datang"),
        // child pada Center yang menentukan widget Text dengan teks "Selamat Datang" sebagai isi utama yang akan ditampilkan di tengah halaman.
      ),
    );
  }
}
