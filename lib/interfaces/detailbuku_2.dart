import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  final String author;
  final String category;
  final String publisher;
  final String language;
  final String description;
  final String year;

  const BookDetailScreen({
    super.key,
    required this.title,
    required this.imagePath,
    required this.author,
    required this.category,
    required this.publisher,
    required this.language,
    required this.description,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                Image.asset(
                  'img/file.png', 
                  width: 150,
                  height: 70,
                  fit: BoxFit.contain,
                ),
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari buku...',
                      filled: true,
                      fillColor: Colors.grey[200],
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          // Bagian Detail Buku
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Gambar Buku
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    imagePath,
                    width: 160,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 24),
                // Informasi Buku
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 24, // Font judul lebih besar
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text("Penulis           : $author", style: const TextStyle(fontSize: 18)),
                      Text("Kategori Buku : $category", style: const TextStyle(fontSize: 18)),
                      Text("Penerbit         : $publisher", style: const TextStyle(fontSize: 18)),
                      const Text("Ukuran           : -", style: TextStyle(fontSize: 18)),
                      const Text("Halaman         : -", style: TextStyle(fontSize: 18)),
                      Text("Bahasa          : $language", style: const TextStyle(fontSize: 18)),
                      Text("Tahun Terbit  : $year", style: const TextStyle(fontSize: 18)),
                      const SizedBox(height: 12),
                      const Text(
                        "DESKRIPSI:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18, // Font deskripsi header lebih besar
                        ),
                      ),
                      Text(
                        description,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(fontSize: 16), // Font deskripsi lebih besar
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          // Tombol Kembali dan Pinjam
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0), // Padding tombol diperbesar
                  ),
                  child: const Text(
                    'Kembali',
                    style: TextStyle(color: Colors.white, fontSize: 18), // Font lebih besar
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan aksi untuk meminjam buku
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0), // Padding tombol diperbesar
                  ),
                  child: const Text(
                    'Pinjam',
                    style: TextStyle(color: Colors.white, fontSize: 18), // Font lebih besar
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          // Footer dengan informasi hak cipta
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.blue,
            child: const Center(
              child: Text(
                '© 2024 All Rights Reserved. BACALOKA',
                style: TextStyle(color: Colors.white, fontSize: 16), // Font lebih besar
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
