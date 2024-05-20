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
                     // Mendefinisikan class _PoliDetailState yang meng-extends class State dan menyediakan method build. 
                    SizedBox(height: 20),
                    // SizedBox yang memberikan jarak vertikal sebesar 20 piksel di antara elemen sebelumnya dan elemen berikutnya.
                    Row(
                    //Row digunakan menampilkan elemen-elemen secara horizontal.    
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //mainAxisAlignment digunakan mengatur penyebaran elemen-elemen secara merata di sepanjang sumbu utama (horizontal).
                        children: [
                        //children dari widget Row yang berisi daftar elemen-elemen yang akan ditampilkan secara horizontal.    
                            ElevatedButton(
                            //ElevatedButton pertama, yang merupakan tombol dengan tampilan yang sedikit menonjol.    
                                onPressed: () {},
                                //onPressed digunakan untuk menentukan tindakan yang akan dijalankan ketika tombol ditekan.
                                style:
                                    ElevatedButton.styleFrom(backgroundColor: Colors.green),
                                //style digunakan mengatur tampilan tombol. Di sini, menggunakan ElevatedButton.styleFrom dengan properti backgroundColor yang diatur menjadi Colors.green, sehingga tombol akan memiliki latar belakang hijau    
                                child: const Text("Ubah")),
                                //child digunakan menentukan elemen anak dari tombol, dalam hal ini sebuah Text yang menampilkan teks "Ubah"
                            ElevatedButton(
                            // ElevatedButton kedua, yang merupakan tombol dengan tampilan yang sedikit menonjol.    
                                onPressed: () {},
                                //onPressed digunakan menentukan tindakan yang akan dijalankan ketika tombol ditekan
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                                //Properti style digunakan  mengatur tampilan tombol. Di sini, menggunakan ElevatedButton.styleFrom dengan properti backgroundColor yang diatur menjadi Colors.red, sehingga tombol akan memiliki latar belakang merah.
                                child: const Text("Hapus")),
                                // child digunakan menentukan elemen anak dari tombol, dalam hal ini sebuah Text yang menampilkan teks "Hapus".
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