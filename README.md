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

### Week 2
Pada minggu kedua pengembangan mobile ini, progres utama saya adalah mengubah aplikasi yang statis menjadi interaktif dan terstruktur. Saya telah membuat sistem navigasi multi-halaman menggunakan `Drawer` dan `Navigator`, serta membuat formulir interaktif yang dilengkapi dengan validasi input yang aman. Selain itu, UI (antarmuka) aplikasi kini lebih responsif dengan adanya umpan balik visual yang berupa SnackBar dan AlertDialog, lalu adanya arsitektur yang lebih bersih karena dipisah ke dalam folder screens/ dan widgets/. Untuk tugas 8 ini saya membuat form baru untuk experience.


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

    ### AI Disclosure
    Untuk Tugas 7 ini saya tidak menggunakan AI dalam mengerjakannya. Pengerjaan Tugas 7 murni saya lakukan dengan mengikuti panduan dari Tutorial 8 dan juga untuk checklist minimal di Tugas 7 saya lakukan secara manual, di mana untuk tugas mengubah warna dapat saya cari caranya dari website PBP Tugas 7 itu sendiri di "TipPetunjuk Implementasi: Pewarnaan Kartu Tombol yang Rapi". Selain itu saya juga membaca materi yang disediakan dari PPT belajar di kelas.
</details>

<details>
<summary><h3>Tugas 8</h3></summary>

1. Jelaskan perbedaan antara Navigator.push(), Navigator.pushReplacement(), dan Navigator.pop(). Metode apa yang digunakan untuk membuka formulir dari kartu aksi? Jelaskan juga bagaimana opsi Home di drawer membawa pengguna kembali ke halaman utama.
    - `Navigator.push()`: Digunakan untuk menambahkan (menumpuk) halaman baru di atas tumpukan navigasi saat ini, sehingga memunculkan tombol *Back* bawaan untuk kembali.
    - `Navigator.pushReplacement()`: Mengganti halaman saat ini dengan halaman baru di tumpukan navigasi, sehingga pengguna tidak bisa menekan *Back* ke halaman sebelumnya.
    - `Navigator.pop()`: Menghapus halaman teratas dari tumpukan navigasi, yang efeknya sama dengan menekan tombol *Back* (kembali ke halaman sebelumnya).
    Untuk membuka formulir dari kartu aksi, saya menggunakan `Navigator.push()`. Sedangkan opsi Home di drawer menggunakan navigasi (biasanya `pushReplacement`) yang mengarahkan ulang pengguna langsung ke halaman utama (`MyHomePage`).

2. Bagaimana susunan Scaffold, AppBar, dan Drawer membantu menjaga struktur halaman tetap konsisten? Berikan satu contoh penggunaan warna tema portofolio di lebih dari satu halaman.
    `Scaffold` menyediakan kerangka halaman standarnya, kalau `AppBar` memberikan header yang posisinya tetap di bagian atas, dan `Drawer` menyediakan menu navigasi di samping. Dengan memanggil ketiga *widget* ini di setiap halaman (*screens*), struktur UI aplikasi akan tetap seragam dan pengguna tidak merasa bingung/berpindah ke jalur yang salah. Contoh penggunaan warna tema adalah penerapan `Colors.indigo` (atau `Theme.of(context).colorScheme.primary`) yang digunakan secara konsisten pada latar belakang `AppBar` dan warna tombol *Save* di seluruh halaman porto mobile saya.

3. Mengapa tata letak tersebut dipilih untuk formulir? Jelaskan peran widget pengatur jarak dan widget penggulir ketika ruang layar terbatas.
    Tata letak menggunakan `Column` yang dibungkus dengan `SingleChildScrollView` (penggulir). Hal ini sangat krusial agar ketika ruang layar terbatas (misalnya dibuka di HP dengan layar sempit) atau ketika papan ketik virtual (keyboard) muncul, layar tetap bisa di-*scroll* ke bawah untuk menjangkau tombol *Save* di bawah dan mencegah *error overflow*. Widget pengatur jarak seperti `Padding` digunakan agar *input field* yg dibuat tidak saling menempel, sehingga lebih rapi (simpelnya tidak berantakan) dan mudah ditekan oleh jari user.

4. Apa peran GlobalKey<FormState>, validator, dan validate() saat tombol Simpan ditekan? Berikan satu contoh nilai yang ditolak oleh validasi dan jelaskan mengapa memilih jenis input atau papan ketik saja belum cukup.
    `GlobalKey<FormState>` berfungsi sebagai pengenal unik form agar saat tombol `Save` ditekan, fungsi validate() bisa memanggil semua validator untuk mengecek isian dari user secara bersamaan atau serentak. Contoh nilai yang ditolak oleh validasi ini adalah input yang hanya berisi spasi kosong ("   "). Kita tidak akan bisa hanya mengandalkan pembatasan jenis input atau keyboard karena keyboard hanya membatasi tombol apa yang bisa diketik, tapi tidak ada logika untuk mengecek apakah isiannya itu bermakna, sesuai syarat, atau malah sengaja dikosongkan, sehingga peran validator tetaplah dibutuhkan.

    ### AI Disclosure
    Untuk Tugas 8 ini saya tidak menggunakan AI dalam mengerjakannya. Pengerjaan Tugas 8 saya lakukan dengan mengikuti panduan dari Tutorial 9 dan juga untuk checklist minimal di Tugas 8 saya lakukan secara manual, di mana untuk mengimplementasikan form baru saya lakukan dengan mencontoh langkah-langkah dan form project yang sudah dijelaskan di tutorial 9.

    Thank youuuuu^^

</details>