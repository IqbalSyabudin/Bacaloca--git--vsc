import 'package:flutter/material.dart';
import 'menu_screen.dart';


class BerhasilPinjamScreen extends StatelessWidget {
  const BerhasilPinjamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MenuScreen(),
                      ),
                    );
                  },
                  child: const Icon(Icons.home, color: Colors.black, size: 50),
                ),
                Image.asset(
                  'img/file.png',
                  width: 150,
                  height: 70,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'img/berhasil.png',
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                  Container(
                    padding: const EdgeInsets.all(24.0),
                    margin: const EdgeInsets.only(top: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color.fromRGBO(30, 37, 206, 1), width: 2),
                    ),
                    child: const Column(
                      children: [
                        Text(
                          'PEMINJAMAN BUKU\nBERHASIL!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Text(
                          'Jatuh Tempo Pengembalian :',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          '11 Oktober 2024',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              '© 2024 All Rights Reserved. BACALOKA',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
