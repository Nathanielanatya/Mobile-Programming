import 'package:flutter/material.dart';
// mengimpor paket Flutter yang diperlukan untuk membangun aplikasi.
import 'pegawai_page.dart';
// mengimpor file pegawai_page.dart yang mungkin berisi kode untuk halaman daftar pegawai.
import 'pegawai_update_form.dart';
// mengimpor file pegawai_update_form.dart yang berisi kode untuk formulir pembaruan data pegawai.
import '../model/pegawai.dart';
// mengimpor file pegawai.dart yang berisi model data untuk pegawai.

class PegawaiDetail extends StatefulWidget {
// widget PegawaiDetail yang merupakan turunan dari StatefulWidge
  final Pegawai pegawai;
  // variabel pegawai yang akan digunakan menyimpan data pegawai yang ditampilkan.

  const PegawaiDetail({super.key, required this.pegawai});
  // widget PegawaiDetail yang menerima parameter pegawai yang wajib diisi.

  @override
  // override untuk metode bawaan dari StatefulWidget.
  State<PegawaiDetail> createState() => _PegawaiDetailState();
  // mengembalikan instance dari _PegawaiDetailState, yang merupakan state untuk widget PegawaiDetail.
}

class _PegawaiDetailState extends State<PegawaiDetail> {
// class _PegawaiDetailState yang merupakan state untuk widget PegawaiDetail. Kelas ini merupakan turunan dari State<PegawaiDetail>.
  @override
  // class _PegawaiDetailState yang merupakan state untuk widget PegawaiDetail. Kelas ini merupakan turunan dari State<PegawaiDetail>.
  Widget build(BuildContext context) {
  // build yang akan mengembalikan widget yang akan ditampilkan.
    return Scaffold(
    // widget Scaffold yang akan menjadi dasar tampilan aplikasi.
      appBar: AppBar(title: Text("Detail Pegawai")),
      // Column widget yang akan menjadi isi utama dari halaman.
      body: Column(
        children: [
        // widget anak yang akan ditampilkan di dalam Column.
          SizedBox(height: 20),
          // SizedBox yang digunakan untuk memberikan jarak vertikal.
          Text(
            "Nama Pegawai : ${widget.pegawai.namaPegawai}",
            style: TextStyle(fontSize: 20),
          // widget Text yang menampilkan nama pegawai.
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
          // widget Row yang menampilkan dua tombol, yaitu "Ubah" dan "Hapus"
            ],
          ),
          SizedBox(height: 20),
          Text(
            "ID Pegawai : ${widget.pegawai.idPegawai}",
            style: TextStyle(fontSize: 20),
          // widget Text yang menampilkan ID pegawai.
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "NIP : ${widget.pegawai.nip}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Tanggal Lahir : ${widget.pegawai.tanggal_lahir}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Nomor Telepon : ${widget.pegawai.nomor_telepon}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Email : ${widget.pegawai.email}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Password : ${widget.pegawai.password}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
         // line 59 - 129 diulang untuk menampilkan informasi lain seperti NIP, tanggal lahir, nomor telepon, email, dan password.
            ],
          )
        ],
      ),
    );
  }

  _tombolUbah() {
  // deklarasi metode private
    return ElevatedButton(
    // mengembalikan sebuah widget ElevatedButton.
        onPressed: () {
        // onPressed yang mendeklarasikan callback yang akan dipanggil ketika tombol ditekan
          Navigator.push(
          // memanggil push() pada Navigator untuk menyajikan halaman baru.
              context,
              // parameter context yang dibutuhkan oleh Navigator.push().
              MaterialPageRoute(
              // mendefinisikan sebuah MaterialPageRoute yang akan digunakan untuk menyajikan halaman baru.
                  builder: (context) =>
                  // properti builder yang mendeklarasikan sebuah fungsi yang akan mengembalikan widget baru.
                      PegawaiUpdateForm(pegawai: widget.pegawai)));
                      // menyajikan halaman baru PegawaiUpdateForm dan mengirimkan objek pegawai sebagai parameter.
        },
        // menutup callback onPressed.
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
       // mengatur warna latar belakang menjadi hijau.
        child: const Text("Ubah"));
        // mendefinisikan teks yang akan ditampilkan di dalam ElevatedButton.
  }

  _tombolHapus() {
  // deklarasi metode private
    return ElevatedButton(
    // mengembalikan sebuah widget ElevatedButton.
        onPressed: () {
        // properti onPressed yang mendeklarasikan callback yang akan dipanggil ketika tombol ditekan
          AlertDialog alertDialog = AlertDialog(
          // membuat sebuah instance AlertDialog yang akan ditampilkan.
            content: const Text("Yakin ingin menghapus data ini?"),
            // mendefinisikan konten dari AlertDialog, dalam hal ini adalah teks "Yakin ingin menghapus data ini?".
            actions: [
            // daftar aksi yang akan ditampilkan di bawah konten AlertDialog.
              ElevatedButton(
              // membuat sebuah tombol "YA" di dalam AlertDialog.
                onPressed: () {
                //  callback onPressed untuk tombol "YA"
                  Navigator.pop(context);
                  // menutup AlertDialog
                  Navigator.pushReplacement(context,
                  // mengganti halaman saat ini dengan halaman baru.
                      MaterialPageRoute(builder: (context) => PegawaiPage()));
                      // mendefinisikan rute baru yang akan menampilkan halaman PegawaiPage.
                },
                // menutup callback onPressed untuk tombol "YA".
                child: const Text("YA"),
                // mendefinisikan teks yang akan ditampilkan pada tombol "YA".
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                // mendefinisikan style untuk tombol "YA", dalam hal ini mengatur warna latar belakang menjadi merah
              ),
              ElevatedButton(
              // membuat sebuah tombol "Tidak" di dalam AlertDialog. 
                onPressed: () {
                // callback onPressed untuk tombol "Tidak".
                  Navigator.pop(context);
                  // menutup AlertDialog.
                },
                // menutup callback onPressed untuk tombol "Tidak"
                child: Text("Tidak"),
                // mendefinisikan teks yang akan ditampilkan pada tombol "Tidak".
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                // mendefinisikan style untuk tombol "Tidak", dalam hal ini mengatur warna latar belakang menjadi hijau
              )
            ],
            // menutup daftar aksi AlertDialog.
          );
          // menutup definisi AlertDialog.
          showDialog(context: context, builder: (context) => alertDialog);
          // menampilkan AlertDialog yang telah didefinisikan.
        },
        // menutup callback onPressed untuk ElevatedButton.
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        // mendefinisikan style untuk ElevatedButton, dalam hal ini mengatur warna latar belakang menjadi merah.
        child: const Text("Hapus"));
        // mendefinisikan teks yang akan ditampilkan di dalam ElevatedButton.
  }
}

