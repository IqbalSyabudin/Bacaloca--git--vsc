import 'package:flutter/material.dart';
import 'pinjam_buku.dart'; // Import the PinjamBukuPage

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
          // Header: Logo and Search Bar
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
                      prefixIcon: const Icon(Icons.search, size: 30),
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
          // Book Details
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Book Image
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
                // Book Information
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Table(
                        columnWidths: const {
                              0: FlexColumnWidth(1),
                              1: FixedColumnWidth(10),
                              2: FlexColumnWidth(7),
                            },
                            children: [
                              TableRow(
                                children: [
                                  const Text("Penulis", style: TextStyle(fontSize: 18)),
                                  const Text(":", style: TextStyle(fontSize: 18)),
                                  Text(author, style: const TextStyle(fontSize: 18)),
                                ],
                              ),
                              TableRow(
                                children: [
                                  const Text("Kategori Buku", style: TextStyle(fontSize: 18)),
                                  const Text(":", style: TextStyle(fontSize: 18)),
                                  Text(category, style: const TextStyle(fontSize: 18)),
                                ],
                              ),
                              TableRow(
                                children: [
                                  const Text("Penerbit", style: TextStyle(fontSize: 18)),
                                  const Text(":", style: TextStyle(fontSize: 18)),
                                  Text(publisher, style: const TextStyle(fontSize: 18)),
                                ],
                              ),
                              TableRow(
                                children: [
                                  const Text("Bahasa", style: TextStyle(fontSize: 18)),
                                  const Text(":", style: TextStyle(fontSize: 18)),
                                  Text(language, style: const TextStyle(fontSize: 18)),
                                ],
                              ),
                              TableRow(
                                children: [
                                  const Text("Tahun Terbit", style: TextStyle(fontSize: 18)),
                                  const Text(":", style: TextStyle(fontSize: 18)),
                                  Text(year, style: const TextStyle(fontSize: 18)),
                                ],
                              ),
                            ],
                          ),
                      const SizedBox(height: 12),
                      const Text(
                        "DESKRIPSI:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        description,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          // Back and Borrow Buttons
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 12.0),
                  ),
                  child: const Text(
                    'Kembali',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the borrowing page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PinjamBukuPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 12.0),
                  ),
                  child: const Text(
                    'Pinjam',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          // Footer with copyright information
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.blue,
            child: const Center(
              child: Text(
                '© 2024 All Rights Reserved. BACALOKA',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
