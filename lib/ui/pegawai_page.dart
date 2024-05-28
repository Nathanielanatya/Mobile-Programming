import 'package:flutter/material.dart';
// mengimpor package flutter/material.dart berisi widget dan utilitas UI dari Flutter.
import '../widget/sidebar.dart';
// mengimpor file sidebar.dart dari direktori widget.
import '../model/pegawai.dart';
//mengimpor file pegawai.dart dari direktori model.
import '../model/pasien.dart';
// mengimpor file pasien.dart dari direktori model.
import 'pegawai_detail.dart';
// mengimpor file pegawai_detail.dart dari direktori yang sama.
import 'pasien_detail.dart';
//mengimpor file pasien_detail.dart dari direktori yang sama.
import 'pegawai_item.dart';
//mengimpor file pegawai_item.dart dari direktori yang sama.
import 'pasien_item.dart';
//mengimpor file pasien_item.dart dari direktori yang sama.
import 'pegawai_form.dart';
//mengimpor file pegawai_form.dart dari direktori yang sama.
import 'pasien_form.dart';
// mengimpor file pasien_form.dart dari direktori yang sama.

class PegawaiPage extends StatefulWidget {
//deklarasi kelas PegawaiPage yang merupakan turunan dari StatefulWidget.
  const PegawaiPage({Key? key}) : super(key: key);
  // Konstruktor ini tidak melakukan apa pun selain memanggil konstruktor superclass dengan menggunakan super.key.

  @override
  //anotasi yang menandakan bahwa metode berikutnya akan menggantikan metode dengan nama yang sama pada superclass.
  State<PegawaiPage> createState() => _PegawaiPageState();
  // createState menggantikan metode dengan nama yang sama pada superclass, mengembalikan instance dari _PegawaiPageState, yang merupakan private class yang menyimpan status (state) dari PegawaiPage.
}

class _PegawaiPageState extends State<PegawaiPage> {
//deklarasi private class _PegawaiPageState merupakan turunan dari State<PegawaiPage>, digunakan untuk menyimpan status (state) dari PegawaiPage
  @override
  //anotasi yang menandakan bahwa metode berikutnya akan menggantikan metode dengan nama yang sama pada superclass.
  Widget build(BuildContext context) {
  // Metode ini menerima parameter BuildContext yang menggambarkan konteks saat ini dari widget.
    return Scaffold(
    //pernyataan return yang mengembalikan sebuah widget Scaffold.
      drawer: Sidebar(),
      // drawer pada Scaffold menentukan widget Sidebar sebagai drawer (menarik) yang akan muncul saat menu samping dibuka.
      appBar: AppBar(
      // appBar pada Scaffold yang menentukan widget AppBar sebagai bilah aplikasi yang akan ditampilkan di bagian atas halaman.
        title: const Text("Data Pegawai"),
        // title pada AppBar menentukan widget Text dengan teks "Data Pegawai" sebagai judul yang ditampilkan di dalam AppBar.
        actions: [
        // actions pada AppBar menentukan daftar widget aksi yang ditampilkan di sebelah kanan AppBar.
          GestureDetector(
          // GestureDetector digunakan untuk mendeteksi interaksi pengguna seperti ketukan (tap).
            child: const Icon(Icons.add),
            // child pada GestureDetector yang menentukan widget Icon dengan ikon add sebagai tampilan aksi.
            onTap: () {
            // onTap pada GestureDetector yang menentukan fungsi yang akan dijalankan ketika aksi dijalankan.
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiForm()));
                //fungsi yang akan menjalankan perpindahan halaman menggunakan Navigator untuk menampilkan halaman PegawaiForm ketika aksi dilakukan.
            },
          )
        ],
      ),
      body: ListView(
      // body pada Scaffold yang menentukan widget ListView sebagai tubuh (body) halaman.
        children: [
        // children pada ListView yang menentukan daftar widget anak yang akan ditampilkan dalam daftar.
          PegawaiItem(pegawai: Pegawai(namaPegawai: "Pegawai")),
          // PegawaiItem yang menampilkan item pegawai dengan menggunakan objek Pegawai yang memiliki properti namaPegawai dengan nilai "Pegawai".
          PasienItem(pasien: Pasien(namaPasien: "Pasien")),
          // PasienItem yang menampilkan item pasien dengan menggunakan objek Pasien yang memiliki properti namaPasien dengan nilai "Pasien"
        ],
      ),
    );
  }
}