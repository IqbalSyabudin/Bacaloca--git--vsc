class Buku {
  final String title;
  final String imagePath;
  final String author;
  final String category;
  final String publisher;
  final String language;
  final String description;
  final String year;

  Buku({
    required this.title,
    required this.imagePath,
    required this.author,
    required this.category,
    required this.publisher,
    required this.language,
    required this.description,
    required this.year,
  });
}

final List<Buku> bookItems = [
  Buku(
    title: 'Sebuah Seni Untuk Bersikap Bodo Amat',
    imagePath: 'img/seni.jpg',
    author: 'Mark Manson',
    category: 'Self-Help',
    publisher: 'Gramedia',
    language: 'Indonesia',
    description: 'Deskripsi buku tentang bersikap bodo amat.',
    year: '2020',
  ),
  Buku(
    title: 'Seni Membaca Pikiran dan Perasaan Orang Lain',
    imagePath: 'img/NUNCHI.jpg',
    author: 'Eun-kyung Park',
    category: 'Psychology',
    publisher: 'Kepustakaan Populer Gramedia',
    language: 'Indonesia',
    description:
        'Buku ini mengajarkan kita untuk memahami pikiran dan perasaan orang lain.',
    year: '2019',
  ),
];
