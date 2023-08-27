/*
Buatlah sebuah fungsi dengan spesifikasi berikut:
a.Menerima 2 parameter, yaitu list data dan pengali
b.Lakukan perulangan pada list data secara asynchronous
c.Tiap perulangan, kalikan elemen list data dengan pengali
d.Return list baru yang berisi hasil proses diatas

Jawaban :
*/

import 'dart:async';

void main() async {
  List<int> data = [1, 2, 3, 4, 5];
  int pengali = 2;

  List<int> hasil = await kalikanData(data, pengali);

  print("Data awal: $data");
  print("Pengali: $pengali");
  print("Hasil: $hasil");
}

Future<List<int>> kalikanData(List<int> data, int pengali) async {
  List<int> hasil = [];
  for (int item in data) {
    // Kalikan setiap item dengan pengali
    int hasilPerkalian = item * pengali;
    // Tambahkan hasil ke dalam list hasil
    hasil.add(hasilPerkalian);
    // Jeda loop untuk memberikan kesempatan pada tugas lain untuk dijalankan
    await Future.delayed(Duration.zero);
  }
  return hasil;
}
