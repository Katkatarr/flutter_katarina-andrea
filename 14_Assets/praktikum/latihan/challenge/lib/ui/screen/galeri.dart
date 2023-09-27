import 'package:flutter/material.dart';

class Galeri extends StatelessWidget {
  const Galeri({super.key});

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
            Text('Images'),
            Image.network(
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.unp.ac.id%2Fnews%2F19-11-2020%2Fkampus-merdeka-indonesia-jaya&psig=AOvVaw0M-obk4e8LfctaKw6paGkx&ust=1695715568010000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCOCH__OmxYEDFQAAAAAdAAAAABAE',
                width: 20,
                height: 10),
          ],
        ));
  }
}
