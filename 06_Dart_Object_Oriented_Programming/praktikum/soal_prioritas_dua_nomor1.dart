// Buatlah sebuah class Calculator dengan kriteria sebagai berikut:
// Terdapat method untuk melakukan penjumlahan dua bilangan.
// Terdapat method untuk melakukan pengurangan dua bilangan.
// Terdapat method untuk melakukan perkalian dua bilangan.
// Terdapat method untuk melakukan pembagian dua bilangan.

class Calculator {
  int bil1;
  int bil2;

  Calculator(this.bil1, this.bil2);
  int penjumlahan() {
    return this.bil1 + this.bil2;
  }

  int pengurangan() {
    return this.bil1 - this.bil2;
  }

  int perkalian() {
    return this.bil1 * this.bil2;
  }

  double pembagian() {
    return this.bil1 / this.bil2;
  }
}

void main() {
  var calculator = Calculator(1987, 2002);

  print("Hasil penjumlahan: ${calculator.penjumlahan()}");
  print("Hasil pengurangan: ${calculator.pengurangan()}");
  print("Hasil perkalian: ${calculator.perkalian()}");
  print("Hasil pembagian: ${calculator.pembagian()}");
}
