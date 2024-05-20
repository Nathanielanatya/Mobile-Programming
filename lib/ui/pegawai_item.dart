import 'package:flutter/material.dart';
// impor package Flutter yang diperlukan untuk menggunakan framework UI Flutter.
import '../model/pegawai.dart';
// impor dari file pegawai.dart berisi definisi model untuk pegawai.
import 'pegawai_detail.dart';
// impor dari file pegawai_detail.dart berisi halaman detail untuk pegawai.

class PegawaiItem extends StatelessWidget {
// deklarasi kelas PegawaiItem yang merupakan turunan dari StatelessWidget.
  final Pegawai pegawai;
  // Variabel ini akan menyimpan data pegawai yang akan ditampilkan dalam item.

  const PegawaiItem({super.key, required this.pegawai});
  // Konstruktor ini memiliki parameter pegawai yang wajib diisi, dan mengirimkan key ke konstruktor superclass.

  @override
  Widget build(BuildContext context) {
  // build metode dari kelas StatelessWidget, mengembalikan widget yang akan dibangun.
    return GestureDetector(
    // GestureDetector digunakan untuk mendeteksi sentuhan atau klik pada widget yang ada di dalamnya.
      child: Card(
      // child diatur menggunakan widget Card yang menampilkan item dalam bentuk kartu.
        child: ListTile(
        // child diatur menggunakan widget ListTile yang menampilkan konten dalam bentuk daftar dengan judul dan konten tambahan.
          title: Text("${pegawai.namaPegawai}"),
          // title diatur menggunakan widget Text yang menampilkan teks nama pegawai
        ),
        // menandakan akhir dari widget ListTile.
      ),
      // menandakan akhir dari widget Card.
      onTap: () {
      //  onTap diatur dengan sebuah fungsi yang akan dieksekusi ketika item di-tap.
        Navigator.push(
        // navigasi untuk membuka halaman PegawaiDetail ketika item di-tap.
            context,
            // Parameter pertama dari Navigator.push, yaitu context, digunakan untuk mendapatkan konteks dari widget saat ini.
            MaterialPageRoute(
            // widget MaterialPageRoute yang digunakan untuk membuat rute halaman baru.
                builder: (context) => PegawaiDetail(pegawai: pegawai)));
                // builder diatur dengan sebuah fungsi yang membangun halaman PegawaiDetail dengan membawa objek pegawai sebagai argumen.
        
      },
    );
  }
}
