import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Image'),
      ),
      body: Center(
        child: Text(
          'Ini adalah tampilan detail gambar.',
          style: TextStyle(fontSize: 24), // Perbaikan disini
        ),
      ),
    );
  }
}
