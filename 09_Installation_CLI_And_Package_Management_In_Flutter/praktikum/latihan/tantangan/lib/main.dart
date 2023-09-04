import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Katarina App'),
        ),
        body: const Center(
          child: Text(
            'material',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
