/*
Buatlah sebuah list dengan spesifikasi berikut:
-Tiap elemen wajib berupa list juga
-Tiap element wajib terdapat 2 data(sub-elemen)
-Buatlah sebuah map dengan menggunakan list tersebut

Jawaban :
*/

import 'dart:collection';

void main() {
  List<List<String>> data = [
    ["Singa", "Mamalia"],
    ["Gajah", "Mamalia"],
    ["Kuda", "Mamalia"],
    ["Burung Hantu", "Aves"],
    ["Ikan Koi", "Pisces"]
  ];

  Map<int, List<String>> dataMap = HashMap();
  for (int i = 0; i < data.length; i++) {
    dataMap[i] = data[i];
  }

  print("\nPemanggilan data dalam bentuk map:");
  dataMap.forEach((key, value) {
    print("${key + 1}. ${value[0]} (${value[1]})");
  });
}

/*
Buatlah sebuah list dengan spesifikasi berikut:
-Tiap elemen wajib berupa list juga
-Tiap element wajib terdapat 2 data(sub-elemen)
-Buatlah sebuah map dengan menggunakan list tersebut

Jawaban :
*/
import 'dart:math';

void main() {
  List<int> nilai = [7, 5, 3, 5, 2, 1];
  int total = 0;
  for (int i = 0; i < nilai.length; i++) {
    total += nilai[i];
  }
  double rataRata = total / nilai.length;
  int rataRataBulat = rataRata.ceil();
  print("Nilai: $nilai");
  print("Rata-rata (pembulatan ke atas): $rataRataBulat");
}

/*
Buatlah sebuah program untuk melakukan perhitungan bilangan faktorial secara asinkron.

Sampel Input: 5

Sampel Output: 120
*/
import 'dart:io';

void main() {
  stdout.write("Masukkan bilangan bulat: ");
  int n = int.parse(stdin.readLineSync()!);

  int hasil = faktorial(n);
  print("Faktorial dari $n adalah $hasil");
}

int faktorial(int n) {
  int hasil = 1;
  for (int i = 2; i <= n; i++) {
    hasil *= i;
  }
  return hasil;
}