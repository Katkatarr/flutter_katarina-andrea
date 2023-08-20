/*soal 1
Buatlah sebuah program untuk mengecek apakah sebuah kata merupakan sebuah palindrom atau bukan. Palindrom adalah sebuah kata yang jika dibalik dari kata aslinya memiliki cara baca atau susunan yang sama persis.
 Sampel Input: kasur rusak
 Sampel Output: palindrom
 Penjelasan: kata kasur rusak jika dibalik adalah kasur rusak sehingga kata ini merupakan kata palindrom.
 Sampel Input: mobil balap
 Sampel Output: bukan palindrom
 Penjelasan: kata mobil balap jika dibalik adalah palab libom sehingga kata ini bukan palindrom karena ketika dibalik cara membacanya menjadi berbeda.
 */
void main() {
  String kata = 'hirup pikuk';
  bool palindrom = true;

  for (int i = 0; i < kata.length ~/ 2; i++) {
    if (kata[i] != kata[kata.length - i - 1]) {
      palindrom = false;
      break;
    }
  }

  if (palindrom) {
    print('$kata adalah palindrom');
  } else {
    print('$kata bukan palindrom');
  }
}
 /*
 Buatlah sebuah program untuk mencari faktor dari sebuah bilangan yang dimasukkan.
 */
void main() {
  int bil = 15;
  List<int> faktor = [];

  for (int i = 1; i <= bil; i++) {
    if (bil % i == 0) {
      faktor.add(i);
    }
  }

  print('Faktor dari $bil adalah: $faktor');
}