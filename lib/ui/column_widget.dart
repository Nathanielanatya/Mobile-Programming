import 'package:flutter/material.dart';
// mengakses kelas dan fungsi yang disediakan oleh paket Flutter.

class ColumnWidget extends StatelessWidget {
// membuat widget yang tidak memiliki state internal yang dapat berubah
  const ColumnWidget({Key? key}) : super(key: key);
  // menerima parameter opsional key, memanggil konstruktor superclass StatelessWidget.
  @override
  // digunakan untuk membuat widget tree.
  Widget build(BuildContext context) {
    return Scaffold(
    // menyediakan struktur dasar untuk aplikasi Flutter, seperti AppBar dan Body.
      appBar: AppBar(
      // appBar dari Scaffold, yang diisi dengan widget AppBar.
        title: const Text("Widget Column"),
        // properti title dari AppBar, yang berisi teks "Widget Column".
      ),
      body: Column(
      // menyusun widget-widget anaknya secara vertikal.
        children: const [
        // daftar widget anak yang akan diatur oleh Column.
          Text("Kolom 1"),
          // menampilkan teks "Kolom 1".
          Text("Kolom 2"),
          // menampilkan teks "Kolom 2".
          Text("Kolom 3"),
          // menampilkan teks "Kolom 3".
          Text("Kolom 4")
          // menampilkan teks "Kolom 4".
        ],
      ),
    );
  }
}

