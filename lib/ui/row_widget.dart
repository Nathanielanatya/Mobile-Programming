import 'package:flutter/material.dart';
// digunakan untuk mengakses kelas dan fungsi yang disediakan oleh paket Flutter.

class RowWidget extends StatelessWidget {
// membuat widget yang tidak memiliki state internal yang dapat berubah.
  const RowWidget({super.key});
  // menerima parameter opsional key dan memanggil superclass StatelessWidget.

  @override
  // digunakan untuk membuat widget tree.
  Widget build(BuildContext context) {
    return Scaffold(
    // menyediakan struktur dasar untuk aplikasi Flutter, seperti AppBar dan Body.
      appBar: AppBar(
      // properti appBar dari Scaffold, yang diisi dengan widget AppBar.
        title: const Text("Widget Row"),
        // properti title dari AppBar, yang berisi teks "Widget Row".
      ),
      // akhir dari definisi AppBar.
      body: Row(
      // menyusun widget-widget anaknya secara horizontal.
        children: const [
        // daftar widget-widget anak yang akan diatur oleh Row.
          Text("Row 1"),
          // Text yang menampilkan teks "Row 1".
          Text("Row 2"),
          // Text yang menampilkan teks "Row 2".
          Text("Row 3"),
          // Text yang menampilkan teks "Row 3".
          Text("Row 4")
          // Text yang menampilkan teks "Row 4".
        ],
      ),
    );
  }
}

