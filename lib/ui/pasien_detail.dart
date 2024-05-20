import 'package:flutter/material.dart';
// Mengimpor paket Flutter yang berisi widget-widget Material Design.
import 'pasien_page.dart';
//Mengimpor halaman daftar pasien.
import 'pasien_update_form.dart';
// Mengimpor halaman untuk memperbarui data pasien.
import '../model/pasien.dart';
// Mengimpor model data pasien.

class PasienDetail extends StatefulWidget {
// Mendefinisikan widget PasienDetail yang merupakan StatefulWidget.
  final Pasien pasien;
  // Mendeklarasikan properti pasien yang akan diteruskan ke widget ini.

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
  // Mendefinisikan state untuk widget PasienDetail.
}

class _PasienDetailState extends State<PasienDetail> {
// kelas _PasienDetailState yang merupakan State dari widget PasienDetail.
  @override
  Widget build(BuildContext context) {
  // build yang bertanggung jawab untuk membuat UI dari kelas _PasienDetailState.
    return Scaffold(
    // widget Scaffold yang menyediakan struktur dasar untuk aplikasi Flutter, termasuk AppBar dan body.
      appBar: AppBar(title: Text("Detail Pasien")),
      // menetapkan AppBar untuk Scaffold, dengan judul "Detail Pasien"
      body: Column(
      // widget Column yang akan berisi konten dari body Scaffold.
        children: [
        // daftar widget yang akan ditempatkan di dalam Column.
          SizedBox(height: 20),
          // membuat jarak vertikal sebesar 20 unit antara widget
          Text(
            "Nama Pasien : ${widget.pasien.namaPasien}",
            style: TextStyle(fontSize: 20),
          // menampilkan nama pasien, menggunakan properti pasien.namaPasien dari objek widget, dengan ukuran font 20.
          ),
          SizedBox(height: 20),
          // Jarak vertikal tambahan sebesar 20 unit.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
          // membuat sebuah widget Row dengan dua tombol, _tombolUbah() dan _tombolHapus(), yang diatur secara merata.
            ],
          ),
          SizedBox(height: 20),
          Text(
            "ID Pasien : ${widget.pasien.idPasien}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Nomor RM : ${widget.pasien.nomor_rm}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Tanggal Lahir : ${widget.pasien.tanggal_lahir}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Nomor Telepon : ${widget.pasien.nomor_telepon}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Alamat : ${widget.pasien.alamat}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
// line 52 - 114 Mirip dengan bagian sebelumnya, baris-baris ini menampilkan ID pasien, nomor rekam medis, tanggal lahir, nomor telepon, dan alamat, masing-masing dengan Row yang berisi dua tombol.
            ],
          )
        ],
      ),
    );
  }

  _tombolUbah() {
  // definisi dari metode _tombolUbah() yang akan mengembalikan sebuah widget.
    return ElevatedButton(
    // mengembalikan sebuah widget ElevatedButton.
        onPressed: () {
        // menetapkan callback onPressed untuk tombol
          Navigator.push(
          // memanggil metode push dari Navigator, akan memindahkan pengguna ke rute baru.
              context,
              // BuildContext yang diperlukan untuk navigasi.
              MaterialPageRoute(
              // MaterialPageRoute, yang merupakan rute bawaan dari Flutter untuk halaman baru.
                  builder: (context) =>
                  // mengembalikan widget baru
                      PasienUpdateForm(pasien: widget.pasien)));
                      // membuat sebuah instance dari PasienUpdateForm dan meneruskan objek pasien dari widget
        },
        // menutup callback onPressed.
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Ubah"));
  }

  _tombolHapus() {
  // definisi dari metode _tombolHapus() yang akan mengembalikan sebuah widget.
    return ElevatedButton(
    // mengembalikan sebuah widget ElevatedButton.
        onPressed: () {
        // menetapkan callback onPressed untuk tombol
          AlertDialog alertDialog = AlertDialog(
          // membuat sebuah AlertDialog dan menyimpannya dalam variabel alertDialog.
            content: const Text("Yakin ingin menghapus data ini?"),
            // menetapkan teks "Yakin ingin menghapus data ini?" sebagai konten dialog.
            actions: [
            // daftar aksi yang akan ditampilkan di bawah konten dialog.
              ElevatedButton(
              // membuat tombol "YA" di dalam aksi dialog
                onPressed: () {
                // menetapkan callback onPressed untuk tombol "YA".
                  Navigator.pop(context);
                  // menutup dialog.
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => PasienPage()));
                },
                child: const Text("YA"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                // menetapkan gaya untuk tombol "Hapus", dalam hal ini warna latar belakang merah.
              ),
              // tombol batal
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Tidak"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                // menetapkan gaya untuk tombol "Hapus", dalam hal ini warna latar belakang hijau.
              )
            ],
          );
          showDialog(context: context, builder: (context) => alertDialog);
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Hapus"));
        // menetapkan teks "Hapus" sebagai konten tombol.
  }
}
