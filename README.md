<pre align="left">
Nama    : Elisia Catherine
NPM     : 2506533570
Kelas   : PBP A
</pre>

## 📱 MyPortfolio Mobile

A modern, cross-platform mobile application built with Flutter, serving as the interactive frontend client for my personal portfolio. 
Developed as part of the Platform-Based Programming (PBP) course at Faculty of Computer Science, Universitas Indonesia.

## 🛠️ Setup Proyek

Untuk menjalankan proyek Flutter ini secara lokal, ikuti instruksi berikut:

1. **Clone repositori ini ke komputer lokal:**
   ```bash
   git clone [https://github.com/elisiaac/myportofolio_mobile.git](https://github.com/elisiaac/myportofolio_mobile.git)
   cd myportofolio_mobile
   ```

2. Pastikan Flutter dan Dart SDK sudah terinstal. Periksa status environment Anda:
    ```
    flutter doctor
    ```

3. Install semua dependensi paket yang dibutuhkan:
    ```
    flutter pub get
    ```

4. Jalankan aplikasi (disarankan menggunakan browser Chrome):
    ```
    flutter run -d chrome
    ```
    (Atau tekan tombol F5 di VS Code jika target perangkat sudah di-set ke Chrome).


## 📈 Progress Mingguan
### Week 1
Fokus minggu ini adalah membangun fondasi awal aplikasi mobile menggunakan framework Flutter. Saya melakukan setup lingkungan pengembangan (Flutter SDK dan konfigurasi path), lalu memisahkan komponen tampilan utama ke dalam menu.dart dengan konsep clean code. Sifat halaman diubah menjadi StatelessWidget karena UI hanya menampilkan data statis. Selain itu, saya merancang InfoCard untuk menampilkan identitas diri dan ItemCard sebagai tombol navigasi interaktif. Setiap tombol dikustomisasi dengan background color yang berbeda melalui atribut model, dan dilengkapi dengan feedback visual berupa SnackBar saat ditekan. Proyek ini diakhiri dengan static code analysis menggunakan flutter analyze untuk memastikan kode bersih dari isu.


## 💭 Pertanyaan Reflektif
<details>
<summary><h3>Tugas 7</h3></summary>

1. Jelaskan apa yang dimaksud dengan widget tree pada Flutter dan bagaimana hubungan induk-anak (parent-child) bekerja antar-widget!
  Widget tree adalahh hierarki struktural visual di dalam flutter, di mana  setiap elemen UI/widgetnya di susun seperti "Pohon". hubungan parent-child berarti sebuah widget parent (contoh: Scaffold, Column, atau Row) dapat mengandung satu atau lebih widget child di dalamnya. Tata letak dan properti visual biasanya diwariskan atau bisa juga dibatasi oleh widget parent ke anak-anaknya.

