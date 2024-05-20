import 'package:flutter/material.dart';
// impor package Flutter yang diperlukan untuk menggunakan framework UI Flutter.
import '../model/pegawai.dart';
//  impor dari file pegawai.dart yang berisi definisi model untuk pegawai.
import 'pegawai_detail.dart';
// impor dari file pegawai_detail.dart yang berisi halaman detail untuk pegawai.

class PegawaiForm extends StatefulWidget {
// deklarasi kelas PegawaiForm yang merupakan turunan dari StatefulWidget.
  const PegawaiForm({Key? key}) : super(key: key);
  // konstruktor kelas PegawaiForm. Konstruktor ini tidak mengambil parameter dan meneruskan key ke konstruktor superclass.
  _PegawaiFormState createState() => _PegawaiFormState();
  // metode createState mengembalikan instance dari kelas _PegawaiFormState yang merupakan turunan dari State<PegawaiForm>.
}

class _PegawaiFormState extends State<PegawaiForm> {
//  kelas _PegawaiFormState yang merupakan turunan dari State<PegawaiForm>.
  final _formKey = GlobalKey<FormState>();
  // variabel _formKey yang merupakan kunci (key) untuk mengakses dan memvalidasi form.
  final _namaPegawaiCtrl = TextEditingController();
  // digunakan untuk mengontrol isi dari TextField yang digunakan untuk memasukkan nama pegawai.

  @override
  Widget build(BuildContext context) {
  // build metode dari kelas State. Metode ini mengembalikan widget yang akan dibangun.
    return Scaffold(
    //  widget Scaffold yang memberikan kerangka dasar untuk tata letak halaman.
      appBar: AppBar(title: const Text("Tambah Pegawai")),
      // appBar diatur dengan menggunakan widget AppBar yang menampilkan judul halaman.
      body: SingleChildScrollView(
      // body diatur dengan menggunakan widget SingleChildScrollView memungkinkan konten halaman dapat digulir.
        child: Form(
        // child diatur dengan menggunakan widget Form yang berisi elemen-elemen form.
          key: _formKey,
          // key diatur dengan menggunakan _formKey yang digunakan untuk mengontrol form.
          child: Column(
          // child diatur dengan menggunakan widget Column yang menampung elemen-elemen dalam bentuk kolom.
            children: [
              _fieldNamaPegawai(),
              // metode _fieldNamaPegawai() mengembalikan widget TextField untuk memasukkan nama pegawai.
              SizedBox(height: 20),
              // SizedBox untuk memberikan jarak vertikal antara elemen sebelum dan setelahnya.
              _tombolSimpan()
              // pemanggilan metode _tombolSimpan(),mengembalikan widget ElevatedButton untuk tombol "Simpan".
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPegawai() {
  // metode _fieldNamaPegawai() mengembalikan widget TextField untuk memasukkan nama pegawai.
    return TextField(
    // TextField yang digunakan untuk memasukkan teks.
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
      // decoration diatur menggunakan widget InputDecoration, memberikan label "Nama Pegawai" pada TextField.
      controller: _namaPegawaiCtrl,
      // controller diatur dengan menggunakan _namaPegawaiCtrl yang digunakan untuk mengontrol nilai yang dimasukkan ke dalam TextField.
    );
  }

  _tombolSimpan() {
  // deklarasi metode _tombolSimpan()yang mengembalikan widgetElevatedButton` untuk tombol "Simpan".
    return ElevatedButton(
    // ElevatedButton yang digunakan untuk membuat tombol yang meningkatkan tampilan ketika ditekan.
        onPressed: () {
        // Properti onPressed diatur dengan sebuah fungsi yang akan dieksekusi ketika tombol ditekan.
          Pegawai pegawai = new Pegawai(namaPegawai: _namaPegawaiCtrl.text);
          // inisialisasi objek pegawai dengan nilai nama pegawai yang diambil dari _namaPegawaiCtrl.text.
          Navigator.pushReplacement(
          // navigasi untuk membuka halaman PegawaiDetail dan menggantikan halaman sebelumnya.
              context,
              // Parameter pertama dari Navigator.pushReplacement, yaitu context, digunakan untuk mendapatkan konteks dari widget saat ini.
              MaterialPageRoute(
              // widget MaterialPageRoute yang digunakan untuk membuat rute halaman baru.
                  builder: (context) => PegawaiDetail(pegawai: pegawai)));
                  // builder diatur sebuah fungsi yang membangun halaman PegawaiDetail dengan membawa objek pegawai sebagai argumen.
        },
        child: const Text("Simpan"));
        // Properti child diatur dengan menggunakan widget Text yang menampilkan teks "Simpan" pada tombol.
  }
}

