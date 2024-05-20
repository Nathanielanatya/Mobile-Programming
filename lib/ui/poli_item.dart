import 'package:flutter/material.dart';
// mengimpor pustaka material.dart dari Flutter ang berisi komponen UI Material Design
import '../model/poli.dart';
// mengimpor file poli.dart, berisi definisi kelas poli
import 'poli_detail.dart';
//berisi halaman detail poli, diimpor dari poli_detail.dart

class PoliItem extends StatelessWidget {
// digunakan untuk menampilkan item poli dalam daftar, ini adalah deklarasi kelas PoliItem turunan dari StatelessWidget      
  final Poli poli;
  //menyimpan data poli yang akan ditampilkan
  const PoliItem({Key? key, required this.poli});
  // konstruktor PoliItem yang menggunakan kunci dan poli,kunci digunakan mengidentifikasi widget unik sedangkan poli mengidentifikasi data poli yang ditampilkan  

  @override
  // anotasi yang menandakan metode berikutya akan menggantikan metode dari superclass / interface yang sama
  Widget build(BuildContext context) {
  // metode ini dipanggil oleh flutter untuk membangun tampilan widget  
    return GestureDetector(
    // untuk mengaktifkan interaksi gestur pada widget child-nya   
      child: Card(
      // untuk mengelompokkan konten dalam sebuah kartu. Konten card adalah widget ListTile  
        child: ListTile(
        // untuk menampilkan tampilan list item dengan judul   
          title: Text("${poli.namaPoli}"),
          // menampilkan nama poli dengan memanfaatkan data poli yang diberikan
        ),
      ),
      onTap: () {
      // untuk mendaftarkan fungsi yang akan dipanggil ketika widget ditekan  
        Navigator.push(
        // untuk melakukan navigasi ke halaman PoliDetail ketika item poli ditekan    
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
          // sintaks untuk membuat MaterialPageRouter dalam Flutter
        );
      },
    );
  }
}
