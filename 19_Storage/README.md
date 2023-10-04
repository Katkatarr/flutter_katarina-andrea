== Pengertian Penyimpanan Lokal dan cara mengimplemntasikannya

> Local Storage berfungsi untuk meningkatkan efisiensi penggunaan data internet dan dapat diimplementasikan melalui beberapa cara, diantaranya shared preference dan local database

== Pengertian shared Preference dan cara mengimplementasikannya

> Shared Preferences adalah cara sederhana untuk menyimpan data kecil dalam aplikasi Flutter. Data disimpan dalam bentuk key-value pair dan dapat diambil kembali kapan saja.
> Langkah - langkah mengimplementasikan shared preference
> langkah-langkah berikut:

1)Tambahkan package shared_preferences ke dalam file pubspec.yaml.
2)Import package shared_preferences ke dalam file kode Anda.
3)Buat objek SharedPreferences menggunakan metode getInstance().
4)Gunakan metode setString(), setInt(), setDouble(), setBool(), atau setStringList() untuk menyimpan data.
5)Gunakan metode getString(), getInt(), getDouble(), getBool(), atau getStringList() untuk mengambil data.

== Local Database (SQLite)

> Merupakan database open source yang mendukung insert, read, upate, dan remove data
> Berikut cara mengimplementasikannya
> 1)Tambahkan package sqflite ke dalam file pubspec.yaml.
> 2)Import package sqflite ke dalam file kode Anda.
> 3)Buat objek Database menggunakan metode openDatabase().
> 4)Buat tabel menggunakan metode executeQuery().
> 5)Simpan data ke tabel menggunakan metode insert(), update(), atau delete().
> 6)Ambil data dari tabel menggunakan metode query().
