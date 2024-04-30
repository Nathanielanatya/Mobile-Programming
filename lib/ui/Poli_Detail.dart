 import 'package:flutter/material.dart';
 // Mengimpor paket flutter.material.dart,menyediakan widget dan fungsionalitas desain material 
 import '../model/poli.dart';
 // Mengimpor kelas model kustom Poli dari File '../model/poli.dart'
 
 class PoliDetail extends StatefulWidget {
    final Poli poli;
 
    const PoliDetail({super.key, required this.poli});
 
    @override
    State<PoliDetail> createState() => _PoliDetailState();
 }
 // Mendeklarasikan widget stateful PoliDetail
 class _PoliDetailState extends State<PoliDetail> {
  // Mendefinisikan parameter poli ang diperlukan  
    @override
    // Anotasi yag menandakan bahwa metode berikut menggantikan metode dari superclass
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text("Detail Poli")),
            body: Column(
                children: [
                    SizedBox(height: 20),
                    Text(    
                        "Nama Poli : ${widget.poli.namaPoli}"                             
                        style: TextStyle(fontSize: 20),
                     ),
                     // Mendefinisikan class _PoliDetailState yang meng-extends class State dan menyediakan method build. Method build mengembalikan widget Scaffold, yang berfungsi sebagai root dari halaman detail. Widget Scaffold memiliki properti appBar yang menampilkan AppBar dengan judul "Detail Poli". Properti body dari Scaffold berisi Column widget dengan Text widget yang menampilkan nama dari objek Poli yang diterima melalui konstruktor widget.
                    SizedBox(height: 20),
                    //widget SizedBox yang memberikan jarak vertikal sebesar 20 piksel di antara elemen sebelumnya dan elemen berikutnya.
                    Row(
                    //Row yang digunakan untuk menampilkan elemen-elemen secara horizontal.    
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //mainAxisAlignment digunakan untuk mengatur penyebaran elemen-elemen secara merata di sepanjang sumbu utama (horizontal).
                        children: [
                        //children dari widget Row yang berisi daftar elemen-elemen yang akan ditampilkan secara horizontal.    
                            ElevatedButton(
                            //ElevatedButton pertama, yang merupakan tombol dengan tampilan yang sedikit menonjol.    
                                onPressed: () {},
                                //onPressed digunakan untuk menentukan tindakan yang akan dijalankan ketika tombol ditekan.
                                style:
                                    ElevatedButton.styleFrom(backgroundColor: Colors.green),
                                //style digunakan untuk mengatur tampilan tombol. Di sini, menggunakan ElevatedButton.styleFrom dengan properti backgroundColor yang diatur menjadi Colors.green, sehingga tombol akan memiliki latar belakang hijau    
                                child: const Text("Ubah")),
                                //child digunakan untuk menentukan elemen anak dari tombol, dalam hal ini sebuah Text yang menampilkan teks "Ubah"
                            ElevatedButton(
                            //widget ElevatedButton kedua, yang merupakan tombol dengan tampilan yang sedikit menonjol.    
                                onPressed: () {},
                                //onPressed digunakan untuk menentukan tindakan yang akan dijalankan ketika tombol ditekan
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                                //Properti style digunakan untuk mengatur tampilan tombol. Di sini, menggunakan ElevatedButton.styleFrom dengan properti backgroundColor yang diatur menjadi Colors.red, sehingga tombol akan memiliki latar belakang merah.
                                child: const Text("Hapus")),
                                //Properti child digunakan untuk menentukan elemen anak dari tombol, dalam hal ini sebuah Text yang menampilkan teks "Hapus".
                        ],
                        //Ini menutup daftar elemen anak dari Row.
                    )
                    //menutup widget Row.
                ],
                //menutup daftar elemen anak dari Column.
            ),
            //Ini menutup widget Scaffold.
        );
        //menutup class _PoliDetailState`
    }
    //menutup class PoliDetail`.
 }
 //menutup file atau blok kode utama.     