import 'package:flutter/material.dart';
import'package:myportofolio_mobile/widgets/left_drawer.dart'; // Menggunakan drawer yang sama

class ExperienceFormPage extends StatefulWidget {
  const ExperienceFormPage({super.key});

  @override
  State<ExperienceFormPage> createState() => _ExperienceFormPageState();
}

class _ExperienceFormPageState extends State<ExperienceFormPage> {
  final _formKey = GlobalKey<FormState>();

  String _role = "";
  String _organization = "";
  String _description = "";
  String _duration = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Add Experience Form'),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(), // Drawer yang konsisten dengan halaman utama
      body: Form(
        key: _formKey,
        child: SingleChildScrollView( // Agar bisa di-scroll di layar sempit
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Padding utama form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Input 1: Peran / Posisi
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: Staff Design & Branding",
                      labelText: "Posisi / Peran",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _role = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Posisi tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),

                // Input 2: Nama Organisasi
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: RISTEK Fasilkom UI",
                      labelText: "Nama Organisasi",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _organization = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Nama organisasi tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),

                // Input 3: Durasi (Teks)
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: Mar 2026 - Nov 2026",
                      labelText: "Durasi Menjabat",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _duration = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Durasi tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),

                // Input 4: Deskripsi
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "Jelaskan tanggung jawabmu...",
                      labelText: "Deskripsi Pengalaman",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _description = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Deskripsi tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),

                // Tombol Simpan
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.indigo),
                    ),
                    onPressed: () {
                      // Validasi form dan tampilkan pop-up ringkasan data
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Pengalaman Berhasil Ditambahkan!'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Posisi: $_role'),
                                    Text('Organisasi: $_organization'),
                                    Text('Durasi: $_duration'),
                                    Text('Deskripsi: $_description'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context); // Tutup dialog
                                    _formKey.currentState!.reset(); // Reset form
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}