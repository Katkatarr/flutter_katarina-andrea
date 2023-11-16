import 'package:flutter/material.dart';
import 'package:tugas/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phone Recommendations',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        //'/result' : (context) => Result()
        // Tambahkan rute lain jika diperlukan
      },
    );
  }
}
