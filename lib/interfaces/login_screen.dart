import 'package:flutter/material.dart';
import 'menu_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Logo kecil di kiri atas
          Positioned(
            top: 10, // Atur jarak dari atas
            left: 10, // Atur jarak dari kiri
            child: Image.asset(
              'img/file.png', // Path untuk logo kecil
              width: 150,
              height: 70,
              fit: BoxFit.contain,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image Section: Gambar utama (logo besar) di tengah layar
                Image.asset(
                  'img/logo.png', // Path untuk gambar utama
                  width: 300,
                  height: 300,
                ),
                const SizedBox(height: 20), // Spasi antar elemen

                // Email Field: Kolom input email dengan tampilan khusus
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 550.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan E-mail', // Placeholder untuk kolom email
                      filled: true,
                      fillColor: Colors.grey[200], // Warna background untuk kolom
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0), // Sudut kolom yang melengkung
                        borderSide: BorderSide.none, // Menghilangkan garis border default
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15), // Spasi antar elemen

                // Password Field: Kolom input password dengan tampilan khusus
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 550.0),
                  child: TextField(
                    obscureText: true, // Menyembunyikan karakter input untuk keamanan
                    decoration: InputDecoration(
                      hintText: 'Password', // Placeholder untuk kolom password
                      filled: true,
                      fillColor: Colors.grey[200], // Warna background untuk kolom
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0), // Sudut kolom yang melengkung
                        borderSide: BorderSide.none, // Menghilangkan garis border default
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Spasi antar elemen

                // Login Button: Tombol untuk login
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MenuScreen()), // Navigasi ke MenuScreen
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Warna tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0), // Sudut tombol yang melengkung
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15), // Padding tombol
                  ),
                  child: const Text(
                    'Login', // Teks di dalam tombol
                    style: TextStyle(fontSize: 16, color: Colors.white), // Warna dan ukuran teks tombol
                  ),
                ),
              ],
            ),
          ),
          // Persegi panjang biru di bagian footer
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 40, // Tinggi persegi panjang
              color: Colors.blue, // Warna persegi panjang
              child: const Center(
                child: Text(
                  '© 2024 All Rights Reserved. BACALOKA',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
