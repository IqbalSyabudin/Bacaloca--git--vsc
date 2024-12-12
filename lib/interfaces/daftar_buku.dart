// halaman_daftar_buku.dart
import 'package:flutter/material.dart';

class HalamanDaftarBuku extends StatelessWidget {
  const HalamanDaftarBuku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Daftar Buku', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Row(
        children: [
          _buildSidebar(),
          Expanded(
            child: Column(
              children: [
                _buildSearchBar(),
                Expanded(child: _buildBookList()),
                _buildFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebar() {
    return Container(
      width: 120,
      color: Colors.blue[50],
      child: Column(
        children: [
          const SizedBox(height: 16),
          IconButton(
            icon: const Icon(Icons.grid_view, size: 40, color: Colors.black),
            onPressed: () {},
          ),
          const Text('Daftar Buku',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const Divider(),
          IconButton(
            icon: const Icon(Icons.filter_list, size: 40, color: Colors.black),
            onPressed: () {},
          ),
          const Text('Filter',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(index == 0 ? 'semua' : 'genre'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Cari Bukumu',
          hintStyle: const TextStyle(fontSize: 16),
          filled: true,
          fillColor: Colors.grey[200],
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _buildBookList() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            width: 60,
            height: 80,
            color: Colors.blue,
          ),
          title: const Text('Sebuah Seni Untuk Bersikap Bodo Amat'),
          onTap: () {},
        );
      },
    );
  }

  Widget _buildFooter() {
    return Container(
      height: 40,
      color: Colors.blue,
      child: const Center(
        child: Text(
          '© 2024 All Rights Reserved. BACALOKA',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
