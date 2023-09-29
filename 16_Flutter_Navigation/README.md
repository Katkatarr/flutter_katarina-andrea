3 poin yang dipelajari dari materi 16_Flutter_Navigation

1. Mempelajari apa itu Navigation
   Navigation digunakan agar aplikasi yang dibangun dapat berpindah dari halaman satu ke halaman yang lain.

2. Mengetahui dan dapat mengimplementasikan navigation dasar, seperti
   -Navigator.pop()
   -Navigator.push

3. Mengimplementasikan navigation dengan named routes
   Route - merupakan alamat yang digunakan untuk mengenali perpindahan halaman

untuk melakukan perpindahan, perlu dilakukan pendaftaran route terlebih dahulu dengan menambahkan initialRoute dan routes pada MaterialApp, kemudian route tersebut akan membentuk sebuah halaman baru.

Jika ingin mengirim data ke halaman baru, dapat menggunakan argument pada saat melakukan pushNamed