2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya masing-masing!
    - `MaterialApp`: Root widget yang membungkus seluruh aplikasi dan menyediakan konfigurasi gaya Material Design.
    - `Scaffold`: Kerangka dasar halaman yang menyediakan struktur standar untuk UI (contoh : `AppBar` dan `body`).
    - `AppBar`: Bar navigasi di bagian atas halaman.
    - `Text`: Widget untuk menampilkan tulisan atau *string*.
    - `Center`: Widget tata letak yang menempatkan child-nya tepat di tengah area yang ada/tersedia.
    - `Padding`: Widget untuk memberikan ruang kosong (spasi/margin) di sekeliling child-nya.
    - `Column`: Widget tata letak untuk menyusun anak-anaknya (children-nya) secara vertikal (atas ke bawah).
    - `Row`: Widget tata letak untuk menyusun anak-anaknya (children-nya) secara horizontal (kiri ke kanan).
    - `Card`: Wadah visual berbentuk kartu dengan sudut melengkung dan ada sedikit bayangan.
    - `SizedBox`: Kotak dengan ukuran yang pasti, seringnya dipakai untuk memberikan jarak kosong antar-widget.
    - `GridView.count`: Kisi (*grid*) yang menampilkan anak-anaknya (children-nya) dalam bentuk tabel dengan jumlah kolom yang udah ditentukan.
    - `Material`: Berfungsi seperti selembar kanvas dasar. Di proyek ini, `Material` digunakan sebagai alas untuk memberi warna pada latar tombol. `Material` sangat penting karena animasi riak air (*ripple*) dari `InkWell` membutuhkan kanvas ini agar animasinya bisa digambar dan terlihat.
    - `InkWell`: Area kotak transparan yang menerima/menangkap interaksi sentuhan dan saat ditekan, `InkWell` akan memunculkan *ripple effect*, yaitu animasi visual berupa gelombang atau "riak air" yang menyebar dari titik jari kita menyentuh layar. Efek ini memberikan respons (*feedback*) visual kepada pengguna bahwa tombol tersebut berhasil dipencet.
    - `Icon`: Widget untuk menampilkan simbol atau icon grafis.
    - `SnackBar`: Notifikasi pesan *pop-up* sementara yang muncul dari bagian bawah layar.

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini umumnya digunakan sebagai root widget pada aplikasi Flutter!
    `MaterialApp` berfungsi sebagai gerbang utama yang menginisialisasi aplikasi berbasis Material Design (sistem desain standar Google). Widget ini umumnya digunakan sebagai *root widget* (atau widget yang paling atas) karena si `MaterialApp` menyediakan fungsionalitas tingkat tinggi yang sangat penting atau mendasar buat seluruh aplikasi, contohnya sistem navigasi antar-halaman (*routing*), pengaturan tema warna global, lokalisasi bahasa, dan juga navigator bawaan.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget! Kapan kita sebaiknya memilih StatelessWidget dan kapan harus menggunakan StatefulWidget?
    - **StatelessWidget** adalah widget statis yang tampilannya tidak akan pernah berubah setelah pertama kali dirender (kecuali data yang diberikan dari si induknya (parent-nya) berubah). StatelessWidget ini cocok digunakan untuk elemen UI yang menampilkan informasi tetap (statis), untuk contohnya itu seperti teks judul, ikon, atau kartu profil.

    - **StatefulWidget** adalah widget dinamis yang memiliki memori internal (*state*) yang bisa berubah-ubah selama aplikasinya berjalan. Widget ini bisa menggambar ulang dirinya sendiri kalau ada pembaruan *state*. Jadi sangat cocok digunakan saat UI harus merespons interaksi langsung dari user (perngguna), contoh interaksinya itu seperti *form input*, tombol *checkbox*, atau angka penghitung (*counter*).

5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di dalam metode build?
    `BuildContext` adalah referensi atau semacam "tanda pengenal" yang memberitahu sebuah widget tentang posisinya yang spesifik di dalam *Widget Tree*. Ini sangat penting karena akan memungkinkan sebuah widget dapat berinteraksi dengan lingkungan sekitarnya (mencari data dari widget induk). Dalam metode `build`, `context` digunakan untuk mengakses properti global seperti mengambil warna dari tema (`Theme.of(context)`), mengetahui ukuran layar perangkatnya (`MediaQuery.of(context)`), atau bisa juga menampilkan notifikasi (`ScaffoldMessenger.of(context)`).

6. Jelaskan konsep hot reload di Flutter dan apa perbedaannya dengan hot restart! Kapan kita tidak bisa hanya mengandalkan hot reload dan harus melakukan hot restart atau full restart?
    - **Hot Reload** 
        Fitur ini memungkinkan kita melihat hasil perubahan kode di layar secara instan (dalam milidetik) tanpa menghapus state atau memori aplikasi yang sedang berjalan. Karena kodenya langsung disuntikkan ke Dart VM, data yang sedang diinput oleh pengguna tetap aman dan tidak terreset.

    - **Hot Restart** 
        Berbeda dengan hot reload, fitur ini mematikan state aplikasi sepenuhnya dan memulai ulang eksekusi dari fungsi `main()`. Semua memori dan data sementara akan hilang atau kembali ke kondisi awal, dan proses loading-nya sedikit lebih lama.

    Kita tidak bisa menggunakan hot reload dan wajib melakukan hot restart atau full restart apabila kita menambahkan dependensi/package baru pada ```pubspec.yaml```, mengubah konfigurasi native bawaan sistem operasi (seperti AndroidManifest), atau melakukan perombakan besar pada struktur state aplikasi.

    ### Notes: Apa itu `pubspec.yaml`?
        `pubspec.yaml` adalah file konfigurasi utama dalam proyek Flutter (berperan mirip seperti `requirements.txt` pada Django) yang ditulis menggunakan format pengaturan YAML. File ini berfungsi sebagai pusat kendali untuk menyimpan identitas proyek (nama dan versi aplikasi), mendaftarkan *dependencies* atau *package* dari pihak ketiga, serta mengelola aset statis seperti gambar dan *font*.
</details>