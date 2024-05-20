import 'package:flutter/material.dart';
// mengimpor pustaka material.dart dari Flutter ang berisi komponen UI Material Design

class PoliForm extends StatefulWidget {
// kelas ini digunakan menampilkan formulir tambah poli yang merupakan turunan dari StatefulWidget    
  const PoliForm({Key? key}) : super(key: key);
  // konstruktor PoliForm yang menerima kunci, kunci untuk mengidentifikasi widget secara unik 

  @override
  // anotasi yang menandakan metode berikutnya akan menggantikan metode dari superclass / interface ang sama
  _PoliFormState createState() => _PoliFormState();
  // membuat dan menginisialisasi state dari widget, metode createState yang mengembalikan instance dari _PoliFormState
}

class _PoliFormState extends State<PoliForm> {
// class_PoliForm berfungsi untuk menyimoan dan mengelola keadaan (state) yang akan digunakan oleh widget PoliForm    
  final _formKey = GlobalKey<FormState>();
  // mengidentifikasi dan mengontrol keadaan form

  @override
  Widget build(BuildContext context) {
  // menggambarkan tampilan widget, dipanggil oleh flutter untk membangun tampilan widget  
    return Scaffold(
    // kerangka tampilan dasar untuk halaman, widget ini memiliki properti appbar dan body    
      appBar: AppBar(title: const Text("Tambah Poli")),
      // properti ini menampilkan bilah aplikasi dengan judul "Tambah Poli"
      body: SingleChildScrollView(
      // body dari Scaffold yang berisi widget SingleChildScrollView, memungkinkan konten dalam Scaffold dapat digulir jika terlalu panjang  
        child: Form(
        // mengelompokkan elemen-elemen formulir, konten Form adalah widget column      
          key: _formKey,
          // key dari Form yang menggunakan _formkey sebagai kunci
          child: Column(
          // mengatur elemen dalam satu kolom, konten column terdiri dari TextFormField, SizedBox dan ElevatedButton   
            children: [
              TextFormField(
               // menerima input teks dari pengguna,memiliki properti decoration untuk menambahkan label "Nama Poli" pada input
                decoration: const InputDecoration(labelText: "Nama Poli"),
              ),
              SizedBox(height: 20),
              // memberikan jarak vertikal sebesar 20 poksel antara TextFormField dana ElevatedButton
              ElevatedButton(
              // ElevatedButton yang menampilkan tombol dengan teks "Simpan",memiliki properti onPressed untuk menentukan aksi yang dilakukan saat tombol ditekan. 
                onPressed: () {},
                child: const Text("Simpan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
