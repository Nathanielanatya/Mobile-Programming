import 'package:flutter/material.dart';
// mengimpor paket flutter/material.dart
import '../model/pasien.dart';
// mengimpor file pasien.dart dari direktori yang berbeda. 
import 'pasien_detail.dart';
// engimpor file pasien_detail.dart

class PasienItem extends StatelessWidget {
// kelas PasienItem merupakan turunan dari kelas StatelessWidget
  final Pasien pasien;
  // mendeklarasikan variabel pasien dengan tipe Pasien. 

  const PasienItem({super.key, required this.pasien});
  // mendefinisikan konstruktor untuk widget PasienItem.

  @override
  // Anotasi ini menunjukkan bahwa metode yang mengikuti ini akan menggantikan metode dengan nama yang sama dari kelas induk
  Widget build(BuildContext context) {
  // metode build yang akan mengembalikan widget yang akan ditampilkan.
    return GestureDetector(
    // membungkus widget Card dan menambahkan kemampuan deteksi sentuhan.
      child: Card(
      // digunakan untuk mengelompokkan konten terkait bersama dalam sebuah kartu.
        child: ListTile(
        // menampilkan konten dalam bentuk baris dengan judul di sebelah kiri.
          title: Text("${pasien.namaPasien}"),
          // Baris ini mengatur properti title dari ListTile dengan menggunakan widget Text. 
        ),
        // Menutup ListTile.
      ),
      // Menutup Card.
      onTap: () {
      // menetapkan fungsi onTap yang akan dipanggil saat widget di tekan.
        Navigator.push(
        // menggunakan Navigator untuk melakukan navigasi ke halaman lain.
            context,
            // push adalah context, yang digunakan untuk mendapatkan informasi tentang navigasi saat ini.
            MaterialPageRoute(
            // Argumen kedua Navigator.push adalah MaterialPageRoute, yang digunakan untuk membuat rute baru.
                builder: (context) => PasienDetail(pasien: pasien)));
                // builder yang akan membuat halaman PasienDetail dan meneruskannya sebagai argumen ke MaterialPageRoute. Objek pasien juga diteruskan ke halaman PasienDetail melalui properti pasien.
      },
    );
    // Menutup fungsi Navigator.push
  }
}
