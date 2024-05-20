import 'package:flutter/material.dart';
// mengimpor paket flutter/material.dart
import '../model/pasien.dart';
// mengimpor file pasien.dart dari direktori yang berbeda.
import 'pasien_detail.dart';
// mengimpor file pasien_detail.dart
import 'pasien_page.dart';
// mengimpor file pasien_page.dart.

class PasienForm extends StatefulWidget {
// mendefinisikan kelas PasienForm yang merupakan turunan dari kelas StatefulWidget.
  const PasienForm({Key? key}) : super(key: key);
  // mendefinisikan konstruktor untuk widget PasienForm.
  _PasienFormState createState() => _PasienFormState();
  // mendefinisikan metode createState yang akan membuat dan mengembalikan objek dari kelas _PasienFormState.
}

class _PasienFormState extends State<PasienForm> {
// mendefinisikan kelas _PasienFormState yang merupakan turunan dari kelas State.
  final _formKey = GlobalKey<FormState>();
  // mendeklarasikan variabel _formKey dengan tipe GlobalKey<FormState>,untuk mengidentifikasi dan memanipulasi status validasi formulir.
  final _namaPasienCtrl = TextEditingController();
  // mendeklarasikan variabel _namaPasienCtrl dengan tipe TextEditingController. 

  @override
  //  menunjukkan bahwa metode yang mengikuti ini akan menggantikan metode dengan nama yang sama dari kelas induk
  Widget build(BuildContext context) {
  //  metode build yang akan mengembalikan widget yang akan ditampilkan
    return Scaffold(
    // mengembalikan widget Scaffold, yang menyediakan kerangka dasar untuk tata letak antarmuka pengguna.
      appBar: AppBar(title: const Text("Tambah Data")),
      //  appBar dari Scaffold digunakan untuk menampilkan bilah aplikasi dengan judul "Tambah Data".
      body: SingleChildScrollView(
      // menentukan isi dari halaman. SingleChildScrollView digunakan untuk memastikan kontennya dapat di-scroll jika ukurannya melebihi batas layar.
        child: Form(
        // Form digunakan untuk membuat formulir yang akan mengelola validasi dan pengiriman data.
          key: _formKey,
          // digunakan untuk menghubungkan GlobalKey<FormState> yang didefinisikan sebelumnya untuk mengelola validasi formulir.
          child: Column(
         // Widget Column digunakan untuk menempatkan anak-anaknya dalam satu kolom secara vertikal.
            children: [
            // Widget Column digunakan untuk menempatkan anak-anaknya dalam satu kolom secara vertikal.
              _fieldNamaPasien(),
              // Memanggil metode _fieldNamaPasien() yang mengembalikan widget TextField untuk menginputkan nama pasien.
              SizedBox(height: 20),
              // Widget SizedBox adalah penjelasan mengenai setiap baris kode dalam widget PasienForm:
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPasien() {
  // widget TextField yang digunakan untuk menginputkan nama pasien. 
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Data"),
      controller: _namaPasienCtrl,
    );
  }

  _tombolSimpan() {
  // widget ElevatedButton. ElevatedButton adalah sebuah tombol yang ditinggikan. Pada properti onPressed, diatur sebuah fungsi yang akan dieksekusi ketika tombol ditekan
    return ElevatedButton(
        onPressed: () {
          Pasien pasien = new Pasien(namaPasien: _namaPasienCtrl.text);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: pasien)));
        },
        child: const Text("Simpan"));
  }
}
