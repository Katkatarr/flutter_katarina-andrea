import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF6200EE), // Warna latar belakang AppBar
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                'My Flutter App',
                textAlign: TextAlign.center,
              ),
            ), // Teks yang berada di tengah
            const SizedBox(width: 140), // Spasi antara teks dan ikon
            Icon(Icons.search), // Ikon pencarian (search)
          ],
        ),
      ),
      body: ListView.builder(
        itemCount:
            8, // Jumlah item dalam daftar (termasuk tombol tindakan mengambang)
        itemBuilder: (BuildContext context, int index) {
          final items = [
            'Learn Flutter',
            'Learn ReactJS',
            'Learn VueJS',
            'Learn Tailwind CSS',
            'Learn UI/UX',
            'Learn Figma',
            'Learn Digital Marketing'
          ];

          if (index < items.length) {
            return Column(
              children: [
                ListTile(
                  title: Text(items[index]),
                ),
                Divider(
                    color: const Color.fromARGB(
                        255, 243, 243, 243)), // Pemisah berwarna abu muda
              ],
            );
          } else if (index == items.length) {
            // Tambahkan tombol tindakan mengambang di sini dengan padding
            return Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: FloatingActionButton(
                  onPressed: () {
                    // Fungsi yang akan dijalankan ketika tombol ditekan
                  },
                  backgroundColor: Color(0xFF03DAC5), // Warna sekunder (03DAC5)
                  child: Icon(Icons.add),
                ),
              ),
            );
          }
          return SizedBox
              .shrink(); // Mengembalikan widget kosong jika indeks lebih dari jumlah item
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF6200EE), // Warna latar belakang
        selectedItemColor: Colors.white, // Warna ikon yang dipilih
        unselectedItemColor: Colors.white, // Warna ikon yang tidak dipilih
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,
                color: Colors.white), // Ikon Love dengan warna putih
            label: 'Favorite', // Label Favorite
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
                color: Colors.white), // Ikon Search dengan warna putih
            label: 'Search', // Label Search
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info,
                color: Colors.white), // Ikon Information dengan warna putih
            label: 'Info', // Label Info
          ),
        ],
      ),
    );
  }
}
