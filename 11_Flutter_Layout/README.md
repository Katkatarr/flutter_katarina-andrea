3 poin yang dipelajari dari materi 11 Flutter_Layout
--Mengetahui apa itu layout
Layout : sesuatu yang serupa dengan widget yang dapat mengatur widget di dalamnya yang berfungsi untuk mengatur tata letak

--Mengetahui apa itu single-child layout dan bagaimana mengimplementasikannya
Single-child layout -> widget yang hanya dapat memiliki satu child. Widget ini digunakan untuk mengatur posisi dan ukuran dari child-nya. Beberapa contoh single-child layout widget adalah: Center, Padding, Expanded

contoh penerapannya
Scaffold(
appBar: AppBar(
title: Text("Single-child layout"),
),
body: Center(
child: Text("Hello, world!"),
),
);

--Mengetahui apa itu Multi-child layout dan bagaimana mengimplementasikannya
Multi-child layout -> widget yang dapat memiliki lebih dari satu child. Widget ini digunakan untuk mengatur posisi dan ukuran dari beberapa child secara bersamaan. Beberapa contoh multi-child layout widget adalah:Row, Column, ListView, GridView

cara mengimplementasikannya :
Scaffold(
appBar: AppBar(
title: Text("Multi-child layout"),
),
body: Row(
children: [
Text("Hello, world!"),
Text("This is another text"),
],
),
);
