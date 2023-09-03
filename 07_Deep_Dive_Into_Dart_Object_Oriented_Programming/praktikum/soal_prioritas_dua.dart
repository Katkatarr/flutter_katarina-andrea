//SOAL 1
//Buatlah Class Matematika dengan spesifikasi berikut!
// abstract class Matematika {
//   double hasil(double x, double y);
// }

// class KelipatanPersekutuanTerkecil implements Matematika {
//   double x;
//   double y;

//   KelipatanPersekutuanTerkecil(this.x, this.y);

// class FaktorPersekutuanTerbesar implements Matematika {
//   double x;
//   double y;

//   FaktorPersekutuanTerbesar(this.x, this.y);
//}

// SOAL 2
//Dari rangkaian di atas, lengkapi kode berikut sehingga dapat menampilkan hasil pada Layar!
abstract class Matematika {
  double hasil(double x, double y);
}

class KelipatanPersekutuanTerkecil implements Matematika {
  double x;
  double y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override
  double hasil(double x, double y) {
    double max = x > y ? x : y;
    while (true) {
      if (max % x == 0 && max % y == 0) {
        return max;
      }
      max++;
    }
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  double x;
  double y;

  FaktorPersekutuanTerbesar(this.x, this.y);

  @override
  double hasil(double x, double y) {
    while (x != y) {
      if (x > y) {
        x -= y;
      } else {
        y -= x;
      }
    }
    return x;
  }
}

void main() {
  var kpt = KelipatanPersekutuanTerkecil(9, 18);
  var fpt = FaktorPersekutuanTerbesar(9, 18);

  print(
      "Kelipatan Persekutuan Terkecil dari 12 dan 20 adalah ${kpt.hasil(12, 20)}");
  print(
      "Faktor Persekutuan Terbesar dari 12 dan 20 adalah ${fpt.hasil(12, 20)}");
}
