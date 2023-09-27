Aplikasi Task Management =>
Fungsi aplikasi task management adalah untuk membantu pengguna mengelola tugas-tugas mereka secara efektif.

==Langkah-langkah

1. Membuat model untuk informasi yang mau disimpan, buat folder models dan di dalamnya buat file dart baru task_model.dart
2. Membuat Task Screen
3. Membuat Empty Screen
4. Tambahkan package provider di pubspec.yaml
5. Membuat Task Manager yang berisi method deleteTask dan addTask
6. Menambahkan TaskManager sebagai provider
7. Membuat fungsi buildTaskScreen
8. Membuat Task Item Screen
9. Membuat FloatingActionButton
10. Menambahkan state properti, initState, dan dispose
11. Membuat buildNameField dan panggil fungsinya di dalam ListView
12. Membuat buildButton
13. Membuat Task Item Card
14. Menambahkan call back handler di ElevetedButton pada buildButton dan menambahkan package uuid
15. Membuat TaskListScreen
16. Menambahkan properti yang dibutuhkan pada TaskItemCard

==Mengetahui definisi dan bagaimana cara membuat AlertDialog
Berfungsi untuk mendapatkan input dari user dan pada penerapannya membutuhkan helper method showDialog

contoh
import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Alert Dialog',
home: MyHomePage(),
);
}
}

class MyHomePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Flutter Alert Dialog'),
),
body: Center(
child: RaisedButton(
child: Text('Tampilkan Dialog'),
onPressed: () {
showDialog(
context: context,
builder: (context) {
return AlertDialog(
title: Text('Judul Dialog'),
content: Text('Isi Dialog'),
actions: [
TextButton(
child: Text('Ya'),
onPressed: () {
Navigator.of(context).pop(true);
},
),
TextButton(
child: Text('Tidak'),
onPressed: () {
Navigator.of(context).pop(false);
},
),
],
);
},
);
},
),
),
);
}
}

== Mengetahui definisi dan cara mengimplementasikan bottom sheet

Bottom sheet adalah sebuah komponen UI yang muncul dari bagian bawah layar dan biasanya berisi konten tambahan atau kontrol.
contoh program
import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Bottom Sheet',
home: MyHomePage(),
);
}
}

class MyHomePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Flutter Bottom Sheet'),
),
body: Center(
child: RaisedButton(
child: Text('Tampilkan Bottom Sheet'),
onPressed: () {
// Tampilkan bottom sheet
showModalBottomSheet(
context: context,
builder: (context) {
return Container(
height: 200,
color: Colors.red,
child: Center(
child: Text('Modal Bottom Sheet'),
),
);
},
);
},
),
),
);
}
}
