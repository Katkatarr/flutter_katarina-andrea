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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Katarina App'),
        ),
        body: Container(
          color: Colors.grey,
          margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Katarina'),
                    Text('Katarina'),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Text('List Anak Didik'),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      // Your GridView children here
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('List Tile Widget'),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: List.generate(
                      25,
                      (index) {
                        return ListTile(
                          leading: Icon(Icons.add),
                          title: Text('Add'),
                          subtitle: Text('Add a new item to the list'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            //color: Colors.fromARGB(255, 243, 51, 37),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




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
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Katarina App'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(color: Colors.white),
//               child: Text(
//                 'drawer header',
//               ),
//             ),
//             ListTile(
//               title: Text(
//                 'title1',
//               ),
//             ),
//             ListTile(
//               title: Text(
//                 'title2',
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: const Center(
//         child: Text(
//           'material',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.green,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.abc),
//             label: 'verified user',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.abc),
//             label: 'verified user',
//           ),
//         ],
//       ),
//     );
//   }
// }
