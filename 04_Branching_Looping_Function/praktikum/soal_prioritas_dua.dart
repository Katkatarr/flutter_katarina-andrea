import 'dart:io';

/*
SOAL 1 PERULANGAN
Buatlah sebuah piramid bintang seperti gambar dibawah ini

Jawaban :
*/
void main() {
  // String s akan menyimpan piramida
  String s = '';
  // baris adalah tinggi piramida
  int baris = 8;
  // Looping dari 1 hingga baris
  for (int a = 1; a <= baris; a++) {
    // Cetak spasi sebanyak baris - a
    for (int b = 1; b <= baris - a; b++) {
      s += ' ';
    }
    // Cetak bintang sebanyak 2 * a - 1
    for (int c = 1; c <= 2 * a - 1; c++) {
      s += '*';
    }
    // Tambahkan newline
    s += '\n';
  }
  // Cetak piramida
  print(s);
}

/*
SOAL 2 PERULANGAN
Buatlah sebuah jam pasir seperti pada gambar di bawah ini

Jawaban :
*/

void main() {
  int tinggi = 11; // tinggi jam pasir

  if (tinggi % 2 == 0) {
    print("Tinggi harus ganjil.");
  } else {
    cetakJamPasir(tinggi);
  }
}

void cetakJamPasir(int tinggi) {
  int spaceCount = 0;
  int starCount = tinggi;

  for (int i = 1; i <= tinggi; i++) {
    for (int j = 1; j <= spaceCount; j++) {
      stdout.write(' ');
    }

    for (int k = 1; k <= starCount; k++) {
      stdout.write('0');
    }

    if (i <= tinggi ~/ 2) {
      spaceCount++;
      starCount -= 2;
    } else {
      spaceCount--;
      starCount += 2;
    }

    print('');
  }
}

/*
SOAL 1 FUNCTION
Buatlah sebuah function dengan parameter untuk menghitung luas lingkaran. 
Kemudian function lingkaran tersebut dijalankan pada function main!

Jawaban :
*/
void main() {
  int r = 10; // jari-jari lingkaran
  double luas = hitungLuasLingkaran(r);
  print("Luas lingkaran dengan jari-jari $r adalah $luas");
}

//Fungsi menghitung Luas Lingkaran
double hitungLuasLingkaran(int r) {
  const phi = 3.14;
  double luas = phi * r * r;
  return luas;
}

/*
Buatlah sebuah function yang dapat menampilkan faktorial dari nilai-nilai di bawah ini:
10
40
50

Jawaban :
*/
num n1 = 10;
num n2 = 40;
num n3 = 50;
void main() {
  print("Faktorial dari $n1 adalah ${hitungFaktorial(n1)}");
  print("Faktorial dari $n2 adalah ${hitungFaktorial(n2)}");
  print("Faktorial dari $n3 adalah ${hitungFaktorial(n3)}");
}

num hitungFaktorial(num n) {
  if (n == 0) {
    return 1;
  } else {
    return n * hitungFaktorial(n - 1);
  }
}
