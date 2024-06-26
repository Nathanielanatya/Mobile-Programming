import 'package:flutter/material.dart';
// baris ini mengimpor pustaka flutter/material.dart yang diperlukan untuk mengembangkan aplikasi flutter dengan menggunakan Materi Design
// mengimpor pustaka flutter/material.dart diperlukan untuk mengembangkan aplikasi flutter menggunakan Materi Design

class PoliPage extends StatefulWidget {
// Mendefinisikan kelas PoliPage yang merupakan turunan dari StatefulWidget. Ini berati PoliPage adalah widget yang memiliki keadaan (state) yang dapat berubah.
// Mendefinisikan kelas PoliPage yang merupakan turunan dari StatefulWidget.
    const PoliPage({super.key});
    // Konstruktor untuk kelas PoliPage. Ini adalah konstruktor dengan parameter opsional yang menggunakan sintaks const untuk mengoptimalkan performa. Namun, dalam kode yang diberikan ada kesalahan penulisan. Parameter yang benar adalah key , key bukan super, key.
    // Konstruktor untuk kelas PoliPage. 
    @override
    // Anotasi yang menandakan bahwa metode berikutnya akan menggantikan metode dari superclass atau interface.
    State<PoliPage> createState() => _PoliPageState();
    // Metode ini menggantikan metode createState() dari StaterfulWidget . ini membuat dan mengembalikan instance dari_PoliPageState, yang merupakan kelas turunan dari State<PoliPage>. Kelas ini akan mengatur keadaan (state) untuk PoliPage.
    // menggantikan metode createState() dari StaterfulWidget, membuat dan mengembalikan instance dari_PoliPageState, yang merupakan kelas turunan dari State<PoliPage>. Kelas ini akan mengatur keadaan (state) untuk PoliPage.
}

class _PoliPageState extends State<PoliPage> {
// Mendifinisikan kelas _PoliPageState, yang merupakan turunan dari State<PoliPage>. kelas ini bertanggung jawab untuk mengatur keadaan (state) dari PoliPage.
// kelas ini bertanggung jawab untuk mengatur keadaan (state) dari PoliPage.
    @override
    Widget build(BuildContext context) {
    // Menggantikan metode build () dari state. Ini akan membangun dan mengembalikan widget yang akan ditampilkan di layar.
        return Scaffold(
        // Membuat sebuah widget Scaffold, yang menyediakan kerangka utama untuk tata letak halaman.
            appBar: AppBar(title: const Text("Data Poli")),
            // Menetapkan widget AppBar ke properti appBar di Scaffold. AppBar menampilakan bilah aplikasi di bagian atas layar dan judulnya adalah "Data Poli"
            // AppBar menampilakan bilah aplikasi di bagian atas layar dan judulnya adalah "Data Poli"
            body: ListView(
            // Menetapkan widget ListView ke properti body di Scaffold. ListView adalah widget yang digunakan untuk menampilkan daftar widget dalam bentuk daftar bergulir.
                children: const [
