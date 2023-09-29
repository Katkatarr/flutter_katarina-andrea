import 'package:flutter/material.dart';
import 'package:challenge/ui/screen/galeri.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Assets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {'/': (_) => const Galeri()},
    );
  }
}



// import 'package:challenge/ui/screen/galeri.dart';
// import 'package:flutter/material.dart';
// //import 'home_page.dart';

// void main() {
//   runApp(const MyApp(
//     initialRoute: '/',
//     routes: {'/' : (_) => const Galeri()},
//   ));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Assets',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       //home: const HomePage(),
//       //home: const Galeri(),
//     );
//   }
// }
