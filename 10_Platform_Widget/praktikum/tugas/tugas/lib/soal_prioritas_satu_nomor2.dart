import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key});

  final List<Map<String, String>> contacts = [
    {'name': 'Leanne Graham', 'phone': '1-770-736-8031 x56442'},
    {'name': 'Ervin Howell', 'phone': '010-692-6593 x09125'},
    {'name': 'Clementine Baunch', 'phone': '1-463-123-4447'},
    {'name': 'Patricia Lebsack', 'phone': '493-170-9623 x156'},
    {'name': 'Chelsey Dietrich', 'phone': '(254)954-1289'},
    {'name': 'Mrs. Dennis Schulist', 'phone': '1-477-935-8478 x6430'},
    {'name': 'Kurtis Weissnat', 'phone': '210.067.6132'},
    // Tambahkan daftar kontak lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialApp'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'Home',
              ),
            ),
            ListTile(
              title: Text(
                'Setting',
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          final name = contact['name'] ?? '';
          final phone = contact['phone'] ?? '';
          final initials = name.isNotEmpty ? name[0].toUpperCase() : '';

          // Buat bullet dengan huruf awalan hijau
          final bullet = Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: Text(
              initials,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          );

          return ListTile(
            leading: bullet, // Gunakan bullet yang telah dibuat
            title: Text(name),
            subtitle: Text(phone),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
