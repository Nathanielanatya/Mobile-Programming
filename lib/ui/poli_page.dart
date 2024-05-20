import 'package:flutter/material.dart';
// mengimpor pustaka flutter/material.dart diperlukan untuk mengembangkan aplikasi flutter menggunakan Materi Design

class PoliPage extends StatefulWidget {
// Mendefinisikan kelas PoliPage yang merupakan turunan dari StatefulWidget.
    const PoliPage({super.key});
    // Konstruktor untuk kelas PoliPage. 
    @override
    // Anotasi yang menandakan bahwa metode berikutnya akan menggantikan metode dari superclass atau interface.
    State<PoliPage> createState() => _PoliPageState();
    // menggantikan metode createState() dari StaterfulWidget, membuat dan mengembalikan instance dari_PoliPageState, yang merupakan kelas turunan dari State<PoliPage>. Kelas ini akan mengatur keadaan (state) untuk PoliPage.
}

class _PoliPageState extends State<PoliPage> {
// kelas ini bertanggung jawab untuk mengatur keadaan (state) dari PoliPage.
    @override
    Widget build(BuildContext context) {
    // Menggantikan metode build () dari state. Ini akan membangun dan mengembalikan widget yang akan ditampilkan di layar.
        return Scaffold(
        // Membuat sebuah widget Scaffold, yang menyediakan kerangka utama untuk tata letak halaman.
            appBar: AppBar(title: const Text("Data Poli")),
            // AppBar menampilakan bilah aplikasi di bagian atas layar dan judulnya adalah "Data Poli"
            body: ListView(
            // Menetapkan widget ListView ke properti body di Scaffold. ListView adalah widget yang digunakan untuk menampilkan daftar widget dalam bentuk daftar bergulir.
                children: const [
                    Card(
                        child: ListTile(
                            title: const Text("Poli Anak"),
                        ),
                    ),
                    Card(
                        child: ListTile(
                            title: const Text("Poli Kandungan"),
                        ),
                    ),
                    Card(
                        child: ListTile(
                            title: const Text("Poli Gigi"),
                        ),
                    ),
                    Card(
                        child: ListTile(
                            title: const Text("Poli THT"),
                        ),
                    )
                ],
                // Line 25 - 46 adalah widget yang ditampilkan dalam ListView. Setiap widget Card berisi widget ListTile yang menampilkan teks judul untuk poliklinik tertentu.
            ),  
        );
        // Untuk menutup Scaffold
    }
    // Untuk menutup kelas _PoliPageState
} 