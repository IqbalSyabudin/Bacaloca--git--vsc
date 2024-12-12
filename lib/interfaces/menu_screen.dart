import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../data buku/buku.dart';
import '../interfaces/detailbuku_1.dart';
import 'buku_kosong.dart';
import 'daftar_buku.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              _buildHeader(context),
              Expanded(child: _buildBookList(context)),
              _buildFooter(),
            ],
          ),
          Positioned(
            right: 20,
            bottom: 50,
            child: Image.asset(
              'img/bocah.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          Image.asset(
            'img/file.png',
            width: 150,
            height: 70,
            fit: BoxFit.contain,
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.menu, size: 50),
            onSelected: (value) => _handleMenuSelection(context, value),
            itemBuilder: (context) => [
              _buildMenuItem('settings', Icons.settings, 'Settings'),
              _buildMenuItem('edit', Icons.edit, 'Edit'),
              _buildMenuItem('tambah', Icons.add, 'Tambah'),
              _buildMenuItem('hapus', Icons.delete, 'Hapus'),
              _buildMenuItem('view', Icons.visibility, 'View'),
              _buildMenuItem('manajemen', Icons.layers, 'Manajemen'),
              _buildMenuItem('verifikasi', Icons.verified, 'Verifikasi'),
            ],
          ),
          const SizedBox(width: 300),
          Expanded(child: _buildSearchBar(context)),
          const SizedBox(width: 350),
          IconButton(
            icon: const Icon(Icons.grid_view, size: 50),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HalamanDaftarBuku()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person, size: 50),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => _buildProfileDialog(context),
              );
            },
          ),
        ],
      ),
    );
  }

  PopupMenuItem<String> _buildMenuItem(String value, IconData icon, String text) {
    return PopupMenuItem<String>(
      value: value,
      child: Row(
        children: [
          Icon(icon, color: Colors.black),
          const SizedBox(width: 8.0),
          Text(text, style: const TextStyle(color: Colors.black, fontSize: 16)),
        ],
      ),
    );
  }

  void _handleMenuSelection(BuildContext context, String value) {
    switch (value) {
      case 'edit':
        if (kDebugMode) {
          if (kDebugMode) {
            print('Edit action selected');
          }
        } // Ganti dengan logika khusus
        break;
      case 'tambah':
        if (kDebugMode) {
          print('Tambah action selected');
        }
        break;
      case 'hapus':
        if (kDebugMode) {
          print('Hapus action selected');
        }
        break;
      case 'view':
        if (kDebugMode) {
          print('View action selected');
        }
        break;
      case 'manajemen':
        if (kDebugMode) {
          print('Manajemen action selected');
        }
        break;
      case 'verifikasi':
        if (kDebugMode) {
          print('Verifikasi action selected');
        }
        break;
    }
  }

  Widget _buildSearchBar(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return TextField(
      controller: searchController,
      decoration: InputDecoration(
        hintText: 'Cari Bukumu',
        hintStyle: const TextStyle(fontSize: 18),
        filled: true,
        fillColor: Colors.grey[200],
        prefixIcon: const Icon(Icons.search, size: 30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        ),
      ),
      onSubmitted: (value) => _searchBook(context, value),
    );
  }

  void _searchBook(BuildContext context, String query) {
    final bookExists = bookItems.any((book) => book.title.toLowerCase() == query.toLowerCase());

    if (!bookExists) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BukuKosongScreen()),
      );
    } else {
      if (kDebugMode) {
        print('Book found: $query');
      }
    }
  }

  Widget _buildBookList(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(24.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 24.0,
        mainAxisSpacing: 24.0,
        childAspectRatio: 0.6,
      ),
      itemCount: bookItems.length,
      itemBuilder: (context, index) {
        final book = bookItems[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookDetailScreen(
                  title: book.title,
                  imagePath: book.imagePath,
                  author: book.author,
                  category: book.category,
                  publisher: book.publisher,
                  language: book.language,
                  description: book.description,
                  year: book.year,
                ),
              ),
            );
          },
          child: _buildBookItem(book.title, book.imagePath),
        );
      },
    );
  }

  Widget _buildBookItem(String title, String imagePath) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imagePath,
            width: 200,
            height: 320,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      height: 40,
      color: Colors.blue,
      child: const Center(
        child: Text(
          '© 2024 All Rights Reserved. BACALOKA',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildProfileDialog(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: const SizedBox(
        height: 450,
        child: Column(
          children: [
            Text('Profil'),
            // Tambahkan komponen profil lainnya
          ],
        ),
      ),
    );
  }
}
