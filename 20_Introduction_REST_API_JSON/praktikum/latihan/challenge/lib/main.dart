import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dio Postman Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Membuat metode untuk mengirim permintaan GET
  void _sendGetRequest() async {
    try {
      // Inisialisasi objek Dio
      Dio dio = Dio();

      // URL endpoint untuk permintaan GET
      String url = 'https://example.com/api/your_endpoint';

      // Mengirim permintaan GET
      Response response = await dio.get(url);

      // Menampilkan respons dari server
      print('Response data: ${response.data}');
    } catch (e) {
      // Menangani kesalahan jika ada
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dio Postman Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Memanggil metode untuk mengirim permintaan GET saat tombol ditekan
          _sendGetRequest();
        },
        tooltip: 'Send GET Request',
        child: const Icon(Icons.send),
      ),
    );
  }
}
