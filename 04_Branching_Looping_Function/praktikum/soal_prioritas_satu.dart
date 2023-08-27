/*
SOAL 1
Tugas Percabangan (Branching)
Terdapat sebuah nilai:
jika nilai > 70 akan mereturn “Nilai A”
jika nilai > 40 akan mereturn “Nilai B”
jika nilai > 0 akan mereturn “Nilai C”
selain itu return teks kosong

Jawaban :
*/
int nilai = 80;

void main() {
  //jika nilai > 70 akan mereturn “Nilai A”
  if (nilai > 70) {
    print('grade = Nilai A');
    //jika nilai > 40 akan mereturn “Nilai B”
  } else if (nilai > 40) {
    print('grade = Nilai B');
    //jika nilai > 0 akan mereturn “Nilai C”
  } else if (nilai > 0) {
    print('grade = Nilai C');
    //selain itu return teks kosong
  } else {
    print('grade = ');
  }
}

/*
SOAL 2
Tugas Perulangan (Looping)
Tampilkan nilai 1 - 10 pada layar dengan menggunakan perulangan!

Jawaban :
*/
void main() {
  for (var i = 1; i <= 10; i++) {
    print("$i");
  }
}
