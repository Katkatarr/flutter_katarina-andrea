import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Us',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            "Online Library didirikan pada tahun 2022 dengan misi untuk menyediakan akses ke pengetahuan dan informasi bagi semua orang. Kami menawarkan berbagai macam buku digital, audiobook, dan video tutorial yang dapat diakses kapan saja dan di mana saja. Kami berkomitmen untuk memberikan pengalaman membaca yang menyenangkan dan informatif bagi semua pengguna.",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[600], // Warna abu-abu muda
            ),
          ),
          SizedBox(height: 20.0),
          CardItem(
            title: 'E-Books',
            description:
                'Explore a vast collection of e-books on various topics.',
          ),
          CardItem(
            title: 'Online Courses',
            description: 'Enroll in online courses and enhance your skills.',
          ),
          CardItem(
            title: 'Research Papers',
            description: 'Access research papers and academic publications.',
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final String description;

  CardItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(
              Icons.library_books,
              size: 40.0,
            ),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(description),
          ],
        ),
      ),
    );
  }
}
