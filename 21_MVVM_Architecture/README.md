3 poin yang dipelajari dari materi 21 MVVM
== Memahami pengertian MVVM Architecture
MVVM (Model - View - ViewModel) dimana model merupakan bentuk data yang digunakan dan dibuat dalam bentuk class, kemudian ViewModel didaftarkan dalam multiprovider, dan View diimplementaikan menggunakan StatefulWwidget

Manfaat MVVM :

> Mudah dirawat

== Implementasi MVVM
my_app
├── lib
│ ├── models
│ │ └── user.dart
│ ├── viewmodels
│ │ └── user_viewmodel.dart
│ └── views
│ └── user_page.dart
└── pubspec.yaml

== Menampilkan data di View

- Letakkan pada bagian build
- Menggunakan getters yang ada pada ViewModel
- Data dapat langsung ditampilkan pada widgets
