import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupertino App',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('CupertinoApp'),
        ),
        child: Center(
          child: const Text(
            'This is CupertinoApp',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
