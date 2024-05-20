import 'package:flutter/material.dart';
//  impor package Flutter yang diperlukan untuk menggunakan framework UI Flutter.
import '../widget/sidebar.dart';
// impor dari file sidebar.dart  berisi widget untuk sidebar.
import '../model/pegawai.dart';
// impor dari file pegawai.dart berisi definisi model untuk pegawai.
import '../model/pasien.dart';
// impor dari file pasien.dart berisi definisi model untuk pasien.
import 'pegawai_detail.dart';
// impor dari file pegawai_detail.dart berisi halaman detail untuk pegawai.
import 'pasien_detail.dart';
// impor dari file pasien_detail.dart berisi halaman detail untuk pasien.
import 'pegawai_item.dart';
// impor dari file pegawai_item.dart berisi widget untuk menampilkan item pegawai dalam daftar.
import 'pasien_item.dart';
// impor dari file pasien_item.dart berisi widget untuk menampilkan item pasien dalam daftar.
import 'pegawai_form.dart';
// impor dari file pegawai_form.dart berisi widget untuk formulir pegawai.
import 'pasien_form.dart';
// impor dari file pasien_form.dart berisi widget untuk formulir pasien.

class PasienPage extends StatefulWidget {
// deklarasi kelas PasienPage merupakan turunan dari StatefulWidget.
  const PasienPage({super.key});
  // konstruktor untuk kelas PasienPage. Konstruktor ini tidak memiliki parameter dan mengirimkan key ke konstruktor superclass.

  @override
  State<PasienPage> createState() => _PasienPageState();
  // metode yang mengoverride createState dari StatefulWidget. Metode ini mengembalikan objek dari kelas _PasienPageState.
}

class _PasienPageState extends State<PasienPage> {
// kelas _PasienPageState yang merupakan turunan dari State<PasienPage>.
  @override
  Widget build(BuildContext context) {
  // metode build yang mengoverride metode dari kelas State. Metode ini mengembalikan widget yang akan dibangun.
    return Scaffold(
    // widget Scaffold yang menyediakan kerangka dasar untuk tampilan aplikasi.
      drawer: Sidebar(),
      // Properti drawer diatur dengan menggunakan widget Sidebar yang akan ditampilkan sebagai sidebar.
      appBar: AppBar(
      // Properti appBar diatur dengan menggunakan widget AppBar yang menampilkan bilah aplikasi di bagian atas layar.
        title: const Text("Data Pasien"),
        // Properti title diatur dengan menggunakan widget Text yang menampilkan teks "Data Pasien" sebagai judul bilah aplikasi.
        actions: [
        // Properti actions diatur dengan menggunakan sebuah list yang berisi widget untuk tindakan di bilah aplikasi.
          GestureDetector(
          // digunakan untuk mendeteksi sentuhan atau klik pada widget yang ada di dalamnya.
            child: const Icon(Icons.add),
            // Widget Icon digunakan untuk menampilkan ikon "add" sebagai tindakan tambah.
            onTap: () {
            // Properti onTap diatur dengan sebuah fungsi yang akan dieksekusi ketika ikon ditap.
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienForm()));
              // navigasi untuk membuka halaman PasienForm ketika ikon tambah ditekan.

            },
          )
        ],
      ),
      body: ListView(
      // body diatur dengan menggunakan widget ListView yang menyusun widget-child dalam bentuk daftar yang dapat di-scroll.
        children: [
          PegawaiItem(pegawai: Pegawai(namaPegawai: "Pegawai")),
          // PegawaiItem digunakan untuk menampilkan item pegawai dalam daftar. Di sini, diberikan objek Pegawai dengan nilai namaPegawai "Pegawai".
          PasienItem(pasien: Pasien(namaPasien: "Pasien")),
          // PasienItem digunakan untuk menampilkan item pasien dalam daftar. Di sini, diberikan objek Pasien dengan nilai namaPasien "Pasien".
        ],
        // menandakan akhir dari list tindakan di bilah aplikasi.
      ),
      // menandakan akhir dari widget AppBar.
    );
    // menandakan akhir dari metode build.
  }
  // menandakan akhir dari kelas _PasienPageState.
}
// menandakan akhir dari kelas PasienPage.
