import 'package:flutter/material.dart';
import 'berhasil_pinjam.dart';

class PinjamBukuPage extends StatelessWidget {
  const PinjamBukuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Back Button and Logo at the top
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Back Button on the left
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(30, 37, 206, 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'kembali',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const Spacer(),
                  // Logo on the right
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
              child: Row(
                children: [
                  // Form on the left side
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                      decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Register Button with Rounded Corners
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10), // Add border radius
                            ),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10), // Add border radius
                                ),
                              ),
                              child: const Text(
                                'Register',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          _buildInputField('Upload Foto KTP'),
                          const SizedBox(height: 10),
                          _buildInputField('NIK'),
                          const SizedBox(height: 10),
                          _buildInputField('Nama'),
                          const SizedBox(height: 10),
                          _buildInputField('Alamat'),
                          const SizedBox(height: 10),
                          _buildInputField('E-mail'),
                          const SizedBox(height: 10),
                          _buildInputField('No. HP'),
                        ],
                      ),
                    ),
                  ),
                  // Information on the right side
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'PERHATIAN!!!',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Kami mengingatkan agar Anda memperhatikan beberapa hal berikut:',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 10),
                          Table(
                            columnWidths: const {
                              0: FlexColumnWidth(1),
                              1: FixedColumnWidth(10),
                              2: FlexColumnWidth(3),
                            },
                            children: const [
                              TableRow(
                                children: [
                                  Text("1. Batas Waktu Peminjaman", style: TextStyle(fontSize: 16)),
                                  Text(":", style: TextStyle(fontSize: 16)),
                                  Text("4 Hari", style: TextStyle(fontSize: 16)),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text("2. Kondisi Buku", style: TextStyle(fontSize: 16)),
                                  Text(":", style: TextStyle(fontSize: 16)),
                                  Text("Pastikan buku dalam kondisi baik", style: TextStyle(fontSize: 16)),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text("3. Pengembalian", style: TextStyle(fontSize: 16)),
                                  Text(":", style: TextStyle(fontSize: 16)),
                                  Text("Kembalikan buku langsung ke rak buku semula", style: TextStyle(fontSize: 16)),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text("4. Keberadaan Buku", style: TextStyle(fontSize: 16)),
                                  Text(":", style: TextStyle(fontSize: 16)),
                                  Text("4B-12", style: TextStyle(fontSize: 16)),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Text("5. Keterlambatan Pengembalian", style: TextStyle(fontSize: 16)),
                                  Text(":", style: TextStyle(fontSize: 16)),
                                  Text("Denda Rp 5000 terhitung 1 hari setelah batas peminjaman.", style: TextStyle(fontSize: 16)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Mohon pastikan untuk mengembalikan buku tepat waktu untuk menghindari denda. Terima kasih!',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              ), 
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            // Bottom Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BerhasilPinjamScreen(),
                      ),
                    );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(30, 37, 206, 10),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Pinjam Sekarang',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Footer
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
      ),
    );
  }

  Widget _buildInputField(String hint) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(hint, style: const TextStyle(color: Colors.black)),
    );
  }
}
