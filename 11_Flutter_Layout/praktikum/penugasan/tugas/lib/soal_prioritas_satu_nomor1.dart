// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Katarina App'),
//         ),
//         body: Container(
//           color: Colors.grey,
//           margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
//           child: Center(
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Katarina'),
//                     Text('Katarina'),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 60,
//                 ),
//                 Text('List Anak Didik'),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Expanded(
//                   child: GridView.count(
//                     crossAxisCount: 2,
//                     children: [
//                       // Your GridView children here
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text('List Tile Widget'),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Expanded(
//                   child: ListView(
//                     padding: const EdgeInsets.all(8),
//                     children: List.generate(
//                       25,
//                       (index) {
//                         return ListTile(
//                           leading: Icon(Icons.add),
//                           title: Text('Add'),
//                           subtitle: Text('Add a new item to the list'),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                             //color: Colors.fromARGB(255, 243, 51, 37),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

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
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black, // Warna latar belakang AppBar
        ),
      ), // Menetapkan tema ke dark mode
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
      body: const Center(
        child: Text(
          'This is MaterialApp',
          style: TextStyle(fontSize: 24),
        ),
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
