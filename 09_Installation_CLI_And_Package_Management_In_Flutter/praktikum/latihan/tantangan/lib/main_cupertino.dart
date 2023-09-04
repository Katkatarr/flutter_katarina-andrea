import 'package:flutter/cupertino.dart';

void main() {
  runApp(const HelloWorld());
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        home: CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('cuperino'),
      ),
      child: Center(child: Text('cupertino')),
    ));
  }
}

class TampilNama extends StatelessWidget {
  const TampilNama({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Katarina App'),
        ),
        child: Center(
          child: Column(
            children: [
              Text('Cupertino', style: TextStyle(fontSize: 24)),
            ],
          ),
        ));
  }
}
