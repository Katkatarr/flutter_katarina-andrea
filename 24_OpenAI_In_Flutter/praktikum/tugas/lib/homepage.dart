import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatMessage {
  final String text;
  final bool isUserMessage;

  ChatMessage({
    required this.text,
    required this.isUserMessage,
  });
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController priceController = TextEditingController();
  TextEditingController cameraController = TextEditingController();
  TextEditingController storageController = TextEditingController();
  String recommendation = '';
  List<ChatMessage> messages = []; // Define a list to store chat messages

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
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      messages[index].text,
                      style: TextStyle(
                        color: messages[index].isUserMessage
                            ? Colors.blue
                            : Colors.green,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getRecommendation() async {
    String apiKey =
        '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'; // Replace with your OpenAI API key
    String engineId = 'text-davinci-003'; // Replace with the specific engine ID
    String apiUrl = 'https://api.openai.com/v1/engines/$engineId/completions';

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json;charset=UTF-8',
        'Charset': 'utf-8',
        'Authorization': 'Bearer $apiKey',
      },
      body: jsonEncode(<String, dynamic>{
        "prompt": "Sebagai seorang ahli dalam merekomendasikan smartphone, saya, [Nama Anda], akan memberikan rekomendasi smartphone berdasarkan kebutuhan Anda. Berikan saya informasi berikut:\n\n" +
            "1. Budget Anda: ${priceController.text} IDR\n" +
            "2. Kebutuhan Kamera (MP): ${cameraController.text} MP\n" +
            "3. Kapasitas Penyimpanan Internal: ${storageController.text} GB\n\n" +
            "Dengan informasi ini, saya akan memberikan rekomendasi smartphone yang sesuai untuk Anda. [Input budget: ${priceController.text}, camera: ${cameraController.text}, storage: ${storageController.text}]",
        'max_tokens': 500,
      }),
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      print('Respon sukses: ${responseData['choices'][0]['text']}');
      setState(() {
        recommendation = responseData['choices'][0]['text'];
        messages.add(ChatMessage(
          text:
              'User: [Input budget: ${priceController.text}, camera: ${cameraController.text}, storage: ${storageController.text}]',
          isUserMessage: true,
        ));
        messages.add(ChatMessage(
          text: 'AI: $recommendation',
          isUserMessage: false,
        ));
      });
    } else {
      setState(() {
        recommendation = 'Error: ${response.statusCode}';
      });
    }
  }
}
