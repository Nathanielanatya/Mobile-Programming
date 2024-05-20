import 'package:flutter/material.dart';
// mengakses kelas dan fungsi yang disediakan oleh paket Flutter.

class BarisKolom extends StatelessWidget {
// Kelas ini akan membuat widget yang tidak memiliki state internal yang dapat berubah
  const BarisKolom({Key? key}) : super(key: key);
  // menerima parameter opsional key

  @override
  // implementasi dari metode build yang akan digunakan untuk membuat widget tree.
  Widget build(BuildContext context) {
    return Scaffold(
    // menyediakan struktur dasar untuk aplikasi Flutter, seperti AppBar dan Body.
      appBar: AppBar(title: const Text("Baris dan Kolom")),
      // properti appBar dari Scaffold, yang diisi dengan widget AppBar yang memiliki judul "Baris dan Kolom".
      body: Column(
      // menyusun widget-widget anaknya secara vertikal.
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mengatur perataan widget-widget anaknya pada sumbu utama (vertikal).
        children: [
        // daftar widget anak yang akan diatur oleh Column.
          SizedBox(
            height: 20,
          // SizedBox yang memberikan jarak vertikal sebesar 20 piksel.
          ),
          Row(
            children: [
          // menyusun widget-widget anaknya secara horizontal.
              Text("Baris 1, Kolom 1 "),
              // widget Text yang menampilkan teks "Baris 1, Kolom 1".
              SizedBox(
                width: 20,
              // widget SizedBox yang memberikan jarak horizontal sebesar 20 piksel.
              ),
              Text("Baris 1, Kolom 2 "),
              // widget Text yang menampilkan teks "Baris 1, Kolom 2".
              SizedBox(
                width: 20,
              // widget SizedBox yang memberikan jarak horizontal sebesar 20 piksel.
              ),
              Text("Baris 1, Kolom 3 "),
              // widget Text yang menampilkan teks "Baris 1, Kolom 3".
            ],
          ),
          SizedBox(
            height: 30,
          // widget SizedBox yang memberikan jarak vertikal sebesar 30 piksel.
          ),
          Row(
            children: [
          // widget Row yang kedua, yang akan menyusun widget-widget anaknya secara horizontal.
              Text("Baris 2, Kolom 1 "),
              SizedBox(
                width: 20,
              ),
              Text("Baris 2, Kolom 2 "),
              SizedBox(
                width: 20,
              ),
              Text("Baris 2, Kolom 3 ")
            // line 52-60 serupa dengan bari sebelumnya tetapi menampilkan bari 2 kolom 1,2,3
            ],
          ),
          SizedBox(
            height: 30,
          // widget SizedBox yang memberikan jarak vertikal sebesar 30 piksel.
          ),
          Row(
            children: [
              Text("Baris 3, Kolom 1 "),
              SizedBox(
                width: 20,
              ),
              Text("Baris 3, Kolom 2 "),
              SizedBox(
                width: 20,
              ),
              Text("Baris 3, Kolom 3 "),
          // serupa dengan baris sebelumnya tetapi menampilkan teks untuk baris 3 kolom 1, 2, dan 3.
            ],
          ),
        ],
      ),
    );
  }
}
