import 'dart:io';

/*
SOAL 1 
Buatlah sebuah program untuk mengecek apakah sebuah bilangan termasuk bilangan prima atau bukan.
 Sampel Input: 23
 Sampel Output: bilangan prima
 Sampel Input: 12
 Sampel Output: bukan bilangan prima

Jawaban :
*/
void main() {
  int bil = 17; // masukan bilangan

  if (isPrima(bil)) {
    print("$bil adalah bilangan prima");
  } else {
    print("$bil bukan bilangan prima");
  }
}

//Fungsi untuk mengecek bilangan prima atau bukan
bool isPrima(int bil) {
  if (bil <= 1) {
    return false;
  }

  for (int i = 2; i <= bil / 2; i++) {
    if (bil % i == 0) {
      return false;
    }
  }
  return true;
}

/*
SOAL 2
Buatlah sebuah program untuk mencetak tabel perkalian.
Sampel Input: 9

Jawaban :
*/

void main() {
  int n = 9; // input panjang tabel perkalian

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= n; j++) {
      int hasil = i * j;
      stdout.write("$hasil\t");
    }
    print("");
  }
}
