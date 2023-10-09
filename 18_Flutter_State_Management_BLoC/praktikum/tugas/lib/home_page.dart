import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Assets'),
        ),
        body: ListView(
          children: [
            Image(
              image: AssetImage('assets/images/background.jpg'),
            ),
            Image(
              height: 300,
              image: AssetImage('assets/images/my_icon.png'),
            ),
            Image.asset('assets/images/background.jpg'),
            Image.network('htpps://picsum.photos/id/1/200/300')
          ],
        ));
  }
}
