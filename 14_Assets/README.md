3 poin yang dipelajari dari materi 14 Assets
--Pengertian Asset
Asset merupakan file yang di bundled dan di deployed bersamaan dengan aplikasi yang terdiri dari static data, icons, images, dan font file
asset dapat digunakan apabila telah di masukan terlebih dahulu ke pubspec.yaml

--Mengetahui apa itu image dan bagaimana cara mengimplementasikan widget Image
body: Center(
child: Image.asset('assets/images/flutter.png'),
),

--Mengimplementasikan font
Langkah pertama download font di fonts.google.com, kemudian import file.ttf dan daftarkan font di pubspec.yaml, masukan script untuk mengatur fonts sebagai default

selain cara diatas bisa juga menambahkan font sebagai package
