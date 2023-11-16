import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController priceController = TextEditingController();
  TextEditingController cameraController = TextEditingController();
  TextEditingController storageController = TextEditingController();
  String recommendation = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Recommendations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Budget'),
            ),
            TextField(
              controller: cameraController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Camera (MP)'),
            ),
            TextField(
              controller: storageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Internal Storage (GB)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                getRecommendation();
              },
              child: Text('GET RECOMMENDATION'),
            ),
            SizedBox(height: 20),
            Text(
              'Rekomendasi: $recommendation',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void getRecommendation() async {
    String key = '';
    final apiUrl =
        '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'; // Ganti dengan URL API OpenAI Anda
    final apiKey = key; // Ganti dengan kunci API OpenAI Anda

    final Map<String, dynamic> data = {
      'price': priceController.text,
      'camera': cameraController.text,
      'storage': storageController.text,
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json;charset=UTF-8',
        'Charset': 'utf-8',
        'Authorization': 'Bearer $apiKey',
      },
      body: jsonEncode(<String, dynamic>{
        "model": "text-davinci-003",
        'prompt': "Sebagai seorang ahli dalam merekomendasikan smartphone, saya, [Nama Anda], akan memberikan rekomendasi smartphone berdasarkan kebutuhan Anda. Berikan saya informasi berikut:\n\n" +
            "1. Budget Anda: ${priceController.text} IDR\n" +
            "2. Kebutuhan Kamera (MP): ${cameraController.text} MP\n" +
            "3. Kapasitas Penyimpanan Internal: ${storageController.text} GB\n\n" +
            "Dengan informasi ini, saya akan memberikan rekomendasi smartphone yang sesuai untuk Anda.",

        // 'prompt':
        //     "kamu sekarang adalah search engginer yang bertugas memberikan referensi buku berdasarkan inputan user" +
        //         "data user akan didapatkan dari variabel berikut $userMessage" +
        //         "berikan referensi berdasarkan 1\n2\n\n3.\noutput yang ingin saya hasilkan hanya berupa title dari setiap bukunya" +
        //         "example output json data {title : judul 1 autor : author 1, }",
        'max_tokens': 100,
      }),
      //body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      setState(() {
        recommendation = result['recommendation'];
      });
    } else {
      setState(() {
        recommendation = 'Error: ${response.statusCode}';
      });
    }
  }
}
