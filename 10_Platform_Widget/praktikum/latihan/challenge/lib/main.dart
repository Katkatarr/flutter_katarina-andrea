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
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katarina App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                'drawer header',
              ),
            ),
            ListTile(
              title: Text(
                'title1',
              ),
            ),
            ListTile(
              title: Text(
                'title2',
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'material',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'verified user',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'verified user',
          ),
        ],
      ),
    );
  }
}
