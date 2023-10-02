import 'package:challenge/component/detail_image.dart';
import 'package:flutter/material.dart';

class Galeri extends StatelessWidget {
  const Galeri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
              child: Text('Galeri')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/contact');
              },
              child: Text('Contact')),
        ]),
      ),
      appBar: AppBar(
        title: const Text('List Galeri'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah gambar per baris
          mainAxisSpacing: 2.0, // Jarak vertikal antar gambar yang lebih kecil
          crossAxisSpacing: 10.0, // Jarak horizontal antar gambar
        ),
        itemCount: 6, // Ganti dengan jumlah gambar yang ingin ditampilkan
        itemBuilder: (BuildContext context, int index) {
          // Gantilah asset path atau URL dengan gambar yang sesuai
          String imagePath = '';
          if (index == 0) {
            imagePath = 'assets/images/background.jpg';
          } else if (index == 1) {
            imagePath = 'assets/images/my_icon.png';
          } else if (index == 2) {
            imagePath = 'assets/images/doraemon.jpg';
          } else if (index == 3) {
            imagePath = 'assets/images/background.jpg';
          } else if (index == 4) {
            imagePath = 'assets/images/background.jpg';
          } else if (index == 5) {
            imagePath = 'assets/images/background.jpg';
          }

          return InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(imagePath),
                        ),
                        Text('Gambar ${index + 1}'), // Tampilkan nomor gambar
                        Text('Apakah Anda ingin melihat gambar lebih detail?'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push<void>(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          DetailImage(),
                                    ),
                                  );
                                  print('Ya');
                                },
                                child: Text('Ya'),
                              ),
                            ),
                            SizedBox(
                                width:
                                    16), // Jarak antara tombol "Ya" dan "Tidak"
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.push<void>(
                                  //   context,
                                  //   MaterialPageRoute<void>(
                                  //     builder: (BuildContext context) =>
                                  //         DetailImage(),
                                  //   ),
                                  // );
                                  print('Tidak');
                                },
                                child: Text('Tidak'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
              print('gambar ditekan');
            },
            child: Image(
              image: AssetImage(imagePath),
            ),
          );
        },
      ),
    );
  }
}
