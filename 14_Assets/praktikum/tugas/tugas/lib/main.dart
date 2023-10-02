import 'package:flutter/material.dart';
import 'package:tugas/ui/screen/galeri.dart';
import 'package:tugas/ui/screen/contacts.dart';
// Import halaman Galeri

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Flutter'),
      ),
      // Tambahkan Drawer di sini
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contacts'),
              onTap: () {
                // Navigasi ke halaman Contacts saat menu Contacts dipilih
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => _DatePickerAndColorPicker()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.photo),
              title: Text('Galeri'),
              onTap: () {
                // Navigasi ke halaman Galeri saat menu Galeri dipilih
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Galeri()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Halaman Utama'),
      ),
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Assets',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/',
//       routes: {'/': (_) => const Galeri()},
//     );
//   }

//   static Widget detailImage() {
//     return const Image(
//       image: AssetImage('assets/images/background.jpg'), //asset image
//     );
//   }
// }



